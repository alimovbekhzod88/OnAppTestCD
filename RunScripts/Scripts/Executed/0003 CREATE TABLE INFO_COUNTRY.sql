CREATE TABLE INFO_COUNTRY
(
	ID					SERIAL NOT NULL PRIMARY KEY,
	ORDER_CODE 			VARCHAR(10),
	CODE				VARCHAR(10) NOT NULL,
	TEXT_CODE  			VARCHAR(50) NOT NULL,
	SHORT_NAME			VARCHAR(250) NOT NULL,
	FULL_NAME  			VARCHAR(500) NOT NULL,
	
	STATE_ID			INT NOT NULL,
	CREATED_AT			TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
	CREATED_BY		 	INT NULL,
	MODIFIED_AT 		TIMESTAMP WITHOUT TIME ZONE,
	MODIFIED_BY		 	INT,
	
	CONSTRAINT FK_STATE_ID 
		FOREIGN KEY (STATE_ID)
			REFERENCES ENUM_STATE(ID)
);

CREATE UNIQUE INDEX INFO_COUNTRY_UNIQUE_CODE 
	ON INFO_COUNTRY (CODE);
	
CREATE UNIQUE INDEX INFO_COUNTRY_UNIQUE_TEXT_CODE 
	ON INFO_COUNTRY(TEXT_CODE);