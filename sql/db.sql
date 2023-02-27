CREATE TABLE wallet (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL UNIQUE,
    initial_balance INT NOT NULL DEFAULT 0,
    sum_of_pay INT NOT NULL DEFAULT 0,
    sum_of_income INT NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    soft_deleted_at DATETIME,
    hard_deleted_at DATETIME
); 


CREATE TABLE bank (
    id INT PRIMARY KEY AUTO_INCREMENT,
    bank_name VARCHAR(20) NOT NULL,
    title VARCHAR(20) NOT NULL UNIQUE,
    card_nuber VARCHAR(16) NOT NULL UNIQUE, 
    initial_balance INT NOT NULL DEFAULT 0,
    sum_of_pay INT NOT NULL DEFAULT 0,
    sum_of_incime INT NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    soft_deleted_at DATETIME,
    hard_deleted_at DATETIME
); 


CREATE TABLE account (
    id INT PRIMARY KEY AUTO_INCREMENT,
    _bank_id INT NOT NULL,
    _wallet_id INT NOT NULL,


    FOREIGN KEY (_bank_id) REFERENCES bank(id),
    FOREIGN KEY (_wallet_id) REFERENCES wallet(id)
); 


CREATE TABLE cost (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL UNIQUE,
    sum_of_output INT NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT 1 
); 


CREATE TABLE income (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL UNIQUE,
    sum_of_input INT NOT NULL DEFAULT 0,
    sum_of_output INT NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT 1
);

CREATE TABLE cost_subset (
    id INT PRIMARY KEY AUTO_INCREMENT,
    _cost_id INT NOT NULL,
    title VARCHAR(25) NOT NULL,
    sum_of_output INT NOT NULL DEFAULT 0,

    FOREIGN KEY (_cost_id) REFERENCES cost(id)
); 


CREATE TABLE income_subset (
    id INT PRIMARY KEY AUTO_INCREMENT,
    _income_id INT NOT NULL,
    title VARCHAR(25) NOT NULL,   
    sum_of_input INT NOT NULL DEFAULT 0,
    sum_of_output INT NOT NULL DEFAULT 0,

    FOREIGN KEY (_income_id) REFERENCES income(id)
);


CREATE TABLE cost_transaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cost_date DATE NOT NULL,
    price INT NOT NULL,
    _account_id INT NOT NULL,
    _cost_subset_id INT NOT NULL,
    description VARCHAR(250),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    soft_deleted_at DATETIME,
    hard_deleted_at DATETIME

    FOREIGN KEY (_account_id) REFERENCES account(id),
    FOREIGN KEY (_cost_subset_id) REFERENCES cost_subset(id)
); 


CREATE TABLE income_transaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    income_date DATE NOT NULL,
    price INT NOT NULL,
    _account_id INT NOT NULL,
    _income_subset_id INT NOT NULL,
    description VARCHAR(250),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    soft_deleted_at DATETIME,
    hard_deleted_at DATETIME,

    FOREIGN KEY (_account_id) REFERENCES account(id),
    FOREIGN KEY (_income_subset_id) REFERENCES income_subset(id)
);

INSERT INTO cost(title)
VALUE ();
