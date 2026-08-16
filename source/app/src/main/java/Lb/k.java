package Lb;

import Ic.L;
import Ic.z;
import Mb.b;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import gb.C13317e;
import id.C13696a;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public class k {

    public class a implements L {

        public final Component.e f11683a;

        public a(final Component.e val$type) {
            this.f11683a = val$type;
        }

        @Override
        public Object a(int index) {
            return null;
        }

        @Override
        public Object b(Object o10, int index) {
            GameObject gameObject = (GameObject) o10;
            if (C13317e.C(gameObject, this.f11683a)) {
                return gameObject;
            }
            GameObject g10 = k.g(this.f11683a, gameObject);
            if (g10 != null) {
                return g10;
            }
            return null;
        }
    }

    public class b implements L {

        public final Component.e f11684a;

        public b(final Component.e val$type) {
            this.f11684a = val$type;
        }

        @Override
        public Object a(int index) {
            return null;
        }

        @Override
        public Object b(Object o10, int index) {
            GameObject gameObject = (GameObject) o10;
            if (C13317e.C(gameObject, this.f11684a)) {
                return gameObject;
            }
            GameObject g10 = k.g(this.f11684a, gameObject);
            if (g10 != null) {
                return g10;
            }
            return null;
        }
    }

    public class c implements L {

        public final Component.e f11685a;

        public c(final Component.e val$type) {
            this.f11685a = val$type;
        }

        @Override
        public Object a(int index) {
            return null;
        }

        @Override
        public Object b(Object o10, int index) {
            GameObject gameObject = (GameObject) o10;
            if (!gameObject.isEnabled()) {
                return null;
            }
            if (C13317e.A(gameObject, this.f11685a)) {
                return gameObject;
            }
            GameObject e10 = k.e(this.f11685a, gameObject);
            if (e10 != null) {
                return e10;
            }
            return null;
        }
    }

    public class d implements L {

        public final Component.e f11686a;

        public d(final Component.e val$type) {
            this.f11686a = val$type;
        }

        @Override
        public Object a(int index) {
            return null;
        }

        @Override
        public Object b(Object o10, int index) {
            GameObject gameObject = (GameObject) o10;
            if (!gameObject.isEnabled()) {
                return null;
            }
            if (C13317e.A(gameObject, this.f11686a)) {
                return gameObject;
            }
            GameObject e10 = k.e(this.f11686a, gameObject);
            if (e10 != null) {
                return e10;
            }
            return null;
        }
    }

    public static void a(Context context) {
        C13696a.g(new File(k(true)));
    }

    public static void b(Context context, World world) {
        String l10 = l(true, world);
        if (l10 != null) {
            C13696a.g(new File(l10));
        }
    }

    public static Component c(String SGUID, World world) {
        Component w10;
        if (world == null || SGUID == null) {
            return null;
        }
        for (int i10 = 0; i10 < world.f80011b.size(); i10++) {
            GameObject gameObject = world.f80011b.get(i10);
            if (gameObject != null && (w10 = C13317e.w(gameObject, SGUID)) != null) {
                return w10;
            }
        }
        return null;
    }

    @Deprecated
    public static GameObject d(Component.e type) {
        List<GameObject> list;
        try {
            list = com.itsmagic.engine.Engines.Engine.World.a.f80030c.q();
        } catch (Exception e10) {
            e10.printStackTrace();
            list = null;
        }
        if (list != null) {
            return (GameObject) new z().d(list, new c(type));
        }
        return null;
    }

    @Deprecated
    public static GameObject e(Component.e type, GameObject parent) {
        List<GameObject> list;
        try {
            list = parent.z0();
        } catch (Exception e10) {
            e10.printStackTrace();
            list = null;
        }
        if (list != null) {
            return (GameObject) new z().d(list, new d(type));
        }
        return null;
    }

    @Deprecated
    public static GameObject f(Component.e type) {
        List<GameObject> list;
        try {
            list = com.itsmagic.engine.Engines.Engine.World.a.f80030c.q();
        } catch (Exception e10) {
            e10.printStackTrace();
            list = null;
        }
        if (list != null) {
            return (GameObject) new z().d(list, new a(type));
        }
        return null;
    }

    @Deprecated
    public static GameObject g(Component.e type, GameObject parent) {
        List<GameObject> list;
        try {
            list = parent.z0();
        } catch (Exception e10) {
            e10.printStackTrace();
            list = null;
        }
        if (list != null) {
            return (GameObject) new z().d(list, new b(type));
        }
        return null;
    }

    public static GameObject h(String SGUID, World world) {
        if (world == null || SGUID == null) {
            return null;
        }
        for (int i10 = 0; i10 < world.f80011b.size(); i10++) {
            GameObject gameObject = world.f80011b.get(i10);
            if (gameObject != null) {
                if (gameObject.getGuid().i(SGUID)) {
                    return gameObject;
                }
                GameObject v10 = C13317e.v(gameObject, SGUID);
                if (v10 != null) {
                    return v10;
                }
            }
        }
        return null;
    }

    public static void i(World world) {
        if (world != null) {
            Iterator<GameObject> it = world.q().iterator();
            while (it.hasNext()) {
                C13317e.x(it.next());
            }
        }
    }

    public static String j() {
        String str;
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world == null) {
            return "WorldMetaError.error";
        }
        if (world.fileName.contains(".")) {
            String str2 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.fileName;
            str = str2.substring(0, str2.indexOf("."));
        } else {
            str = com.itsmagic.engine.Engines.Engine.World.a.f80030c.fileName;
        }
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        String str3 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.folder + "/" + str + ".meta";
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str3));
        if (!file.exists()) {
            file.mkdir();
        }
        return Tc.b.o(str3);
    }

    public static String k(boolean fullpath) {
        World world;
        String str;
        if (W7.b.f27304d == null || (world = com.itsmagic.engine.Engines.Engine.World.a.f80030c) == null) {
            return "WorldMetaError.error";
        }
        if (world.fileName.contains(".")) {
            String str2 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.fileName;
            str = str2.substring(0, str2.indexOf("."));
        } else {
            str = com.itsmagic.engine.Engines.Engine.World.a.f80030c.fileName;
        }
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        if (!fullpath) {
            return com.itsmagic.engine.Engines.Engine.World.a.f80030c.folder + "/" + str + ".meta";
        }
        return Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + com.itsmagic.engine.Engines.Engine.World.a.f80030c.folder + "/" + str + ".meta");
    }

    public static String l(boolean fullpath, World world) {
        String str;
        String str2;
        String str3;
        if (world == null || (str = world.fileName) == null || str.isEmpty() || (str2 = world.folder) == null || str2.isEmpty()) {
            return null;
        }
        if (world.fileName.contains(".")) {
            String str4 = world.fileName;
            str3 = str4.substring(0, str4.indexOf("."));
        } else {
            str3 = world.fileName;
        }
        if (str3.startsWith("/")) {
            str3 = str3.substring(1);
        }
        if (!fullpath) {
            return world.folder + "/" + str3 + ".meta";
        }
        return Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + world.folder + "/" + str3 + ".meta");
    }

    public static SteppedArrayList m(Class classReference) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            Iterator<GameObject> it = com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.iterator();
            while (it.hasNext()) {
                o(classReference, it.next(), steppedArrayList);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return steppedArrayList;
    }

    public static SteppedArrayList n(String tittle) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            Iterator<GameObject> it = com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.iterator();
            while (it.hasNext()) {
                p(tittle, it.next(), steppedArrayList);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return steppedArrayList;
    }

    public static void o(Class classReference, GameObject parent, SteppedArrayList list) {
        Iterator<JAVARuntime.Component> it = parent.p0(classReference).iterator();
        while (it.hasNext()) {
            list.add(it.next());
        }
        Iterator<GameObject> it2 = parent.z0().iterator();
        while (it2.hasNext()) {
            o(classReference, it2.next(), list);
        }
    }

    public static void p(String tittle, GameObject parent, SteppedArrayList list) {
        for (Component component : parent.q0(tittle)) {
            if (component.getType() != Component.e.JavaComponent) {
                list.add(component.toJAVARuntime());
            } else {
                try {
                    list.add(((JavaComponent) component).getRuntimeComponent());
                } catch (Exception unused) {
                }
            }
        }
        Iterator<GameObject> it = parent.z0().iterator();
        while (it.hasNext()) {
            p(tittle, it.next(), list);
        }
    }

    public static void q(String gameObjectName, String inProjectDirectory) {
        com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(new Mb.b(inProjectDirectory, gameObjectName, b.a.OBJ)));
    }

    public static Mb.b r(File file) {
        Mb.b bVar = new Mb.b(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), Tc.b.w(file.getName(), true), b.a.PREFAB);
        com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(bVar));
        return bVar;
    }

    public static Mb.b s(String gameObjectName, String inProjectDirectory) {
        Mb.b bVar = new Mb.b(inProjectDirectory, gameObjectName, b.a.PREFAB);
        com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(bVar));
        return bVar;
    }

    public static Mb.b t(String gameObjectName, String inProjectDirectory, GameObject parent) {
        Mb.b bVar = new Mb.b(inProjectDirectory, gameObjectName, b.a.PREFAB);
        Mb.a aVar = new Mb.a(bVar);
        aVar.f14841b = parent;
        com.itsmagic.engine.Engines.Engine.World.b.d(aVar);
        return bVar;
    }

    public static void u(String gameObjectName, String inProjectDirectory, Vector3 position) {
        com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(new Mb.b(inProjectDirectory, gameObjectName, b.a.PREFAB)));
    }

    public static void v() {
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world != null) {
            List<GameObject> list = world.f80011b;
            for (int i10 = 0; i10 < list.size(); i10++) {
                GameObject gameObject = (GameObject) Mc.e.a(i10, list);
                if (gameObject != null) {
                    w(gameObject);
                }
            }
        }
    }

    public static void w(GameObject object) {
        for (int i10 = 0; i10 < object.N(); i10++) {
            Component L10 = object.L(i10);
            if (L10 != null && L10.getType() == Component.e.JavaComponent) {
                ((JavaComponent) L10).reload();
            }
        }
        List<GameObject> z02 = object.z0();
        for (int i11 = 0; i11 < z02.size(); i11++) {
            GameObject gameObject = (GameObject) Mc.e.a(i11, z02);
            if (gameObject != null) {
                w(gameObject);
            }
        }
    }
}
