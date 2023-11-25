CREATE DATABASE DataCorp ;
CREATE TABLE IF NOT EXISTS DataCorp.users(
    id_karyawan INT(10) NOT NULL AUTO_INCREMENT,
    nama_karyawan VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_karyawan)
);

CREATE TABLE IF NOT EXISTS DataCorp.pay(
    id_gaji VARCHAR(20)  NOT NULL,
    id_karyawan INT(10)  AUTO_INCREMENT NOT NULL,
    gaji_pokok VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_gaji),
    UNIQUE (id_karyawan)
);

INSERT INTO DataCorp.users(id_karyawan,nama_karyawan)
VALUES
('001','A'),
('002','B'),
('003','C'),
('004','D'),
('005','E'),
('006','F');


INSERT INTO DataCorp.pay(id_gaji,id_karyawan,gaji_pokok)
VALUES
('GJ001','001','3,000,000'),
('GJ002','003','2,500,000'),
('GJ003','002','1,200,000'),
('GJ004','004','1,900,000'),
('GJ005','005','2,000,000');

CREATE TABLE  DataCorp.final AS
SELECT nama_karyawan,gaji_pokok
FROM DataCorp.users,DataCorp.pay 
WHERE users.id_karyawan=pay.id_karyawan
ORDER BY gaji_pokok;


/*CREATE TABLE IF NOT EXISTS DataCorp.final(
    id_karyawan INT(10)  AUTO_INCREMENT NOT NULL,
    gaji_pokok VARCHAR(20) NOT NULL,
);*/

