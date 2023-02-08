pragma solidity >=0.4.22 <0.7.0;
/**
 * @title Medical records
 * @dev Store & retreive patient details in Medicalrecords
 */
 import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
 
contract Body_Examine is ERC721 {
    mapping(uint256 => tests) patienttests;
    mapping(uint256 => scan) scantests;
    mapping(uint256 => system) systemexamine;
    mapping(uint256 => prev) prevdates;
     mapping(uint256 => patient) patientlist;
    
     struct patient{
     uint256 patient_id;
     }
     patient p; 
      struct prev{
          uint256 patient_id;
          string previous;
      }
      prev pr;
    
     struct tests{
     uint256 patient_id;    
     string blood_test;
     string urine_test;
     string ecg;
     string mri_scan;
     string ct_scan;
     string xray;
     string lab_test;
}
tests t;
struct scan{
    uint256 patient_id;
     string built;
     string nouirishment;
     string eyes;
     string tongue;
     uint64 pulse;
     uint64 temp;
     string blood_pressure;
     uint64 respiratory_rate;
}
scan s;
struct system{
    uint256 patient_id;
     string cns;
     string cvs;
     string rs;
     string abdomen;
}
system sys;
     
      address owner;
     
      /**
     * @dev Create the Token by Passing the Name and Symbol to the ERC721 Constructor
     */
      constructor() ERC721("MedicalCoin","MEDC") public {
          owner = 0x34d8bC94989BbE14BCfd98E0550201ba4970B776; //Address of Doctor
      }
      
      // modifier to give access only to doctor
      modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
        
        
        
      /**
     * @dev Function to display name of the token 
    */
    
     function namedecl() public view  returns (string memory) {
         //calling the Built-in function in ERC721
        return name();
    }
    
    
    /**
     * @dev Function to display symbol of the token 
    */
     function symboldecl() public view  returns (string memory) {
         //calling the Built-in function in ERC721
        return symbol();
    }
    
    
    
     /**
     * @dev Function to display total count of the token 
    */
    
     function totalSupplycount() public view  returns (uint256) {
         //calling the Built-in function in ERC721
        return totalSupply();
     }
     
     
      
     /**
     * @dev Function to mint token of medical record
     *  @param patient_id patient id
    */
     function medical_record(uint256 patient_id)public{
       //Calling the Built-in function in ERC721
        _mint(msg.sender,patient_id);
        
        
        patientlist[patient_id] = p;
         }
     
     
     
        
         /**
     * @dev Store previous dates of records updated
     * @param patient_id patient id
     * @param _previous previous dates of records updated
     */
     function previous_dates(uint256 patient_id,string memory _previous)public isOwner {
         pr.previous = _previous;
         
         prevdates[patient_id] = pr;
     }
     
     
     /**
     * @dev Retreive previous dates of records updated
     * @param patient_id patient id
     * */
     function get_previous_dates(uint256 patient_id)public view returns (string memory){
         prev memory pr = prevdates[patient_id];
         return (pr.previous);
     } 
         /**
     * @dev Store investigations details
     * @param patient_id patient id
     * @param _blood_test blood test result
     * @param _urine_test urine test result
     * @param _ecg ecg result
     * @param _mri_scan mri scan report
     * @param _ct_scan ct scan report
     * @param _xray xray
     * @param _lab_test any other lab test
     * */
         
          function investigations(uint256 patient_id,string memory _blood_test,string memory _urine_test,string memory _ecg,string memory _mri_scan,string memory _ct_scan,string memory _xray,string memory _lab_test)public isOwner {
              
              
              t.blood_test = _blood_test;
              t.urine_test = _urine_test;
              t.ecg = _ecg;
              t.mri_scan = _mri_scan;
              t.ct_scan = _ct_scan;
              t.xray = _xray;
              t.lab_test = _lab_test;
              
              
              patienttests[patient_id] = t;
              
          }
          
          /**
     * @dev Retreive investigations details
     * @param patient_id patient id
     * */
          
          function get_investigations(uint256 patient_id)public view returns (string memory,string memory,string memory,string memory,string memory,string memory,string memory){
              
             tests memory t = patienttests[patient_id];
              
              return ( t.blood_test,t.urine_test,t.ecg,t.mri_scan,t.ct_scan, t.xray,t.lab_test);    
              
              }
              
              /**
     * @dev Store general examination details
     * @param patient_id patient id
     * @param _built built of patient
     * @param _nouirishment nouirishment
     * @param _eyes eyes examination
     * @param _tongue tongue examination
     * @param _pulse pulse rate
     * @param _blood_pressure blood pressure
     * @param _temp temperature 
     * @param _respiratory_rate respiratory rate
     */
               function general_examin(uint256 patient_id,string memory _built,string memory _nouirishment,string memory _eyes,string memory _tongue,uint64 _pulse,string memory _blood_pressure,uint64 _temp,uint64 _respiratory_rate)public isOwner {
              
              
              s.built = _built;
              s.nouirishment = _nouirishment;
              s.eyes = _eyes;
              s.tongue = _tongue;
              s.pulse = _pulse;
              s.blood_pressure = _blood_pressure;
              s.temp = _temp;
              s.respiratory_rate = _respiratory_rate;
              
              
              scantests[patient_id] = s;
              
          }
          
          /**
     * @dev Retreive general examination details
     * @param patient_id patient id
     * */
          function get_general_examin(uint256 patient_id)public view returns (string memory,string memory,string memory,string memory,uint64,string memory,uint64,uint64){
              
               scan memory s = scantests[patient_id];
              
              return ( s.built,s.nouirishment,s.eyes,s.tongue,s.pulse,s.blood_pressure,s.temp,s.respiratory_rate);    
              
              }
              
              /**
     * @dev Store systemic examination details
     * @param patient_id patient id
     * @param _cvs cardio vascular system
     * @param _cns central nervous system
     * @param _rs respiratory system
     * @param _abdomen abdomen system
     */
               function sys_examin(uint256 patient_id,string memory _cvs,string memory _cns,string memory _rs,string memory _abdomen)public isOwner {
              
              
              sys.cvs = _cvs;
              sys.cns = _cns;
              sys.rs = _rs;
              sys.abdomen = _abdomen;
              
              
              systemexamine[patient_id] = sys;
              
          }
          
          /**
     * @dev Retreive system examination details
     * @param patient_id patient id
     * */
          function get_sys_examin(uint256 patient_id)public view returns (string memory,string memory,string memory,string memory){
              
               system memory sys = systemexamine[patient_id];
              
              return (  sys.cvs,sys.cns,sys.rs,sys.abdomen);    
              
              }
              
             
             
}