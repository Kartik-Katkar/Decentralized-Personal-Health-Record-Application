pragma solidity >=0.4.22 <0.7.0;
/**
 * @title Hospital Registration
 * @dev Store & retreive Hospital details 
 */
 
contract Hospital  {
    
     
      mapping(uint256 => hospital) hospitallist;
      
    
     struct hospital{
         string hospital_name;
         string hospital_address;
         string hospital_spec;
     }
     hospital h;
     
     address owner;
     
      
    
      constructor() public {
          owner = msg.sender;
      }
      
      
      // modifier to give access only to hospital
      modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
      
     
     
    
    
     /**
     * @dev Store hospital details
     * @param hospital_id hospital registration id
     * @param _hospital_name name of hospital
     * @param _hospital_spec hospital specialisation
     * @param _hospital_address hospital address
     * */
     function store_doctor_details(uint256 hospital_id,string memory _hospital_name,string memory _hospital_address,string memory _hospital_spec)public isOwner {
        
         h.hospital_name = _hospital_name;
         h.hospital_address = _hospital_address;
         h.hospital_spec = _hospital_spec;
         
         
        hospitallist[hospital_id] = h;
        
        
         }
         
        
           /**
     * @dev Retreive hospital details
     * @param hospital_id hospital registration id
     * */
         function retreive_hospital_details(uint256 hospital_id) public view returns (string memory,string memory,string memory){
             
     hospital memory h = hospitallist[hospital_id];
     
     return (h.hospital_name,h.hospital_address,h.hospital_spec);
     
          }
          
          
          
}