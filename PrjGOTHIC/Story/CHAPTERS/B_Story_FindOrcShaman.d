
func void B_Story_FindOrcShaman()
{
	B_LogEntry(CH4_FindXardas,"� �������-�� ����� ��������. �� ���� ������� ������ �� ������ ���, ��� � �����������. ��� ���������� �� ���������� ������ ����, �� ��� � ������ �� ������� ������ ������. �� ��������� � ��� �������. ���������, ��� �������� �� ���� �������?");
	Log_CreateTopic(CH4_FindOrcShaman,LOG_MISSION);
	Log_SetTopicStatus(CH4_FindOrcShaman,LOG_RUNNING);
	B_LogEntry(CH4_FindOrcShaman,"������� ����� ����� ���� ��������. �� �����, ����� � ����� ������ �� �����-�������, ������� �������� � ������ �����, � ����� � ���� ���, ��� �������� �������. ����� ��������� �� ������� ���� � ������� �� ����� ��������. ��� ��� �� ������ �������, ��� � ����� ���������� � �����, ��, �����, ����� � ����� ��� ��������.");
	Wld_InsertNpc(ORC_2200_Shaman,"CASTLE_06");
	Wld_InsertNpc(OrcWarrior4,"CASTLE_07");
	Wld_InsertNpc(OrcWarrior4,"CASTLE_07");
	Wld_InsertNpc(OrcWarrior4,"CASTLE_07");
	Wld_InsertNpc(StoneGolem,"CASTLE_04");
	FindOrcShaman = LOG_RUNNING;
};

