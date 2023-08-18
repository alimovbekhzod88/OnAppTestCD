CREATE TABLE SYS_USER_ROLE 
(
    ID 				SERIAL NOT NULL PRIMARY KEY,
    USER_ID 		INT NOT NULL,
    ROLE_ID 		INT NOT NULL,
	
	STATE_ID		INT NOT NULL,
	CREATED_AT		TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
	CREATED_BY		INT,
	MODIFIED_AT		TIMESTAMP WITHOUT TIME ZONE,
	MODIFIED_BY		INT,
    
    CONSTRAINT FK_USER_ID
		FOREIGN KEY (USER_ID)
			REFERENCES SYS_USER(ID),
    CONSTRAINT FK_ROLE_ID
		FOREIGN KEY (ROLE_ID)
			REFERENCES SYS_ROLE(ID),
    CONSTRAINT FK_STATE_ID
		FOREIGN KEY (STATE_ID)
			REFERENCES ENUM_STATE(ID)
);
