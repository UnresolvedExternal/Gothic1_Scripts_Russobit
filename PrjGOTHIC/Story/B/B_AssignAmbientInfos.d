﻿
func void B_AssignAmbientInfos(var C_Npc amb_self)
{
	if((amb_self.npcType == npctype_ambient) || (amb_self.npcType == npctype_guard))
	{
		if(amb_self.guild == GIL_VLK)
		{
			if(amb_self.voice == 1)
			{
				B_AssignAmbientInfos_Vlk_1(amb_self);
			}
			else if(amb_self.voice == 2)
			{
				B_AssignAmbientInfos_Vlk_2(amb_self);
			}
			else if(amb_self.voice == 3)
			{
				B_AssignAmbientInfos_Vlk_3(amb_self);
			}
			else if(amb_self.voice == 4)
			{
				B_AssignAmbientInfos_Vlk_4(amb_self);
			};
		}
		else if(amb_self.guild == GIL_GRD)
		{
			if(amb_self.voice == 6)
			{
				B_AssignAmbientInfos_GRD_6(amb_self);
			}
			else if(amb_self.voice == 7)
			{
				B_AssignAmbientInfos_grd_7(amb_self);
			}
			else if(amb_self.voice == 13)
			{
				B_AssignAmbientInfos_grd_13(amb_self);
			};
		}
		else if(amb_self.guild == GIL_STT)
		{
			if(amb_self.voice == 10)
			{
				B_AssignAmbientInfos_Stt_10(amb_self);
			}
			else if(amb_self.voice == 12)
			{
				B_AssignAmbientInfos_Stt_12(amb_self);
			};
		}
		else if(amb_self.guild == GIL_SFB)
		{
			if(amb_self.voice == 1)
			{
				B_AssignAmbientInfos_SFB_1(amb_self);
			}
			else if(amb_self.voice == 2)
			{
				B_AssignAmbientInfos_SFB_2(amb_self);
			}
			else if(amb_self.voice == 5)
			{
				B_AssignAmbientInfos_SFB_5(amb_self);
			};
		}
		else if(amb_self.guild == GIL_NOV)
		{
			if(amb_self.voice == 2)
			{
				B_AssignAmbientInfos_Nov_2(amb_self);
			}
			else if(amb_self.voice == 3)
			{
				B_AssignAmbientInfos_Nov_3(amb_self);
			}
			else if(amb_self.voice == 5)
			{
				B_AssignAmbientInfos_Nov_5(amb_self);
			};
		}
		else if(amb_self.guild == GIL_TPL)
		{
			if(amb_self.voice == 8)
			{
				B_AssignAmbientInfos_Tpl_8(amb_self);
			}
			else if(amb_self.voice == 13)
			{
				B_AssignAmbientInfos_Tpl_13(amb_self);
			};
		}
		else if(amb_self.guild == GIL_BAU)
		{
			if(amb_self.voice == 2)
			{
				B_AssignAmbientInfos_Bau_2(amb_self);
			}
			else if(amb_self.voice == 4)
			{
				B_AssignAmbientInfos_Bau_4(amb_self);
			}
			else if(amb_self.voice == 9)
			{
				B_AssignAmbientInfos_Bau_9(amb_self);
			};
		}
		else if(amb_self.guild == GIL_ORG)
		{
			if(amb_self.voice == 6)
			{
				B_AssignAmbientInfos_Org_6(amb_self);
			}
			else if(amb_self.voice == 7)
			{
				B_AssignAmbientInfos_Org_7(amb_self);
			}
			else if(amb_self.voice == 13)
			{
				B_AssignAmbientInfos_Org_13(amb_self);
			};
		}
		else if(amb_self.guild == GIL_SLD)
		{
			if(amb_self.voice == 8)
			{
				B_AssignAmbientInfos_Sld_8(amb_self);
			}
			else if(amb_self.voice == 11)
			{
				B_AssignAmbientInfos_Sld_11(amb_self);
			};
		};
	};
	if((amb_self.npcType == Npctype_MINE_Ambient) || (amb_self.npcType == NpcType_MINE_Guard))
	{
		if(amb_self.guild == GIL_VLK)
		{
			if(amb_self.voice == 1)
			{
				B_AssignAmbientInfos_Mine_Vlk_1(amb_self);
			}
			else if(amb_self.voice == 2)
			{
				B_AssignAmbientInfos_Mine_Vlk_2(amb_self);
			}
			else if(amb_self.voice == 3)
			{
				B_AssignAmbientInfos_Mine_Vlk_3(amb_self);
			}
			else if(amb_self.voice == 4)
			{
				B_AssignAmbientInfos_Mine_Vlk_4(amb_self);
			};
		}
		else if(amb_self.guild == GIL_GRD)
		{
			if(amb_self.voice == 6)
			{
				B_AssignAmbientInfos_Mine_GRD_6(amb_self);
			}
			else if(amb_self.voice == 7)
			{
				B_AssignAmbientInfos_Mine_grd_7(amb_self);
			}
			else if(amb_self.voice == 13)
			{
				B_AssignAmbientInfos_Mine_grd_13(amb_self);
			};
		}
		else if(amb_self.guild == GIL_SLD)
		{
			if(amb_self.voice == 8)
			{
				B_AssignAmbientInfos_Mine_Sld_8(amb_self);
			}
			else if(amb_self.voice == 11)
			{
				B_AssignAmbientInfos_Mine_Sld_11(amb_self);
			};
		}
		else if(amb_self.guild == GIL_ORG)
		{
			if(amb_self.voice == 6)
			{
				B_AssignAmbientInfos_Mine_Org_6(amb_self);
			}
			else if(amb_self.voice == 7)
			{
				B_AssignAmbientInfos_Mine_Org_7(amb_self);
			}
			else if(amb_self.voice == 13)
			{
				B_AssignAmbientInfos_Mine_Org_13(amb_self);
			};
		};
	};
};

