import org.abstractica.javacsg.*;

public class Test
{
	public static void main(String[] args)
	{
		JavaCSG csg = JavaCSGFactory.createDefault();

		Geometry3D cross = csg.box3D(45,15,5,true);
		Geometry3D cross2 = csg.box3D(15,45,5,true);

		Geometry3D cross3 = csg.union3D(cross, cross2);

		csg.view(cross3);



	}
}
