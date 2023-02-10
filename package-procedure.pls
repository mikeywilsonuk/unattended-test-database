-- Create Autonomous Transaction logging System table
CREATE TABLE ProcessingLog (
    message_date TIMESTAMP,
    message_text VARCHAR2(400)
);

-- Create a Procedure to log entires (timestamp and message) into the ProcessingLog table
CREATE OR REPLACE PROCEDURE SP_Log (
    p_message_text VARCHAR2
)   IS
    pragma autonomous_transaction;
BEGIN

    dbms_output.put_line(p_message_text);

    INSERT INTO ProcessingLog (
        message_date,
        message_text
    ) VALUES (
        sysdate,
        p_message_text
    );
    COMMIT;

END;
/

-- Execute a PL/SQL package procedure to select, insert and update data. Including procedure calls to the logging system
BEGIN
    -- Select from the MemberProduct table all records due a payment in the next 30 days
    SP_Log('Selecting records');
    FOR records IN (SELECT memberproduct_id, product_id FROM MemberProduct WHERE next_payment_date <= CURRENT_TIMESTAMP +30)

    LOOP
        -- For each record selected insert a new row in the Payment table
        SP_Log('New row inserted in the payment table');
        INSERT INTO Payment ( payment_date, payment_amount, memberproduct_id )
        VALUES (
            (SELECT next_payment_date FROM MemberProduct WHERE records.memberproduct_id = memberproduct_id),
            (SELECT product_cost FROM Product WHERE records.product_id = product_id),
            (SELECT memberproduct_id FROM MemberProduct WHERE records.memberproduct_id = memberproduct_id)
            );
    
        -- For each record selected update the next payment date by 1 year
		SP_Log('Next payment date updated');
        UPDATE MemberProduct SET next_payment_date = add_months( next_payment_date, +12 ) WHERE records.memberproduct_id = memberproduct_id;
	END LOOP;
    COMMIT;

    SP_Log('Procedure successfully completed');
END;
/