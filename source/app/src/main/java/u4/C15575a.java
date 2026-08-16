package u4;

import com.itsmagic.engine.Engines.Engine.Animation.d;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.Utils.SBoneTransform;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class C15575a {

    public static d f118378a;

    public static AnimationPlayer f118379b;

    public static final List<b> f118380c = new LinkedList();

    public static GameObject f118381d;

    public static void a() {
        try {
            AnimationPlayer animationPlayer = f118379b;
            if (animationPlayer != null && !C13317e.G(animationPlayer.f79250n)) {
                d dVar = f118378a;
                if (dVar != null) {
                    dVar.stop();
                }
                f(f118379b.f79250n);
                f118379b.saveAnimations();
                f118379b = null;
                f118378a = null;
                f118380c.clear();
                com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.d2();
            }
        } finally {
            f118380c.clear();
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.d2();
        }
    }

    public static void b(GameObject object) {
        f118380c.clear();
        if (C13317e.J(object)) {
            g(object);
        }
    }

    public static boolean c() {
        return f118379b != null;
    }

    public static void d(d animation, AnimationPlayer animationPlayer) {
        a();
        f118378a = animation;
        f118379b = animationPlayer;
        if (animationPlayer != null && C13317e.J(animationPlayer.f79250n)) {
            b(animationPlayer.f79250n);
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.P2(animation, animationPlayer, animationPlayer.f79250n);
        } else {
            f118380c.clear();
            f118379b = null;
            f118378a = null;
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.d2();
        }
    }

    public static void e(GameObject object) {
        b bVar;
        if (!C13317e.J(object) || object.transform == null) {
            return;
        }
        Iterator<b> it = f118380c.iterator();
        while (true) {
            if (!it.hasNext()) {
                bVar = null;
                break;
            } else {
                bVar = it.next();
                if (bVar.f118382a.equals(object.getGuid().j())) {
                    break;
                }
            }
        }
        if (bVar != null) {
            object.transform.p3(Vector3.clone(bVar.f118383b.f76392p));
            object.transform.x3(Quaternion.k(bVar.f118383b.f76393r));
            object.transform.setScale(Vector3.clone(bVar.f118383b.f76394s));
        }
        Iterator<GameObject> it2 = object.z0().iterator();
        while (it2.hasNext()) {
            e(it2.next());
        }
    }

    public static void f(GameObject object) {
        if (C13317e.J(object)) {
            e(object);
        }
        List<b> list = f118380c;
        if (list != null) {
            list.clear();
        }
    }

    public static void g(GameObject object) {
        if (!C13317e.J(object) || object.transform == null) {
            return;
        }
        f118380c.add(new b(object.getGuid().j(), new SBoneTransform(object.transform.Z0(), object.transform.h1(), object.transform.getScale())));
        Iterator<GameObject> it = object.z0().iterator();
        while (it.hasNext()) {
            g(it.next());
        }
    }
}
