package D8;

import N7.c;
import Vc.d;
import android.content.Context;
import android.os.Environment;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;

public class a {

    public static final String f4934t = "SelfIlumin/Simple";

    public static final String f4935u = "SelfIlumin/Transparent";

    public static final String f4936v = "SelfIlumin/DIF";

    public static final String f4937w = "SelfIlumin/DIF";

    public String f4938a;

    public String f4939b;

    public String f4940c = "_EDITOR";

    public boolean f4941d = false;

    public b f4942e;

    public b f4943f;

    public b f4944g;

    public b f4945h;

    public b f4946i;

    public b f4947j;

    public b f4948k;

    public b f4949l;

    public b f4950m;

    public b f4951n;

    public b f4952o;

    public b f4953p;

    public b f4954q;

    public b f4955r;

    public int f4956s;

    public a() {
        TextureConfig.c cVar = TextureConfig.c.Nearest;
        this.f4942e = new b("Editor/Gizmos/AxisCube/axiscube_v2.obj", true, f4934t, "@@ASSET@@/Editor/Gizmos/AxisCube/albedo_v2.png", new TextureConfig(false, cVar));
        this.f4943f = new b("@@ASSET@@Editor/Gizmos/Camera/model.obj", true, f4934t, "@@ASSET@@/Editor/Gizmos/Camera/texture.png");
        this.f4944g = new b("@@ASSET@@Editor/Gizmos/CenterOfMass/model.obj", true, f4934t, "@@ASSET@@/Editor/Gizmos/CenterOfMass/texture.png");
        this.f4945h = new b("@@ASSET@@Editor/Gizmos/Route/point.obj", true, f4935u, "@@ASSET@@/Editor/Gizmos/Route/texture.png", new TextureConfig(false, cVar));
        this.f4946i = new b("Editor/Gizmos/Laser/laser.obj", true, f4934t, new ColorINT(255, 0, 0));
        this.f4947j = new b("@@ASSET@@Editor/Gizmos/OutlinedModels/Sphere/model.obj", true, f4934t, "");
        this.f4948k = new b("@@ASSET@@Editor/Gizmos/OutlinedModels/Cube/model.obj", true, f4934t, "");
        this.f4949l = new b("Editor/Gizmos/Colliders/VehicleWheel/model.obj", true, f4935u, "@@ASSET@@/Editor/Gizmos/Colliders/VehicleWheel/texture.png", new TextureConfig(false, cVar));
        this.f4950m = new b("Editor/Gizmos/Canvas/square.obj", true, f4935u, "@@ASSET@@/Editor/Gizmos/Canvas/canvasTexture.png");
        this.f4951n = new b("@@ASSET@@Editor/Gizmos/SoundPlayer/model.obj", true, f4934t, "@@ASSET@@/Editor/Gizmos/SoundPlayer/texture.png");
        this.f4952o = new b("Editor/Gizmos/Microphone/model.obj", true, f4934t, "@@ASSET@@/Editor/Gizmos/Microphone/texture.png");
        this.f4953p = new b("Editor/Gizmos/Colliders/Sphere/sphere_lp.obj", true, f4935u, new ColorINT(8, 115, 255));
        this.f4954q = new b("Editor/Gizmos/SkeletonBone/point.obj", true, "SelfIlumin/DIF", new ColorINT(255, 242, 0));
        this.f4955r = new b("Editor/Gizmos/SkeletonBone/bone.obj", true, "SelfIlumin/DIF", new ColorINT(100, 255, 250, 101));
        this.f4956s = 500;
    }

    public String a() {
        return b(c.t());
    }

    public String b(Context context) {
        if (context != null) {
            this.f4938a = d.c(context) + "/ITsMagic";
        } else {
            J4.d.b2("Fatal error trying to get app name without activity context");
        }
        return this.f4938a;
    }

    public String c(Context context) {
        if (context != null) {
            this.f4938a = "/ITsMagic";
        } else {
            J4.d.b2("Fatal error trying to get app name without activity context");
        }
        return this.f4938a;
    }

    public String d() {
        return e(c.t());
    }

    public String e(Context context) {
        return b(context) + "/Backups";
    }

    public String f() {
        return g(c.t());
    }

    public String g(Context context) {
        if (context != null) {
            this.f4938a = d.c(context) + "/ITsMagic/cache";
        } else {
            J4.d.b2("Fatal error trying to get app name without activity context");
        }
        return this.f4938a;
    }

    public String h() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public String i(Context context) {
        return b(context) + "/ExportedPackages";
    }

    public String j() {
        return k(c.t());
    }

    public String k(Context context) {
        return b(context) + "/Languages";
    }

    public String l(Context context) {
        return b(context) + "/Plugins";
    }

    public String m() {
        return n(c.t());
    }

    public String n(Context context) {
        String str = b(context) + "/Projects";
        this.f4939b = str;
        return str;
    }

    public String o(Context context) {
        String str = c(context) + "/Projects";
        this.f4939b = str;
        return str;
    }

    public String p() {
        return q(c.t());
    }

    public String q(Context context) {
        return b(context) + "/Settings";
    }

    public String r() {
        return s(c.t());
    }

    public String s(Context context) {
        return b(context) + "/Themes";
    }
}
