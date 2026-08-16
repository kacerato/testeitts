package p000if;

import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.SkinningControl;
import com.jme3.animation.AnimControl;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.animation.SkeletonControl;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import jme3utilities.debug.h;

public final class C13722r {

    public static final Logger f92152a = Logger.getLogger(C13722r.class.getName());

    public static final Vector3f f92153b = new Vector3f(1.0f, 1.0f, 1.0f);

    public static final boolean f92154c = false;

    public static void A(Skeleton skeleton, boolean z10) {
        int boneCount = skeleton.getBoneCount();
        for (int i10 = 0; i10 < boneCount; i10++) {
            skeleton.getBone(i10).setUserControl(z10);
        }
    }

    public static void B(Spatial spatial, boolean z10) {
        C13702E.t(spatial, "spatial");
        Iterator<Skeleton> it = t(spatial, null).iterator();
        while (it.hasNext()) {
            A(it.next(), z10);
        }
    }

    public static void a(Bone bone, List<Bone> list) {
        list.add(bone);
        Iterator<Bone> it = bone.getChildren().iterator();
        while (it.hasNext()) {
            a(it.next(), list);
        }
    }

    public static void b(Joint joint, List<Joint> list) {
        list.add(joint);
        Iterator<Joint> it = joint.getChildren().iterator();
        while (it.hasNext()) {
            b(it.next(), list);
        }
    }

    public static void c(Joint joint) {
        try {
            Field declaredField = Joint.class.getDeclaredField("attachedNode");
            declaredField.setAccessible(true);
            try {
                declaredField.set(joint, null);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static void d(Bone bone) {
        try {
            Field declaredField = Bone.class.getDeclaredField("attachNode");
            declaredField.setAccessible(true);
            try {
                declaredField.set(bone, null);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static Transform e(Bone bone, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        transform.setTranslation(bone.getBindPosition());
        transform.setRotation(bone.getBindRotation());
        Vector3f bindScale = bone.getBindScale();
        if (bindScale == null) {
            bindScale = f92153b;
        }
        transform.setScale(bindScale);
        return transform;
    }

    public static Transform f(Bone bone, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        transform.setTranslation(bone.getLocalPosition());
        transform.setRotation(bone.getLocalRotation());
        transform.setScale(bone.getLocalScale());
        return transform;
    }

    public static Transform g(Bone bone, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        transform.setTranslation(bone.getModelSpacePosition());
        transform.setRotation(bone.getModelSpaceRotation());
        transform.setScale(bone.getModelSpaceScale());
        return transform;
    }

    public static int h(Skeleton skeleton) {
        int boneCount = skeleton.getBoneCount();
        int i10 = 0;
        for (int i11 = 0; i11 < boneCount; i11++) {
            if (skeleton.getBone(i11).getChildren().isEmpty()) {
                i10++;
            }
        }
        return i10;
    }

    public static int i(Skeleton skeleton) {
        return skeleton.getRoots().length;
    }

    public static int j(Armature armature) {
        return armature.getRoots().length;
    }

    public static boolean k(int i10, int i11, Skeleton skeleton) {
        C13702E.q(i10, "bone index");
        C13702E.q(i11, "ancestor index");
        Bone bone = skeleton.getBone(i10);
        Bone bone2 = skeleton.getBone(i11);
        while (bone != null) {
            bone = bone.getParent();
            if (bone == bone2) {
                return true;
            }
        }
        return false;
    }

    public static Bone l(Spatial spatial, String str) {
        C13702E.t(spatial, "spatial");
        C13702E.t(str, "bone name");
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Skeleton e10 = C13718n.e(spatial.getControl(i10));
            if (e10 != null) {
                return e10.getBone(str);
            }
        }
        return null;
    }

    public static Skeleton m(Spatial spatial) {
        SkeletonControl skeletonControl;
        AnimControl animControl = (AnimControl) spatial.getControl(AnimControl.class);
        Skeleton skeleton = animControl != null ? animControl.getSkeleton() : null;
        return (skeleton != null || (skeletonControl = (SkeletonControl) spatial.getControl(SkeletonControl.class)) == null) ? skeleton : skeletonControl.getSkeleton();
    }

    public static Node n(Joint joint) {
        try {
            Field declaredField = Joint.class.getDeclaredField("attachedNode");
            declaredField.setAccessible(true);
            try {
                return (Node) declaredField.get(joint);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static Node o(Bone bone) {
        try {
            Field declaredField = Bone.class.getDeclaredField("attachNode");
            declaredField.setAccessible(true);
            try {
                return (Node) declaredField.get(bone);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static Geometry p(Joint joint) {
        try {
            Field declaredField = Joint.class.getDeclaredField("targetGeometry");
            declaredField.setAccessible(true);
            try {
                return (Geometry) declaredField.get(joint);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static List<Armature> q(Spatial spatial, List<Armature> list) {
        Armature armature;
        C13702E.t(spatial, "subtree");
        if (list == null) {
            list = new ArrayList<>(4);
        }
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Control control = spatial.getControl(i10);
            if ((control instanceof SkinningControl) && (armature = ((SkinningControl) control).getArmature()) != null && !list.contains(armature)) {
                list.add(armature);
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                q(it.next(), list);
            }
        }
        return list;
    }

    public static List<String> r(Skeleton skeleton, List<String> list) {
        String name;
        int boneCount = skeleton.getBoneCount();
        if (list == null) {
            list = new ArrayList<>(boneCount);
        }
        for (int i10 = 0; i10 < boneCount; i10++) {
            Bone bone = skeleton.getBone(i10);
            if (bone != null && (name = bone.getName()) != null && !list.contains(name)) {
                list.add(name);
            }
        }
        return list;
    }

    public static List<String> s(Spatial spatial) {
        ArrayList arrayList = new ArrayList(80);
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Skeleton e10 = C13718n.e(spatial.getControl(i10));
            if (e10 != null) {
                r(e10, arrayList);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List<Skeleton> t(Spatial spatial, List<Skeleton> list) {
        C13702E.t(spatial, "subtree");
        if (list == null) {
            list = new ArrayList<>(4);
        }
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Skeleton e10 = C13718n.e(spatial.getControl(i10));
            if (e10 != null && !list.contains(e10)) {
                list.add(e10);
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                t(it.next(), list);
            }
        }
        return list;
    }

    public static Map<Bone, Spatial> u(Skeleton skeleton, Map<Bone, Spatial> map) {
        C13702E.t(skeleton, h.f94091E);
        if (map == null) {
            map = new HashMap<>(4);
        }
        int boneCount = skeleton.getBoneCount();
        for (int i10 = 0; i10 < boneCount; i10++) {
            Bone bone = skeleton.getBone(i10);
            Node o10 = o(bone);
            if (o10 != null) {
                if (!map.containsKey(bone)) {
                    map.put(bone, o10);
                } else if (map.get(bone) != o10) {
                    throw new IllegalArgumentException("bone " + C13724t.s(bone.getName()));
                }
            }
        }
        return map;
    }

    public static Map<Bone, Spatial> v(Spatial spatial, Map<Bone, Spatial> map) {
        C13702E.t(spatial, "subtree");
        if (map == null) {
            map = new HashMap<>(4);
        }
        Iterator it = C13723s.A(spatial, SkeletonControl.class, null).iterator();
        while (it.hasNext()) {
            u(((SkeletonControl) it.next()).getSkeleton(), map);
        }
        return map;
    }

    public static List<Bone> w(Skeleton skeleton) {
        ArrayList arrayList = new ArrayList(skeleton.getBoneCount());
        for (Bone bone : skeleton.getRoots()) {
            a(bone, arrayList);
        }
        return arrayList;
    }

    public static List<Joint> x(Armature armature) {
        ArrayList arrayList = new ArrayList(armature.getJointCount());
        for (Joint joint : armature.getRoots()) {
            b(joint, arrayList);
        }
        return arrayList;
    }

    public static void y(Bone bone, Transform transform) {
        boolean hasUserControl = bone.hasUserControl();
        if (!hasUserControl) {
            bone.setUserControl(true);
        }
        bone.setLocalTranslation(transform.getTranslation());
        bone.setLocalRotation(transform.getRotation());
        bone.setLocalScale(transform.getScale());
        if (hasUserControl) {
            return;
        }
        bone.setUserControl(false);
    }

    public static boolean z(Bone bone, String str) {
        try {
            Field declaredField = Bone.class.getDeclaredField("name");
            declaredField.setAccessible(true);
            declaredField.set(bone, str);
            Node o10 = o(bone);
            if (o10 != null) {
                o10.setName(str + "_attachnode");
            }
            return true;
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return false;
        }
    }
}
