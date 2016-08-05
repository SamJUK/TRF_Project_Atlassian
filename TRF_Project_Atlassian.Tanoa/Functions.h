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
};
