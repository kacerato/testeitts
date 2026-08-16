package L8;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class c {

    public Ac.b f11639a;

    public Ac.b f11640b;

    public Ac.b f11641c;

    public String f11642d;

    public com.itsmagic.engine.Engines.Engine.Animation.c f11643e;

    public float f11644f = 1.0f;

    public int f11645g;

    public float f11646h;

    public int f11647i;

    public ColorINT f11648j;

    public Vector3 f11649k;

    public Vector2 f11650l;

    public Quaternion f11651m;

    public Square5I f11652n;

    public String f11653o;

    public String f11654p;

    public float f11655q;

    public boolean f11656r;

    public GameObject f11657s;

    public static Square5I T(c frame) {
        if (frame == null) {
            return null;
        }
        return frame.f11652n;
    }

    public static Vector2 U(c frame) {
        if (frame == null) {
            return null;
        }
        return frame.f11650l;
    }

    public static Vector3 V(c frame) {
        if (frame == null) {
            return null;
        }
        return frame.f11649k;
    }

    public static ColorINT a(c frame) {
        if (frame == null) {
            return null;
        }
        return frame.f11648j;
    }

    public static float b(c frame) {
        if (frame == null) {
            return 0.0f;
        }
        return frame.f11646h;
    }

    public static String t(c frame) {
        if (frame == null) {
            return null;
        }
        return frame.f11653o;
    }

    public static int u(c frame) {
        if (frame == null) {
            return 0;
        }
        return frame.f11647i;
    }

    public static Quaternion w(c frame) {
        if (frame == null) {
            return null;
        }
        return frame.f11651m;
    }

    public static void z(Object value, MiniJP mjp) {
        if (mjp != null) {
            mjp.release(value);
        } else {
            JP.release(value);
        }
    }

    public void A() {
        this.f11639a = null;
        this.f11640b = null;
        this.f11641c = null;
        this.f11642d = null;
        this.f11643e = null;
        this.f11644f = 1.0f;
        this.f11645g = 0;
        this.f11654p = null;
        this.f11655q = 0.0f;
        this.f11656r = false;
        this.f11646h = 0.0f;
        this.f11647i = 0;
        this.f11648j = null;
        this.f11649k = null;
        this.f11650l = null;
        this.f11651m = null;
        this.f11652n = null;
        this.f11653o = null;
        this.f11657s = null;
    }

    public void B(float arg) {
        this.f11655q = arg;
    }

    public void C(ColorINT colorValue) {
        this.f11648j = colorValue;
    }

    public void D(Ac.b componentUID) {
        this.f11641c = componentUID;
    }

    public void E(String entryName) {
        this.f11642d = entryName;
    }

    public void F(String event) {
        this.f11654p = event;
    }

    public void G(boolean eventFromInterpolation) {
        this.f11656r = eventFromInterpolation;
    }

    public void H(float floatValue) {
        this.f11646h = floatValue;
    }

    public void I(String imageValue) {
        this.f11653o = imageValue;
    }

    public void J(Ac.b instantFrameID) {
        this.f11639a = instantFrameID;
    }

    public void K(int intValue) {
        this.f11647i = intValue;
    }

    public void L(Ac.b objectUID) {
        this.f11640b = objectUID;
    }

    public void M(int originFrameTime) {
        this.f11645g = originFrameTime;
    }

    public void N(Quaternion quatValue) {
        this.f11651m = quatValue;
    }

    public void O(Square5I square5Value) {
        this.f11652n = square5Value;
    }

    public void P(com.itsmagic.engine.Engines.Engine.Animation.c type) {
        this.f11643e = type;
    }

    public void Q(Vector2 vec2Value) {
        this.f11650l = vec2Value;
    }

    public void R(Vector3 vec3Value) {
        this.f11649k = vec3Value;
    }

    public void S(float weight) {
        this.f11644f = weight;
    }

    public float c() {
        return this.f11655q;
    }

    public ColorINT d() {
        return this.f11648j;
    }

    public Ac.b e() {
        return this.f11641c;
    }

    public String f() {
        return this.f11642d;
    }

    public String g() {
        return this.f11654p;
    }

    public float h() {
        return this.f11646h;
    }

    public String i() {
        return this.f11653o;
    }

    public Ac.b j() {
        return this.f11639a;
    }

    public int k() {
        return this.f11647i;
    }

    public Ac.b l() {
        return this.f11640b;
    }

    public int m() {
        return this.f11645g;
    }

    public Quaternion n() {
        return this.f11651m;
    }

    public Square5I o() {
        return this.f11652n;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.c p() {
        return this.f11643e;
    }

    public Vector2 q() {
        return this.f11650l;
    }

    public Vector3 r() {
        return this.f11649k;
    }

    public float s() {
        return this.f11644f;
    }

    public boolean v() {
        return this.f11656r;
    }

    public void x() {
        y(null);
    }

    public void y(MiniJP mjp) {
        ColorINT colorINT = this.f11648j;
        if (colorINT != null) {
            z(colorINT, mjp);
        }
        Vector3 vector3 = this.f11649k;
        if (vector3 != null) {
            z(vector3, mjp);
        }
        Vector2 vector2 = this.f11650l;
        if (vector2 != null) {
            z(vector2, mjp);
        }
        Quaternion quaternion = this.f11651m;
        if (quaternion != null) {
            z(quaternion, mjp);
        }
        A();
        z(this, mjp);
    }
}
