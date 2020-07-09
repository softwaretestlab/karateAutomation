package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
//    @Karate.Test
//    Karate testUsers() {
//        return Karate.run("FF01_GetCall").relativeTo(getClass());
//    }    
	
//	 @Karate.Test
//	    Karate testTags() {
//	        return Karate.run().tags("@softwaretestlab").relativeTo(getClass());
//	    }
	 
//	 @Karate.Test
//	    Karate testFullPath() {
//		 return Karate.run("classpath:examples/users/FF01_GetCall.feature").tags("@first");
//	    }

	
	 @Karate.Test
	    Karate testAll() {
	        return Karate.run().relativeTo(getClass());
	    }   

}
