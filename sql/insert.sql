INSERT INTO wallet(title)
VALUES
    ('saman'),
    ('tosan'),
    ('cash');

INSERT INTO bank(bank_name, title, card_nuber)
VALUES
    ('Saman', 'saman', 6219861054278774),
    ('Parsian', 1361, 6221061104571361),
    ('EghtesadNovin', 'Eg', 111111);

INSERT INTO account(_bank_id, _wallet_id)
VALUE (4, 1);

INSERT INTO cost(title)
VALUE
    ('food'),
    ('car'),
    ('personal');

INSERT INTO income(title)
VALUES
    ('dad'),
    ('salary'),
    ('gift');

INSERT INTO cost_subset(_cost_id, title)
VALUES
    (1, 'cafe'),
    (1, 'pizza'),
    (2, 'petrol'),
    (2, 'carwash'),
    (3, 'haircut'),
    (1, 'lunch'),
    (3, 'cafe');


INSERT INTO income_subset(_income_id, title)
VALUES
    (1, 'monthly'),
    (2, 'tosan'),
    (2, 'isaar'),
    (3, 'family'),
    (3, 'saeed');



INSERT INTO income_transaction(income_date, price, _account_id, _income_subset_id, description)
VALUE
    (20230207, 100, 2, 3,'test income');



INSERT INTO cost_transaction(cost_date, price, _account_id, _cost_subset_id, description)
VALUE
    (2023027, 10, 1, 1,'hahaha');
