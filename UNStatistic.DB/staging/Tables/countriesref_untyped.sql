CREATE TABLE [staging].[countriesref_untyped]
(
    [SourceItemId] INT NOT NULL DEFAULT -1,
	[name] NVARCHAR(100) NULL,
	[alpha-2] NVARCHAR(100) NULL,
	[alpha-3] NVARCHAR(100) NULL,
	[country-code] NVARCHAR(100) NULL,
	[iso-3166-1] NVARCHAR(100) NULL,
	[region] NVARCHAR(100) NULL,
	[sub-region] NVARCHAR(100) NULL,
	[intermediate region] NVARCHAR(100) NULL,
    [sysCreatedAt] DATETIME DEFAULT GETUTCDATE(),
    [sysChangedAt] DATETIME DEFAULT GETUTCDATE(),
    [sysChangedBy] INT NOT NULL DEFAULT -1,
    [sysCreatedBy] INT NOT NULL DEFAULT -1
)