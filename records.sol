pragma solidity >=0.4.22 <0.7.0;
/**
 * @title Medical records
 * @dev Store & retreive patient details in Medicalrecords
 */
 import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
 
contract Records is ERC721 {
    mapping(uint256 => insurance) insurancelist;
     mapping(uint256 => history) patienthistory;
     mapping(uint256 => past) pasthistory;
     mapping(uint256 => diag) diagnosis;
      mapping(uint256 => treat) treatment;
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
      
    
     struct insurance{
     uint256 patient_id;
     string applicable;
     uint64 policy_no;
     string insurer;
     string policy_type;
     string policy_limit;
     }
     insurance i;
     
     struct history{
     uint256 patient_id;
     string complaints;
     string duration;
     }
     history hi;
     struct past{
         uint256 patient_id;
     string family_history;
     string personal_history;
     string drug_history;
     }
     past pa;
     
    
struct diag{
    uint256 patient_id;
     string diag_summary;
     string prescription;
}
diag d;
struct treat{
     string treatment;
     string date_treatment;
      uint256 doctor_id;
     uint256 hospital_id;
     string discharge;
     string follow_up;
     }
     treat tr;
      address owner;
     
      /**
     * @dev Create the Token by Passing the Name and Symbol to the ERC721 Constructor
     */
      constructor() ERC721("AmritaMedicalCoin","AMC") public {
          
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
     * @dev Store insurance details
     * @param patient_id patient id
     * @param _applicable is applicable or not
     * @param _policy_no policy number
     * @param _insurer name of insurer
     * @param _policy_type type of policy
     * @param _policy_limit limit of policy
     */
      function insurance_details( uint256 patient_id,string memory _applicable,uint64 _policy_no,string memory _insurer,string memory _policy_type,string memory _policy_limit)public isOwner {
              
              
              i.applicable = _applicable;
              i.policy_no = _policy_no;
              i.insurer = _insurer;
              i.policy_type = _policy_type;
              i.policy_limit = _policy_limit;
              
              insurancelist[patient_id] = i;
              
          }
          
          
           
     /**
     * @dev Retreive insurance details
     * @param patient_id patient id
     * */
          function get_insurance(uint256 patient_id)public view returns (string memory,uint64,string memory,string memory,string memory){
              
             insurance memory i = insurancelist[patient_id];
             return (i.applicable, i.policy_no,i.insurer,i.policy_type,i.policy_limit);
          }
    
         
           /**
     * @dev Store present illness details
     * @param patient_id patient id
     * @param _complaints complaints
     * @param _duration duration of the complaint
     */
          function present_illness(uint256 patient_id,string memory _complaints,string memory _duration)public isOwner {
              
              hi.complaints = _complaints;
              hi.duration = _duration;
              
              patienthistory[patient_id] = hi;
          }
          
           /**
     * @dev Retreive present illness details
     * @param patient_id patient id
     * */
          function get_present_illness(uint256 patient_id)public view returns (string memory,string memory){
              
               history memory hi = patienthistory[patient_id];
               return (hi.complaints,hi.duration);
          }
           /**
     * @dev Store past illness details
     * @param patient_id patient id
     * @param _family_history history of family illness
     * @param _personal_history history of personal illness
     * @param _drug_history history of drug usage
     */
          function past_illness(uint256 patient_id,string memory _family_history,string memory _personal_history,string memory _drug_history)public isOwner {
              
              pa.family_history = _family_history;
              pa.personal_history = _personal_history;
              pa.drug_history = _drug_history;
              
              
              pasthistory[patient_id] = pa;
          }
          
           /**
     * @dev Retreive past illness details
     * @param patient_id patient id
     * */
          function get_past_illness(uint256 patient_id)public view returns (string memory,string memory,string memory){
              
               past memory pa = pasthistory[patient_id];
               return (pa.family_history,pa.personal_history,pa.drug_history);
          }
         
         
         
        /**
     * @dev Store functional diagnosis details
     * @param patient_id patient id
     * @param _diag_summary summary of diagnosis
     * @param _prescription prescription
     */
              function func_diagnosis(uint256 patient_id,string memory _diag_summary,string memory _prescription)public isOwner {
              
              
              d.diag_summary = _diag_summary;
              d.prescription = _prescription;
              
              
              diagnosis[patient_id] = d;
              
          }
          
           /**
     * @dev Retreive functional diagnosis details
     * @param patient_id patient id
     * */
          function get_func_diagnosis(uint256 patient_id)public view returns (string memory,string memory){
              
               diag memory d = diagnosis[patient_id];
              
              return (  d.diag_summary,d.prescription);    
              
              }
               /**
               * @dev Store treatment summary details
               * @param patient_id patient patient id
               * @param _treatment treatment
               * @param _date_treatment date of treatment
               * @param _doctor_id id of doctor treated
               * @param _hospital_id id of hospital
               * @param _discharge date of discharge
               * @param _follow_up date for follow up
               * */
              function treatment_summary(uint256 patient_id,string memory _treatment,string memory _date_treatment,uint256 _doctor_id,uint256 _hospital_id,string memory _discharge,string memory _follow_up)public isOwner {
              
              
              tr.treatment = _treatment;
              tr.date_treatment = _date_treatment;
              tr.doctor_id = _doctor_id;
              tr.hospital_id = _hospital_id;
              tr.discharge = _discharge;
              tr.follow_up = _follow_up;
              
              
              treatment[patient_id] = tr;
              
          }
          
           /**
     * @dev Retreive treatment summary details
     * @param patient_id patient id
     * */
          function get_treatment_summary(uint256 patient_id)public view returns (string memory,string memory,uint256,uint256,string memory,string memory){
              
               treat memory tr = treatment[patient_id];
              
              return (tr.treatment,tr.date_treatment,tr.doctor_id,tr.hospital_id,tr.discharge,tr.follow_up);    
              
              }
}