package Wg;

import Xg.o;
import Xg.p;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import uc.C15593a;

@Deprecated
public class d {
    public static void a(Vertex vertex) {
        if (vertex.i1() != null) {
            boolean z10 = true;
            boolean z11 = vertex.x0() == null || vertex.x0().capacity() != vertex.x0().capacity();
            if (vertex.F0() != null && vertex.F0().capacity() == vertex.i1().capacity()) {
                z10 = z11;
            }
            if (z10) {
                vertex.apply();
            }
        }
    }

    public static Vertex b(o obj, Fb.a importSettings) {
        if (obj == null) {
            return null;
        }
        NativeFloatBuffer m10 = C15593a.m(p.G(obj));
        NativeFloatBuffer m11 = C15593a.m(p.v(obj));
        NativeFloatBuffer m12 = C15593a.m(p.B(obj, 2));
        NativeIntBuffer q10 = C15593a.q(p.r(obj));
        Vertex vertex = new Vertex();
        vertex.q2(m10);
        vertex.Y1(m11);
        vertex.m2(m12);
        vertex.i2(q10);
        a(vertex);
        if (importSettings == null || importSettings.f6730a) {
            vertex.apply();
        } else if (importSettings != null && importSettings.f6731b) {
            vertex.d0();
        }
        return vertex;
    }
}
