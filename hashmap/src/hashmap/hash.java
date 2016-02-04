package hashmap;
import java.util.*;

public class hash {
	public static void main(String[] args){
	Map<Integer,String> hm=new HashMap<Integer,String>();
	hm.put(1,"Sri");
	hm.put(2,"lekha");
	hm.put(4, "germ");
	hm.put(8, "p");
	List<Integer> al=new ArrayList<Integer>();
	Iterator<Integer> itr=hm.keySet().iterator();
	while(itr.hasNext()){
		int a=itr.next();
		if(a%4!=0){
			al.add(a);
		}
	}
	System.out.println(al.size());
	for(int b:al){
		System.out.println(b);
	}
	
}
}