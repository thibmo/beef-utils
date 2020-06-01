using System;
using System.Text;

namespace KeyVault
{
	[CRepr]
	struct TGuid
	{
		public uint32 D1;
		public uint16 D2;
		public uint16 D3;
		public uint8[8] D4;

		public this(uint32 l, uint16 w1, uint16 w2, uint8[8] ba)
		{
			D1    = l;
			D2    = w1;
			D3    = w2;
			D4[0] = ba[0];
			D4[1] = ba[1];
			D4[2] = ba[2];
			D4[3] = ba[3];
			D4[4] = ba[4];
			D4[5] = ba[5];
			D4[6] = ba[6];
			D4[7] = ba[7];
		}
	}

	static class ShellApiExt
	{
		// legacy CSIDL value: CSIDL_NETWORK
		// display name: "Network"
		// legacy display name: "My Network Places"
		// default path: 
		// {D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}
		public static TGuid FOLDERID_NetworkFolder = .(0xD20BEEC4, 0x5CA8, 0x4905, .(0xAE, 0x3B, 0xBF, 0x25, 0x1E, 0xA0, 0x9B, 0x53));

		// {0AC0837C-BBF8-452A-850D-79D08E667CA7}
		public static TGuid FOLDERID_ComputerFolder = .(0x0AC0837C, 0xBBF8, 0x452A, .(0x85, 0x0D, 0x79, 0xD0, 0x8E, 0x66, 0x7C, 0xA7));

		// {4D9F7874-4E0C-4904-967B-40B0D20C3E4B}
		public static TGuid FOLDERID_InternetFolder = .(0x4D9F7874, 0x4E0C, 0x4904, .(0x96, 0x7B, 0x40, 0xB0, 0xD2, 0x0C, 0x3E, 0x4B));

		// {82A74AEB-AEB4-465C-A014-D097EE346D63}
		public static TGuid FOLDERID_ControlPanelFolder = .(0x82A74AEB, 0xAEB4, 0x465C, .(0xA0, 0x14, 0xD0, 0x97, 0xEE, 0x34, 0x6D, 0x63));

		// {76FC4E2D-D6AD-4519-A663-37BD56068185}
		public static TGuid FOLDERID_PrintersFolder = .(0x76FC4E2D, 0xD6AD, 0x4519, .(0xA6, 0x63, 0x37, 0xBD, 0x56, 0x06, 0x81, 0x85));

		// {43668BF8-C14E-49B2-97C9-747784D784B7}
		public static TGuid FOLDERID_SyncManagerFolder = .(0x43668BF8, 0xC14E, 0x49B2, .(0x97, 0xC9, 0x74, 0x77, 0x84, 0xD7, 0x84, 0xB7));

		// {0F214138-B1D3-4a90-BBA9-27CBC0C5389A}
		public static TGuid FOLDERID_SyncSetupFolder = .(0x0f214138, 0xb1d3, 0x4a90, .(0xbb, 0xa9, 0x27, 0xcb, 0xc0, 0xc5, 0x38, 0x9a));

		// {4bfefb45-347d-4006-a5be-ac0cb0567192}
		public static TGuid FOLDERID_ConflictFolder = .(0x4bfefb45, 0x347d, 0x4006, .(0xa5, 0xbe, 0xac, 0x0c, 0xb0, 0x56, 0x71, 0x92));

		// {289a9a43-be44-4057-a41b-587a76d7e7f9}
		public static TGuid FOLDERID_SyncResultsFolder = .(0x289a9a43, 0xbe44, 0x4057, .(0xa4, 0x1b, 0x58, 0x7a, 0x76, 0xd7, 0xe7, 0xf9));

		// {B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}
		public static TGuid FOLDERID_RecycleBinFolder = .(0xB7534046, 0x3ECB, 0x4C18, .(0xBE, 0x4E, 0x64, 0xCD, 0x4C, 0xB7, 0xD6, 0xAC));

		// {6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}
		public static TGuid FOLDERID_ConnectionsFolder = .(0x6F0CD92B, 0x2E97, 0x45D1, .(0x88, 0xFF, 0xB0, 0xD1, 0x86, 0xB8, 0xDE, 0xDD));

		// {FD228CB7-AE11-4AE3-864C-16F3910AB8FE}
		public static TGuid FOLDERID_Fonts = .(0xFD228CB7, 0xAE11, 0x4AE3, .(0x86, 0x4C, 0x16, 0xF3, 0x91, 0x0A, 0xB8, 0xFE));

		// display name:        "Desktop"
		// default path:        "C:\Users\<UserName>\Desktop"
		// legacy default path: "C:\Documents and Settings\<userName>\Desktop"
		// legacy CSIDL value:  CSIDL_DESKTOP
		// {B4BFCC3A-DB2C-424C-B029-7FE99A87C641}
		public static TGuid FOLDERID_Desktop = .(0xB4BFCC3A, 0xDB2C, 0x424C, .(0xB0, 0x29, 0x7F, 0xE9, 0x9A, 0x87, 0xC6, 0x41));

		// {B97D20BB-F46A-4C97-BA10-5E3608430854}
		public static TGuid FOLDERID_Startup = .(0xB97D20BB, 0xF46A, 0x4C97, .(0xBA, 0x10, 0x5E, 0x36, 0x08, 0x43, 0x08, 0x54));

		// {A77F5D77-2E2B-44C3-A6A2-ABA601054A51}
		public static TGuid FOLDERID_Programs = .(0xA77F5D77, 0x2E2B, 0x44C3, .(0xA6, 0xA2, 0xAB, 0xA6, 0x01, 0x05, 0x4A, 0x51));

		// {625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}
		public static TGuid FOLDERID_StartMenu = .(0x625B53C3, 0xAB48, 0x4EC1, .(0xBA, 0x1F, 0xA1, 0xEF, 0x41, 0x46, 0xFC, 0x19));

		// {AE50C081-EBD2-438A-8655-8A092E34987A}
		public static TGuid FOLDERID_Recent = .(0xAE50C081, 0xEBD2, 0x438A, .(0x86, 0x55, 0x8A, 0x09, 0x2E, 0x34, 0x98, 0x7A));

		// {8983036C-27C0-404B-8F08-102D10DCFD74}
		public static TGuid FOLDERID_SendTo = .(0x8983036C, 0x27C0, 0x404B, .(0x8F, 0x08, 0x10, 0x2D, 0x10, 0xDC, 0xFD, 0x74));

		// {FDD39AD0-238F-46AF-ADB4-6C85480369C7}
		public static TGuid FOLDERID_Documents = .(0xFDD39AD0, 0x238F, 0x46AF, .(0xAD, 0xB4, 0x6C, 0x85, 0x48, 0x03, 0x69, 0xC7));

		// {1777F761-68AD-4D8A-87BD-30B759FA33DD}
		public static TGuid FOLDERID_Favorites = .(0x1777F761, 0x68AD, 0x4D8A, .(0x87, 0xBD, 0x30, 0xB7, 0x59, 0xFA, 0x33, 0xDD));

		// {C5ABBF53-E17F-4121-8900-86626FC2C973}
		public static TGuid FOLDERID_NetHood = .(0xC5ABBF53, 0xE17F, 0x4121, .(0x89, 0x00, 0x86, 0x62, 0x6F, 0xC2, 0xC9, 0x73));

		// {9274BD8D-CFD1-41C3-B35E-B13F55A758F4}
		public static TGuid FOLDERID_PrintHood = .(0x9274BD8D, 0xCFD1, 0x41C3, .(0xB3, 0x5E, 0xB1, 0x3F, 0x55, 0xA7, 0x58, 0xF4));

		// {A63293E8-664E-48DB-A079-DF759E0509F7}
		public static TGuid FOLDERID_Templates = .(0xA63293E8, 0x664E, 0x48DB, .(0xA0, 0x79, 0xDF, 0x75, 0x9E, 0x05, 0x09, 0xF7));

		// {82A5EA35-D9CD-47C5-9629-E15D2F714E6E}
		public static TGuid FOLDERID_CommonStartup = .(0x82A5EA35, 0xD9CD, 0x47C5, .(0x96, 0x29, 0xE1, 0x5D, 0x2F, 0x71, 0x4E, 0x6E));

		// {0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}
		public static TGuid FOLDERID_CommonPrograms = .(0x0139D44E, 0x6AFE, 0x49F2, .(0x86, 0x90, 0x3D, 0xAF, 0xCA, 0xE6, 0xFF, 0xB8));

		// {A4115719-D62E-491D-AA7C-E74B8BE3B067}
		public static TGuid FOLDERID_CommonStartMenu = .(0xA4115719, 0xD62E, 0x491D, .(0xAA, 0x7C, 0xE7, 0x4B, 0x8B, 0xE3, 0xB0, 0x67));

		// {C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}
		public static TGuid FOLDERID_PublicDesktop = .(0xC4AA340D, 0xF20F, 0x4863, .(0xAF, 0xEF, 0xF8, 0x7E, 0xF2, 0xE6, 0xBA, 0x25));

		// {62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}
		public static TGuid FOLDERID_ProgramData = .(0x62AB5D82, 0xFDC1, 0x4DC3, .(0xA9, 0xDD, 0x07, 0x0D, 0x1D, 0x49, 0x5D, 0x97));

		// {B94237E7-57AC-4347-9151-B08C6C32D1F7}
		public static TGuid FOLDERID_CommonTemplates = .(0xB94237E7, 0x57AC, 0x4347, .(0x91, 0x51, 0xB0, 0x8C, 0x6C, 0x32, 0xD1, 0xF7));

		// {ED4824AF-DCE4-45A8-81E2-FC7965083634}
		public static TGuid FOLDERID_PublicDocuments = .(0xED4824AF, 0xDCE4, 0x45A8, .(0x81, 0xE2, 0xFC, 0x79, 0x65, 0x08, 0x36, 0x34));

		// {3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}
		public static TGuid FOLDERID_RoamingAppData = .(0x3EB685DB, 0x65F9, 0x4CF6, .(0xA0, 0x3A, 0xE3, 0xEF, 0x65, 0x72, 0x9F, 0x3D));

		// {F1B32785-6FBA-4FCF-9D55-7B8E7F157091}
		public static TGuid FOLDERID_LocalAppData = .(0xF1B32785, 0x6FBA, 0x4FCF, .(0x9D, 0x55, 0x7B, 0x8E, 0x7F, 0x15, 0x70, 0x91));

		// {A520A1A4-1780-4FF6-BD18-167343C5AF16}
		public static TGuid FOLDERID_LocalAppDataLow = .(0xA520A1A4, 0x1780, 0x4FF6, .(0xBD, 0x18, 0x16, 0x73, 0x43, 0xC5, 0xAF, 0x16));

		// {352481E8-33BE-4251-BA85-6007CAEDCF9D}
		public static TGuid FOLDERID_InternetCache = .(0x352481E8, 0x33BE, 0x4251, .(0xBA, 0x85, 0x60, 0x07, 0xCA, 0xED, 0xCF, 0x9D));

		// {2B0F765D-C0E9-4171-908E-08A611B84FF6}
		public static TGuid FOLDERID_Cookies = .(0x2B0F765D, 0xC0E9, 0x4171, .(0x90, 0x8E, 0x08, 0xA6, 0x11, 0xB8, 0x4F, 0xF6));

		// {D9DC8A3B-B784-432E-A781-5A1130A75963}
		public static TGuid FOLDERID_History = .(0xD9DC8A3B, 0xB784, 0x432E, .(0xA7, 0x81, 0x5A, 0x11, 0x30, 0xA7, 0x59, 0x63));

		// {1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}
		public static TGuid FOLDERID_System = .(0x1AC14E77, 0x02E7, 0x4E5D, .(0xB7, 0x44, 0x2E, 0xB1, 0xAE, 0x51, 0x98, 0xB7));

		// {D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}
		public static TGuid FOLDERID_SystemX86 = .(0xD65231B0, 0xB2F1, 0x4857, .(0xA4, 0xCE, 0xA8, 0xE7, 0xC6, 0xEA, 0x7D, 0x27));

		// {F38BF404-1D43-42F2-9305-67DE0B28FC23}
		public static TGuid FOLDERID_Windows = .(0xF38BF404, 0x1D43, 0x42F2, .(0x93, 0x05, 0x67, 0xDE, 0x0B, 0x28, 0xFC, 0x23));

		// {5E6C858F-0E22-4760-9AFE-EA3317B67173}
		public static TGuid FOLDERID_Profile = .(0x5E6C858F, 0x0E22, 0x4760, .(0x9A, 0xFE, 0xEA, 0x33, 0x17, 0xB6, 0x71, 0x73));

		// {33E28130-4E1E-4676-835A-98395C3BC3BB}
		public static TGuid FOLDERID_Pictures = .(0x33E28130, 0x4E1E, 0x4676, .(0x83, 0x5A, 0x98, 0x39, 0x5C, 0x3B, 0xC3, 0xBB));

		// {7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}
		public static TGuid FOLDERID_ProgramFilesX86 = .(0x7C5A40EF, 0xA0FB, 0x4BFC, .(0x87, 0x4A, 0xC0, 0xF2, 0xE0, 0xB9, 0xFA, 0x8E));

		// {DE974D24-D9C6-4D3E-BF91-F4455120B917}
		public static TGuid FOLDERID_ProgramFilesCommonX86 = .(0xDE974D24, 0xD9C6, 0x4D3E, .(0xBF, 0x91, 0xF4, 0x45, 0x51, 0x20, 0xB9, 0x17));

		// {6D809377-6AF0-444b-8957-A3773F02200E}
		public static TGuid FOLDERID_ProgramFilesX64 = .(0x6d809377, 0x6af0, 0x444b, .(0x89, 0x57, 0xa3, 0x77, 0x3f, 0x02, 0x20, 0x0e ));

		// {6365D5A7-0F0D-45e5-87F6-0DA56B6A4F7D}
		public static TGuid FOLDERID_ProgramFilesCommonX64 = .(0x6365d5a7, 0xf0d, 0x45e5, .(0x87, 0xf6, 0xd, 0xa5, 0x6b, 0x6a, 0x4f, 0x7d ));

		// {905e63b6-c1bf-494e-b29c-65b732d3d21a}
		public static TGuid FOLDERID_ProgramFiles = .(0x905e63b6, 0xc1bf, 0x494e, .(0xb2, 0x9c, 0x65, 0xb7, 0x32, 0xd3, 0xd2, 0x1a));

		// {F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}
		public static TGuid FOLDERID_ProgramFilesCommon = .(0xF7F1ED05, 0x9F6D, 0x47A2, .(0xAA, 0xAE, 0x29, 0xD3, 0x17, 0xC6, 0xF0, 0x66));

		// {5cd7aee2-2219-4a67-b85d-6c9ce15660cb}
		public static TGuid FOLDERID_UserProgramFiles = .(0x5cd7aee2, 0x2219, 0x4a67, .(0xb8, 0x5d, 0x6c, 0x9c, 0xe1, 0x56, 0x60, 0xcb));

		// {bcbd3057-ca5c-4622-b42d-bc56db0ae516}
		public static TGuid FOLDERID_UserProgramFilesCommon = .(0xbcbd3057, 0xca5c, 0x4622, .(0xb4, 0x2d, 0xbc, 0x56, 0xdb, 0x0a, 0xe5, 0x16));

		// {724EF170-A42D-4FEF-9F26-B60E846FBA4F}
		public static TGuid FOLDERID_AdminTools = .(0x724EF170, 0xA42D, 0x4FEF, .(0x9F, 0x26, 0xB6, 0x0E, 0x84, 0x6F, 0xBA, 0x4F));

		// {D0384E7D-BAC3-4797-8F14-CBA229B392B5}
		public static TGuid FOLDERID_CommonAdminTools = .(0xD0384E7D, 0xBAC3, 0x4797, .(0x8F, 0x14, 0xCB, 0xA2, 0x29, 0xB3, 0x92, 0xB5));

		// {4BD8D571-6D19-48D3-BE97-422220080E43}
		public static TGuid FOLDERID_Music = .(0x4BD8D571, 0x6D19, 0x48D3, .(0xBE, 0x97, 0x42, 0x22, 0x20, 0x08, 0x0E, 0x43));

		// {18989B1D-99B5-455B-841C-AB7C74E4DDFC}
		public static TGuid FOLDERID_Videos = .(0x18989B1D, 0x99B5, 0x455B, .(0x84, 0x1C, 0xAB, 0x7C, 0x74, 0xE4, 0xDD, 0xFC));

		// {C870044B-F49E-4126-A9C3-B52A1FF411E8}
		public static TGuid FOLDERID_Ringtones = .(0xC870044B, 0xF49E, 0x4126, .(0xA9, 0xC3, 0xB5, 0x2A, 0x1F, 0xF4, 0x11, 0xE8));

		// {B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}
		public static TGuid FOLDERID_PublicPictures = .(0xB6EBFB86, 0x6907, 0x413C, .(0x9A, 0xF7, 0x4F, 0xC2, 0xAB, 0xF0, 0x7C, 0xC5));

		// {3214FAB5-9757-4298-BB61-92A9DEAA44FF}
		public static TGuid FOLDERID_PublicMusic = .(0x3214FAB5, 0x9757, 0x4298, .(0xBB, 0x61, 0x92, 0xA9, 0xDE, 0xAA, 0x44, 0xFF));

		// {2400183A-6185-49FB-A2D8-4A392A602BA3}
		public static TGuid FOLDERID_PublicVideos = .(0x2400183A, 0x6185, 0x49FB, .(0xA2, 0xD8, 0x4A, 0x39, 0x2A, 0x60, 0x2B, 0xA3));

		// {E555AB60-153B-4D17-9F04-A5FE99FC15EC}
		public static TGuid FOLDERID_PublicRingtones = .(0xE555AB60, 0x153B, 0x4D17, .(0x9F, 0x04, 0xA5, 0xFE, 0x99, 0xFC, 0x15, 0xEC));

		// {8AD10C31-2ADB-4296-A8F7-E4701232C972}
		public static TGuid FOLDERID_ResourceDir = .(0x8AD10C31, 0x2ADB, 0x4296, .(0xA8, 0xF7, 0xE4, 0x70, 0x12, 0x32, 0xC9, 0x72));

		// {2A00375E-224C-49DE-B8D1-440DF7EF3DDC}
		public static TGuid FOLDERID_LocalizedResourcesDir = .(0x2A00375E, 0x224C, 0x49DE, .(0xB8, 0xD1, 0x44, 0x0D, 0xF7, 0xEF, 0x3D, 0xDC));

		// {C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}
		public static TGuid FOLDERID_CommonOEMLinks = .(0xC1BAE2D0, 0x10DF, 0x4334, .(0xBE, 0xDD, 0x7A, 0xA2, 0x0B, 0x22, 0x7A, 0x9D));

		// {9E52AB10-F80D-49DF-ACB8-4330F5687855}
		public static TGuid FOLDERID_CDBurning = .(0x9E52AB10, 0xF80D, 0x49DF, .(0xAC, 0xB8, 0x43, 0x30, 0xF5, 0x68, 0x78, 0x55));

		// {0762D272-C50A-4BB0-A382-697DCD729B80}
		public static TGuid FOLDERID_UserProfiles = .(0x0762D272, 0xC50A, 0x4BB0, .(0xA3, 0x82, 0x69, 0x7D, 0xCD, 0x72, 0x9B, 0x80));

		// {DE92C1C7-837F-4F69-A3BB-86E631204A23}
		public static TGuid FOLDERID_Playlists = .(0xDE92C1C7, 0x837F, 0x4F69, .(0xA3, 0xBB, 0x86, 0xE6, 0x31, 0x20, 0x4A, 0x23));

		// {15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}
		public static TGuid FOLDERID_SamplePlaylists = .(0x15CA69B3, 0x30EE, 0x49C1, .(0xAC, 0xE1, 0x6B, 0x5E, 0xC3, 0x72, 0xAF, 0xB5));

		// {B250C668-F57D-4EE1-A63C-290EE7D1AA1F}
		public static TGuid FOLDERID_SampleMusic = .(0xB250C668, 0xF57D, 0x4EE1, .(0xA6, 0x3C, 0x29, 0x0E, 0xE7, 0xD1, 0xAA, 0x1F));

		// {C4900540-2379-4C75-844B-64E6FAF8716B}
		public static TGuid FOLDERID_SamplePictures = .(0xC4900540, 0x2379, 0x4C75, .(0x84, 0x4B, 0x64, 0xE6, 0xFA, 0xF8, 0x71, 0x6B));

		// {859EAD94-2E85-48AD-A71A-0969CB56A6CD}
		public static TGuid FOLDERID_SampleVideos = .(0x859EAD94, 0x2E85, 0x48AD, .(0xA7, 0x1A, 0x09, 0x69, 0xCB, 0x56, 0xA6, 0xCD));

		// {69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}
		public static TGuid FOLDERID_PhotoAlbums = .(0x69D2CF90, 0xFC33, 0x4FB7, .(0x9A, 0x0C, 0xEB, 0xB0, 0xF0, 0xFC, 0xB4, 0x3C));

		// {DFDF76A2-C82A-4D63-906A-5644AC457385}
		public static TGuid FOLDERID_Public = .(0xDFDF76A2, 0xC82A, 0x4D63, .(0x90, 0x6A, 0x56, 0x44, 0xAC, 0x45, 0x73, 0x85));

		// {df7266ac-9274-4867-8d55-3bd661de872d}
		public static TGuid FOLDERID_ChangeRemovePrograms = .(0xdf7266ac, 0x9274, 0x4867, .(0x8d, 0x55, 0x3b, 0xd6, 0x61, 0xde, 0x87, 0x2d));

		// {a305ce99-f527-492b-8b1a-7e76fa98d6e4}
		public static TGuid FOLDERID_AppUpdates = .(0xa305ce99, 0xf527, 0x492b, .(0x8b, 0x1a, 0x7e, 0x76, 0xfa, 0x98, 0xd6, 0xe4));

		// {de61d971-5ebc-4f02-a3a9-6c82895e5c04}
		public static TGuid FOLDERID_AddNewPrograms = .(0xde61d971, 0x5ebc, 0x4f02, .(0xa3, 0xa9, 0x6c, 0x82, 0x89, 0x5e, 0x5c, 0x04));

		// {374DE290-123F-4565-9164-39C4925E467B}
		public static TGuid FOLDERID_Downloads = .(0x374de290, 0x123f, 0x4565, .(0x91, 0x64, 0x39, 0xc4, 0x92, 0x5e, 0x46, 0x7b));

		// {3D644C9B-1FB8-4f30-9B45-F670235F79C0}
		public static TGuid FOLDERID_PublicDownloads = .(0x3d644c9b, 0x1fb8, 0x4f30, .(0x9b, 0x45, 0xf6, 0x70, 0x23, 0x5f, 0x79, 0xc0));

		// {7d1d3a04-debb-4115-95cf-2f29da2920da}
		public static TGuid FOLDERID_SavedSearches = .(0x7d1d3a04, 0xdebb, 0x4115, .(0x95, 0xcf, 0x2f, 0x29, 0xda, 0x29, 0x20, 0xda));

		// {52a4f021-7b75-48a9-9f6b-4b87a210bc8f}
		public static TGuid FOLDERID_QuickLaunch = .(0x52a4f021, 0x7b75, 0x48a9, .(0x9f, 0x6b, 0x4b, 0x87, 0xa2, 0x10, 0xbc, 0x8f));

		// {56784854-C6CB-462b-8169-88E350ACB882}
		public static TGuid FOLDERID_Contacts = .(0x56784854, 0xc6cb, 0x462b, .(0x81, 0x69, 0x88, 0xe3, 0x50, 0xac, 0xb8, 0x82));

		// {A75D362E-50FC-4fb7-AC2C-A8BEAA314493}
		public static TGuid FOLDERID_SidebarParts = .(0xa75d362e, 0x50fc, 0x4fb7, .(0xac, 0x2c, 0xa8, 0xbe, 0xaa, 0x31, 0x44, 0x93));

		// {7B396E54-9EC5-4300-BE0A-2482EBAE1A26}
		public static TGuid FOLDERID_SidebarDefaultParts = .(0x7b396e54, 0x9ec5, 0x4300, .(0xbe, 0xa, 0x24, 0x82, 0xeb, 0xae, 0x1a, 0x26));

		// {DEBF2536-E1A8-4c59-B6A2-414586476AEA}
		public static TGuid FOLDERID_PublicGameTasks = .(0xdebf2536, 0xe1a8, 0x4c59, .(0xb6, 0xa2, 0x41, 0x45, 0x86, 0x47, 0x6a, 0xea));

		// {054FAE61-4DD8-4787-80B6-090220C4B700}
		public static TGuid FOLDERID_GameTasks = .(0x054fae61, 0x4dd8, 0x4787, .(0x80, 0xb6, 0x9, 0x2, 0x20, 0xc4, 0xb7, 0x0));

		// {4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4}
		public static TGuid FOLDERID_SavedGames = .(0x4c5c32ff, 0xbb9d, 0x43b0, .(0xb5, 0xb4, 0x2d, 0x72, 0xe5, 0x4e, 0xaa, 0xa4));

		// {CAC52C1A-B53D-4edc-92D7-6B2E8AC19434} - deprecated
		public static TGuid FOLDERID_Games = .(0xcac52c1a, 0xb53d, 0x4edc, .(0x92, 0xd7, 0x6b, 0x2e, 0x8a, 0xc1, 0x94, 0x34));

		// {98ec0e18-2098-4d44-8644-66979315a281}
		public static TGuid FOLDERID_SEARCH_MAPI = .(0x98ec0e18, 0x2098, 0x4d44, .(0x86, 0x44, 0x66, 0x97, 0x93, 0x15, 0xa2, 0x81));

		// {ee32e446-31ca-4aba-814f-a5ebd2fd6d5e}
		public static TGuid FOLDERID_SEARCH_CSC = .(0xee32e446, 0x31ca, 0x4aba, .(0x81, 0x4f, 0xa5, 0xeb, 0xd2, 0xfd, 0x6d, 0x5e));

		// {bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968}
		public static TGuid FOLDERID_Links = .(0xbfb9d5e0, 0xc6a9, 0x404c, .(0xb2, 0xb2, 0xae, 0x6d, 0xb6, 0xaf, 0x49, 0x68));

		// {f3ce0f7c-4901-4acc-8648-d5d44b04ef8f}
		public static TGuid FOLDERID_UsersFiles = .(0xf3ce0f7c, 0x4901, 0x4acc, .(0x86, 0x48, 0xd5, 0xd4, 0x4b, 0x04, 0xef, 0x8f));

		// {A302545D-DEFF-464b-ABE8-61C8648D939B}
		public static TGuid FOLDERID_UsersLibraries = .(0xa302545d, 0xdeff, 0x464b, .(0xab, 0xe8, 0x61, 0xc8, 0x64, 0x8d, 0x93, 0x9b));

		// {190337d1-b8ca-4121-a639-6d472d16972a}
		public static TGuid FOLDERID_SearchHome = .(0x190337d1, 0xb8ca, 0x4121, .(0xa6, 0x39, 0x6d, 0x47, 0x2d, 0x16, 0x97, 0x2a));

		// {2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39}
		public static TGuid FOLDERID_OriginalImages = .(0x2C36C0AA, 0x5812, 0x4b87, .(0xbf, 0xd0, 0x4c, 0xd0, 0xdf, 0xb1, 0x9b, 0x39));

		// {7b0db17d-9cd2-4a93-9733-46cc89022e7c}
		public static TGuid FOLDERID_DocumentsLibrary = .(0x7b0db17d, 0x9cd2, 0x4a93, .(0x97, 0x33, 0x46, 0xcc, 0x89, 0x02, 0x2e, 0x7c));

		// {2112AB0A-C86A-4ffe-A368-0DE96E47012E}
		public static TGuid FOLDERID_MusicLibrary = .(0x2112ab0a, 0xc86a, 0x4ffe, .(0xa3, 0x68, 0xd, 0xe9, 0x6e, 0x47, 0x1, 0x2e));

		// {A990AE9F-A03B-4e80-94BC-9912D7504104}
		public static TGuid FOLDERID_PicturesLibrary = .(0xa990ae9f, 0xa03b, 0x4e80, .(0x94, 0xbc, 0x99, 0x12, 0xd7, 0x50, 0x41, 0x4));

		// {491E922F-5643-4af4-A7EB-4E7A138D8174}
		public static TGuid FOLDERID_VideosLibrary = .(0x491e922f, 0x5643, 0x4af4, .(0xa7, 0xeb, 0x4e, 0x7a, 0x13, 0x8d, 0x81, 0x74));

		// {1A6FDBA2-F42D-4358-A798-B74D745926C5}
		public static TGuid FOLDERID_RecordedTVLibrary = .(0x1a6fdba2, 0xf42d, 0x4358, .(0xa7, 0x98, 0xb7, 0x4d, 0x74, 0x59, 0x26, 0xc5));

		// {52528A6B-B9E3-4add-B60D-588C2DBA842D}
		public static TGuid FOLDERID_HomeGroup = .(0x52528a6b, 0xb9e3, 0x4add, .(0xb6, 0xd, 0x58, 0x8c, 0x2d, 0xba, 0x84, 0x2d));

		// {9B74B6A3-0DFD-4f11-9E78-5F7800F2E772}
		public static TGuid FOLDERID_HomeGroupCurrentUser = .(0x9b74b6a3, 0xdfd, 0x4f11, .(0x9e, 0x78, 0x5f, 0x78, 0x0, 0xf2, 0xe7, 0x72));

		// {5CE4A5E9-E4EB-479D-B89F-130C02886155}
		public static TGuid FOLDERID_DeviceMetadataStore = .(0x5ce4a5e9, 0xe4eb, 0x479d, .(0xb8, 0x9f, 0x13, 0x0c, 0x02, 0x88, 0x61, 0x55));

		// {1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}
		public static TGuid FOLDERID_Libraries = .(0x1b3ea5dc, 0xb587, 0x4786, .(0xb4, 0xef, 0xbd, 0x1d, 0xc3, 0x32, 0xae, 0xae));

		// {48daf80b-e6cf-4f4e-b800-0e69d84ee384}
		public static TGuid FOLDERID_PublicLibraries = .(0x48daf80b, 0xe6cf, 0x4f4e, .(0xb8, 0x00, 0x0e, 0x69, 0xd8, 0x4e, 0xe3, 0x84));

		// {9e3995ab-1f9c-4f13-b827-48b24b6c7174}
		public static TGuid FOLDERID_UserPinned = .(0x9e3995ab, 0x1f9c, 0x4f13, .(0xb8, 0x27, 0x48, 0xb2, 0x4b, 0x6c, 0x71, 0x74));

		// {bcb5256f-79f6-4cee-b725-dc34e402fd46}
		public static TGuid FOLDERID_ImplicitAppShortcuts = .(0xbcb5256f, 0x79f6, 0x4cee, .(0xb7, 0x25, 0xdc, 0x34, 0xe4, 0x2, 0xfd, 0x46));

		// {008ca0b1-55b4-4c56-b8a8-4de4b299d3be}
		public static TGuid FOLDERID_AccountPictures = .(0x008ca0b1, 0x55b4, 0x4c56, .(0xb8, 0xa8, 0x4d, 0xe4, 0xb2, 0x99, 0xd3, 0xbe));

		// {0482af6c-08f1-4c34-8c90-e17ec98b1e17}
		public static TGuid FOLDERID_PublicUserTiles = .(0x0482af6c, 0x08f1, 0x4c34, .(0x8c, 0x90, 0xe1, 0x7e, 0xc9, 0x8b, 0x1e, 0x17));

		// {1e87508d-89c2-42f0-8a7e-645a0f50ca58}
		public static TGuid FOLDERID_AppsFolder = .(0x1e87508d, 0x89c2, 0x42f0, .(0x8a, 0x7e, 0x64, 0x5a, 0x0f, 0x50, 0xca, 0x58));

		// {F26305EF-6948-40B9-B255-81453D09C785}
		public static TGuid FOLDERID_StartMenuAllPrograms = .(0xf26305ef, 0x6948, 0x40b9, .(0xb2, 0x55, 0x81, 0x45, 0x3d, 0x9, 0xc7, 0x85));

		// {A440879F-87A0-4F7D-B700-0207B966194A}
		public static TGuid FOLDERID_CommonStartMenuPlaces = .(0xa440879f, 0x87a0, 0x4f7d, .(0xb7, 0x0, 0x2, 0x7, 0xb9, 0x66, 0x19, 0x4a));

		// {A3918781-E5F2-4890-B3D9-A7E54332328C}
		public static TGuid FOLDERID_ApplicationShortcuts = .(0xa3918781, 0xe5f2, 0x4890, .(0xb3, 0xd9, 0xa7, 0xe5, 0x43, 0x32, 0x32, 0x8c));

		// {00BCFC5A-ED94-4e48-96A1-3F6217F21990}
		public static TGuid FOLDERID_RoamingTiles = .(0xbcfc5a, 0xed94, 0x4e48, .(0x96, 0xa1, 0x3f, 0x62, 0x17, 0xf2, 0x19, 0x90));

		// {AAA8D5A5-F1D6-4259-BAA8-78E7EF60835E}
		public static TGuid FOLDERID_RoamedTileImages = .(0xaaa8d5a5, 0xf1d6, 0x4259, .(0xba, 0xa8, 0x78, 0xe7, 0xef, 0x60, 0x83, 0x5e));

		// {b7bede81-df94-4682-a7d8-57a52620b86f}
		public static TGuid FOLDERID_Screenshots = .(0xb7bede81, 0xdf94, 0x4682, .(0xa7, 0xd8, 0x57, 0xa5, 0x26, 0x20, 0xb8, 0x6f));

		// {AB5FB87B-7CE2-4F83-915D-550846C9537B}
		public static TGuid FOLDERID_CameraRoll = .(0xab5fb87b, 0x7ce2, 0x4f83, .(0x91, 0x5d, 0x55, 0x8, 0x46, 0xc9, 0x53, 0x7b));

		// {A52BBA46-E9E1-435f-B3D9-28DAA648C0F6} - deprecated
		// Same GUID as FOLDERID_OneDrive
		public static TGuid FOLDERID_SkyDrive = .(0xa52bba46, 0xe9e1, 0x435f, .(0xb3, 0xd9, 0x28, 0xda, 0xa6, 0x48, 0xc0, 0xf6));

		// {A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}
		// Same GUID as FOLDERID_SkyDrive
		public static TGuid FOLDERID_OneDrive = .(0xa52bba46, 0xe9e1, 0x435f, .(0xb3, 0xd9, 0x28, 0xda, 0xa6, 0x48, 0xc0, 0xf6));

		// {24D89E24-2F19-4534-9DDE-6A6671FBB8FE}
		public static TGuid FOLDERID_SkyDriveDocuments = .(0x24d89e24, 0x2f19, 0x4534, .(0x9d, 0xde, 0x6a, 0x66, 0x71, 0xfb, 0xb8, 0xfe));

		// {339719B5-8C47-4894-94C2-D8F77ADD44A6}
		public static TGuid FOLDERID_SkyDrivePictures = .(0x339719b5, 0x8c47, 0x4894, .(0x94, 0xc2, 0xd8, 0xf7, 0x7a, 0xdd, 0x44, 0xa6));

		// {C3F2459E-80D6-45DC-BFEF-1F769F2BE730}
		public static TGuid FOLDERID_SkyDriveMusic = .(0xc3f2459e, 0x80d6, 0x45dc, .(0xbf, 0xef, 0x1f, 0x76, 0x9f, 0x2b, 0xe7, 0x30));

		// {767E6811-49CB-4273-87C2-20F355E1085B}
		public static TGuid FOLDERID_SkyDriveCameraRoll = .(0x767e6811, 0x49cb, 0x4273, .(0x87, 0xc2, 0x20, 0xf3, 0x55, 0xe1, 0x08, 0x5b));

		// {0D4C3DB6-03A3-462F-A0E6-08924C41B5D4}
		public static TGuid FOLDERID_SearchHistory = .(0x0d4c3db6, 0x03a3, 0x462f, .(0xa0, 0xe6, 0x08, 0x92, 0x4c, 0x41, 0xb5, 0xd4));

		// {7E636BFE-DFA9-4D5E-B456-D7B39851D8A9}
		public static TGuid FOLDERID_SearchTemplates = .(0x7e636bfe, 0xdfa9, 0x4d5e, .(0xb4, 0x56, 0xd7, 0xb3, 0x98, 0x51, 0xd8, 0xa9));

		// {2B20DF75-1EDA-4039-8097-38798227D5B7}
		public static TGuid FOLDERID_CameraRollLibrary = .(0x2b20df75, 0x1eda, 0x4039, .(0x80, 0x97, 0x38, 0x79, 0x82, 0x27, 0xd5, 0xb7));

		// {3B193882-D3AD-4eab-965A-69829D1FB59F}
		public static TGuid FOLDERID_SavedPictures = .(0x3b193882, 0xd3ad, 0x4eab, .(0x96, 0x5a, 0x69, 0x82, 0x9d, 0x1f, 0xb5, 0x9f));

		// {E25B5812-BE88-4bd9-94B0-29233477B6C3}
		public static TGuid FOLDERID_SavedPicturesLibrary = .(0xe25b5812, 0xbe88, 0x4bd9, .(0x94, 0xb0, 0x29, 0x23, 0x34, 0x77, 0xb6, 0xc3));

		// {12D4C69E-24AD-4923-BE19-31321C43A767}
		public static TGuid FOLDERID_RetailDemo = .(0x12d4c69e, 0x24ad, 0x4923, .(0xbe, 0x19, 0x31, 0x32, 0x1c, 0x43, 0xa7, 0x67));

		// {1C2AC1DC-4358-4B6C-9733-AF21156576F0}
		public static TGuid FOLDERID_Device = .(0x1C2AC1DC, 0x4358, 0x4B6C, .(0x97, 0x33, 0xAF, 0x21, 0x15, 0x65, 0x76, 0xF0));

		// The file system directory that contains development files that have been copied to this device by a development tool. A 
		// typical path is C:\Users\username\AppData\Local\DevelopmentFiles. This directory is used by development tools that need 
		// to copy files to a device. This may include copying application binaries for temporary registration and execution in order 
		// to allow a developer to test their application without having to go through the full app packaging process. It could also 
		// include development time only components such as a remote debugger. Recommended practice is to create sub-directories rather 
		// than copying files to the DevelopmentFiles directory. Development tools should be careful to use a naming convention that 
		// avoids conflicts. For example application binaries should be copied to a directory with a unique name such as the app package 
		// full name. This information is per user and will not roam.
		// {DBE8E08E-3053-4BBC-B183-2A7B2B191E59}
		public static TGuid FOLDERID_DevelopmentFiles = .(0xdbe8e08e, 0x3053, 0x4bbc, .(0xb1, 0x83, 0x2a, 0x7b, 0x2b, 0x19, 0x1e, 0x59));

		// {31C0DD25-9439-4F12-BF41-7FF4EDA38722}
		public static TGuid FOLDERID_Objects3D = .(0x31c0dd25, 0x9439, 0x4f12, .(0xbf, 0x41, 0x7f, 0xf4, 0xed, 0xa3, 0x87, 0x22));

		// {EDC0FE71-98D8-4F4A-B920-C8DC133CB165}
		public static TGuid FOLDERID_AppCaptures = .(0xedc0fe71, 0x98d8, 0x4f4a, .(0xb9, 0x20, 0xc8, 0xdc, 0x13, 0x3c, 0xb1, 0x65));

		// {f42ee2d3-909f-4907-8871-4c22fc0bf756}
		public static TGuid FOLDERID_LocalDocuments = .(0xf42ee2d3, 0x909f, 0x4907, .(0x88, 0x71, 0x4c, 0x22, 0xfc, 0x0b, 0xf7, 0x56));

		// {0ddd015d-b06c-45d5-8c4c-f59713854639 }
		public static TGuid FOLDERID_LocalPictures = .(0x0ddd015d, 0xb06c, 0x45d5, .(0x8c, 0x4c, 0xf5, 0x97, 0x13, 0x85, 0x46, 0x39));

		// {35286a68-3c57-41a1-bbb1-0eae73d76c95}
		public static TGuid FOLDERID_LocalVideos = .(0x35286a68, 0x3c57, 0x41a1, .(0xbb, 0xb1, 0x0e, 0xae, 0x73, 0xd7, 0x6c, 0x95));

		// {a0c69a99-21c8-4671-8703-7934162fcf1d}
		public static TGuid FOLDERID_LocalMusic = .(0xa0c69a99, 0x21c8, 0x4671, .(0x87, 0x03, 0x79, 0x34, 0x16, 0x2f, 0xcf, 0x1d));

		// {7d83ee9b-2244-4e70-b1f5-5393042af1e4}
		public static TGuid FOLDERID_LocalDownloads = .(0x7d83ee9b, 0x2244, 0x4e70, .(0xb1, 0xf5, 0x53, 0x93, 0x04, 0x2a, 0xf1, 0xe4));

		// {2f8b40c2-83ed-48ee-b383-a1f157ec6f9a}
		public static TGuid FOLDERID_RecordedCalls = .(0x2f8b40c2, 0x83ed, 0x48ee, .(0xb3, 0x83, 0xa1, 0xf1, 0x57, 0xec, 0x6f, 0x9a));

		// {7ad67899-66af-43ba-9156-6aad42e6c596}
		public static TGuid FOLDERID_AllAppMods = .(0x7ad67899, 0x66af, 0x43ba, .(0x91, 0x56, 0x6a, 0xad, 0x42, 0xe6, 0xc5, 0x96));

		// {3db40b20-2a30-4dbe-917e-771dd21dd099}
		public static TGuid FOLDERID_CurrentAppMods = .(0x3db40b20, 0x2a30, 0x4dbe, .(0x91, 0x7e, 0x77, 0x1d, 0xd2, 0x1d, 0xd0, 0x99));

		// {B2C5E279-7ADD-439F-B28C-C41FE1BBF672}
		public static TGuid FOLDERID_AppDataDesktop = .(0xb2c5e279, 0x7add, 0x439f, .(0xb2, 0x8c, 0xc4, 0x1f, 0xe1, 0xbb, 0xf6, 0x72));

		// {7BE16610-1F7F-44AC-BFF0-83E15F2FFCA1}
		public static TGuid FOLDERID_AppDataDocuments = .(0x7be16610, 0x1f7f, 0x44ac, .(0xbf, 0xf0, 0x83, 0xe1, 0x5f, 0x2f, 0xfc, 0xa1));

		// {7CFBEFBC-DE1F-45AA-B843-A542AC536CC9}
		public static TGuid FOLDERID_AppDataFavorites = .(0x7cfbefbc, 0xde1f, 0x45aa, .(0xb8, 0x43, 0xa5, 0x42, 0xac, 0x53, 0x6c, 0xc9));

		// {559D40A3-A036-40FA-AF61-84CB430A4D34}
		public static TGuid FOLDERID_AppDataProgramData = .(0x559d40a3, 0xa036, 0x40fa, .(0xaf, 0x61, 0x84, 0xcb, 0x43, 0xa, 0x4d, 0x34));

		public const uint32 KF_FLAG_DEFAULT             = 0x00000000;

		// Make sure that the folder already exists or create it and apply security specified in folder definition
		// If folder can not be created then function will return failure and no folder path (IDList) will be returned
		// If folder is located on the network the function may take long time to execute
		public const uint32 KF_FLAG_CREATE              = 0x00008000;

		// If this flag is specified then the folder path is returned and no verification is performed
		// Use this flag is you want to get folder's path (IDList) and do not need to verify folder's existence
		//
		// If this flag is NOT specified then Known Folder API will try to verify that the folder exists
		//     If folder does not exist or can not be accessed then function will return failure and no folder path (IDList) will be returned
		//     If folder is located on the network the function may take long time to execute
		public const uint32 KF_FLAG_DONT_VERIFY         = 0x00004000;

		// Set folder path as is and do not try to substitute parts of the path with environments variables.
		// If flag is not specified then Known Folder will try to replace parts of the path with some
		// known environment variables (%USERPROFILE%, %APPDATA% etc.)
		public const uint32 KF_FLAG_DONT_UNEXPAND       = 0x00002000;

		// Get file system based IDList if available. If the flag is not specified the Known Folder API
		// will try to return aliased IDList by default. Example for FOLDERID_Documents -
		// Aliased - [desktop]\[user]\[Documents] - exact location is determined by shell namespace layout and might change
		// Non aliased - [desktop]\[computer]\[disk_c]\[users]\[user]\[Documents] - location is determined by folder location in the file system
		public const uint32 KF_FLAG_NO_ALIAS            = 0x00001000;

		// Initialize the folder with desktop.ini settings
		// If folder can not be initialized then function will return failure and no folder path will be returned
		// If folder is located on the network the function may take long time to execute
		public const uint32 KF_FLAG_INIT                = 0x00000800;

		// Get the default path, will also verify folder existence unless KF_FLAG_DONT_VERIFY is also specified
		public const uint32 KF_FLAG_DEFAULT_PATH        = 0x00000400;

		// Get the not-parent-relative default path. Only valid with KF_FLAG_DEFAULT_PATH
		public const uint32 KF_FLAG_NOT_PARENT_RELATIVE = 0x00000200;

		// Build simple IDList
		public const uint32 KF_FLAG_SIMPLE_IDLIST       = 0x00000100;

		// only return the aliased IDLists, don't fallback to file system path
		public const uint32 KF_FLAG_ALIAS_ONLY          = 0x80000000;

		public const int CSIDL_PERSONAL             = 0x0005; // My Documents
		public const int CSIDL_APPDATA              = 0x001A; // Application Data, new for NT4
		public const int CSIDL_LOCAL_APPDATA        = 0x001C; // non roaming, user\Local Settings\Application Data
		public const int CSIDL_MYMUSIC              = 0x000d;
		public const int CSIDL_MYVIDEO              = 0x000e; // "My Videos" folder
		public const int CSIDL_INTERNET_CACHE       = 0x0020;
		public const int CSIDL_COOKIES              = 0x0021;
		public const int CSIDL_HISTORY              = 0x0022;
		public const int CSIDL_COMMON_APPDATA       = 0x0023; // All Users\Application Data
		public const int CSIDL_WINDOWS              = 0x0024; // GetWindowsDirectory()
		public const int CSIDL_SYSTEM               = 0x0025; // GetSystemDirectory()
		public const int CSIDL_PROGRAM_FILES        = 0x0026; // C:\Program Files
		public const int CSIDL_MYPICTURES           = 0x0027; // My Pictures, new for Win2K
		public const int CSIDL_PROGRAM_FILES_COMMON = 0x002b; // C:\Program Files\Common
		public const int CSIDL_COMMON_DOCUMENTS     = 0x002e; // All Users\Documents
		public const int CSIDL_COMMON_MUSIC         = 0x0035; // All Users\My Music
		public const int CSIDL_COMMON_PICTURES      = 0x0036; // All Users\My Pictures
		public const int CSIDL_COMMON_VIDEO         = 0x0037; // All Users\My Video
		public const int CSIDL_RESOURCES            = 0x0038;
		public const int CSIDL_RESOURCES_LOCALIZED  = 0x0039;
		public const int CSIDL_FLAG_CREATE          = 0x8000; // new for Win2K, or this in to force creation of folder
		public const int CSIDL_COMMON_ADMINTOOLS    = 0x002f; // All Users\Start Menu\Programs\Administrative Tools
		public const int CSIDL_ADMINTOOLS           = 0x0030; // <user name>\Start Menu\Programs\Administrative Tools
		public const int SHGFP_TYPE_CURRENT         = 0;      // current value for user, verify it exists
		public const int SHGFP_TYPE_DEFAULT         = 1;      // default value, may not exist

		[Import("shell32.lib"), CLink, StdCall]
		public static extern int32 SHGetFolderPathA(Windows.HWnd hwnd, int csidl, Windows.Handle hToken, uint32 dwFlags, char8* pszPath);

		[Import("shell32.lib"), CLink, StdCall]
		public static extern int32 SHGetKnownFolderPath(TGuid rfid, uint32 dwFlags, Windows.Handle hToken, ref char16* pszPath);

		[Import("ole32.lib"), CLink, StdCall]
		public static extern void CoTaskMemFree(void* pv);

		private static mixin GetKnownDir(int csidl, String outStr)
		{
			char8* lstr = scope .[261]*; // MAX_PATH

			if (SHGetFolderPathA(0, csidl, 0, 0, lstr) == 0) // S_OK = 0
				outStr.Append(lstr);
		}

		private static mixin GetKnownDir(TGuid rfid, String outStr)
		{
			char16* lstr = ?;

			if (SHGetKnownFolderPath(rfid, KF_FLAG_CREATE, 0, ref lstr) == 0) // S_OK = 0
				UTF16.Decode(lstr, outStr);

			CoTaskMemFree(lstr);
		}

		public static void GetAppData(String outStr)
		{
			if (Environment.OSVersion.Version.Major > 5) { // Any OS version higher then XP
				GetKnownDir!(FOLDERID_RoamingAppData, outStr);
			} else {
				GetKnownDir!(CSIDL_APPDATA, outStr);
			}
		}

		public static void GetLocalAppData(String outStr)
		{
			if (Environment.OSVersion.Version.Major > 5) { // Any OS version higher then XP
				GetKnownDir!(FOLDERID_LocalAppData, outStr);
			} else {
				GetKnownDir!(CSIDL_LOCAL_APPDATA, outStr);
			}
		}

		public static void GetProgramFiles(String outStr)
		{
			if (Environment.OSVersion.Version.Major > 5) { // Any OS version higher then XP
				GetKnownDir!(FOLDERID_ProgramFiles, outStr);
			} else {
				GetKnownDir!(CSIDL_PROGRAM_FILES, outStr);
			}
		}
	}
}
