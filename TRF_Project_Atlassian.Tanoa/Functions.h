class TRF_Framework
{
  tag = "TRF";
  class Shops
  {
    file = "shop";
		class LBChange {};
		class OpenShop {};
		class StoreChoose {};
  };
  class Missions
  {
    file = "Missions";
		class DeliveryMissions{};
    class Missions{};
    class MissionLBChange{};
    class MissionChoose{};
    class Missiondeliver{};
  };
  class Core
  {
    file = "core";
  };
  class Money
  {
    file = "core\money";
		class useATM{};
    class withdrawATM{};
    class depositATM{};
    class refreshATM{};
    class banktype{};
  };
  class RadioTowers
  {
    file = "core\radioTowers";
    class radioTowerRepair{};
    class radioTowersOpen{};
  };
  class AdminTools
  {
    file = "core\AdminTools";
    class openAdminTools{};
    class openAdmintoolsSpawn{};
    class populateCMDS{};
    class populatePlayerList{};
    class populateSpawnList{};
    class filterSpawn{};
    class VehicleSpawn{};
    class ATexec{};
  };
};
