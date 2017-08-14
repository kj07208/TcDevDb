CREATE TABLE [dbo].[index_security_matrix] (
    [index_security_matrix_key] INT          IDENTITY (1, 1) NOT NULL,
    [index_key]                 INT          NOT NULL,
    [role_title]                VARCHAR (25) NULL,
    [role_level]                INT          NOT NULL,
    [uni]                       VARCHAR (20) NULL,
    CONSTRAINT [PK_index_security_matrix] PRIMARY KEY CLUSTERED ([index_security_matrix_key] ASC),
    CONSTRAINT [FK_index_security_matrix_index] FOREIGN KEY ([index_key]) REFERENCES [dbo].[index] ([index_key])
);
GO

