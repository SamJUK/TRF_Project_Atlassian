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
  class Shops2
  {
    file = "shopV2";
		class Store2AddBasket{};
		class Store2RemoveBasket{};
		class Store2Category{};
		class Store2OpenStore {};
		class Store2Fill {};
		class Store2Choose {};
		class Store2Filter {};
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
    class find_class_name{};
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
  class Cameras
  {
    file = "core\Cameras";
    class UseCameras{};
    class OpenCameras{};
    class switchCamera{};
    class leaveCameras{};
    class CameraKeyhandler{};
  };
  class HeadCameras
  {
    file = "core\Cameras\headCams";
    class takeHeadCam{};
    class returnHeadCam{};
    class UseHeadCameras{};
    class OpenHeadCameras{};
    class switchHeadCameras{};
    class leaveHeadCameras{};
    class HeadCameraKeyHandler{};
  };
};
