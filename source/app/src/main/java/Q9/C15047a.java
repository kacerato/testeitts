package q9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GUID;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class C15047a {
    public static void a(Vector3 sideMultiplayer, GameObject parent, String prefix) {
        GameObject gameObject = new GameObject(prefix + "Arm", new Transform(new Vector3(0.2682f, -0.03167f, 0.0219f).mul(sideMultiplayer)), new SkinJoint(), new GUID(prefix + "Arm"));
        parent.z0().add(gameObject);
        GameObject gameObject2 = new GameObject(prefix + "Forearm", new Transform(new Vector3(0.2957f, 0.0206f, 0.02121f).mul(sideMultiplayer)), new SkinJoint(), new GUID(prefix + "Forearm"));
        gameObject.z0().add(gameObject2);
        gameObject2.z0().add(new GameObject(prefix + "Wrist", new Transform(new Vector3(0.36086f, 0.0031f, 0.0f).mul(sideMultiplayer)), new SkinJoint(), new GUID(prefix + "Wrist")));
    }

    public static void b(Vector3 sideMultiplayer, GameObject parent, String prefix) {
        GameObject gameObject = new GameObject(prefix + "Thigh", new Transform(new Vector3(0.1058f, -0.0878f, -0.0123f).mul(sideMultiplayer)), new SkinJoint(), new GUID(prefix + "Thigh"));
        parent.z0().add(gameObject);
        GameObject gameObject2 = new GameObject(prefix + "Knee", new Transform(new Vector3(0.0082f, -0.3072f, 0.0131f).mul(sideMultiplayer)), new SkinJoint(), new GUID(prefix + "Knee"));
        gameObject.z0().add(gameObject2);
        gameObject2.z0().add(new GameObject(prefix + "Ankle", new Transform(new Vector3(0.0243f, -0.7303f, -0.0844f).mul(sideMultiplayer)), new SkinJoint(), new GUID(prefix + "Ankle")));
    }

    public static GameObject c() {
        GameObject gameObject = new GameObject("HumanSkeleton", new Transform(), new SkinJoint(), new GUID("HumanSkeleton"));
        GameObject gameObject2 = new GameObject("Thorax", new Transform(new Vector3(0.0f, 0.3456f, 0.0f)), new SkinJoint(), new GUID("Thorax"));
        GameObject gameObject3 = new GameObject("Abdomen", new Transform(new Vector3(0.0f, -0.2578f, 0.0f)), new SkinJoint(), new GUID("Abdomen"));
        gameObject.z0().add(gameObject2);
        gameObject.z0().add(gameObject3);
        b(new Vector3(1.0f), gameObject3, "Left ");
        b(new Vector3(-1.0f, 1.0f, 1.0f), gameObject3, "Right ");
        GameObject gameObject4 = new GameObject("UpperThorax", new Transform(new Vector3(0.0f, 0.0797f, 0.0f)), new SkinJoint(), new GUID("UpperThorax"));
        gameObject2.z0().add(gameObject4);
        GameObject gameObject5 = new GameObject("Neck", new Transform(new Vector3(0.0f, 0.1423f, 0.0f)), new SkinJoint(), new GUID("Neck"));
        gameObject4.z0().add(gameObject5);
        gameObject5.z0().add(new GameObject("Head", new Transform(new Vector3(0.0f, 0.0572f, 0.0f)), new SkinJoint(), new GUID("Head")));
        a(new Vector3(1.0f), gameObject4, "Left ");
        a(new Vector3(-1.0f, 1.0f, 1.0f), gameObject4, "Right ");
        return gameObject;
    }
}
