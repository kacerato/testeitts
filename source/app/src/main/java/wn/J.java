package wn;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.Iterator;
import xn.a;

public class J {
    public static C16030h a(xn.c geomProvider, q builderCfg, N ctx) {
        t tVar = builderCfg.f127775a;
        C16030h c16030h = new C16030h(builderCfg.f127778d, builderCfg.f127779e, builderCfg.f127780f, builderCfg.f127781g, tVar.f127791e, tVar.f127792f, tVar.f127809w);
        for (xn.e eVar : geomProvider.b()) {
            NativeFloatBuffer c10 = eVar.c();
            if (tVar.f127788b) {
                float[] fArr = builderCfg.f127780f;
                float[] fArr2 = {fArr[0], fArr[2]};
                float[] fArr3 = builderCfg.f127781g;
                Iterator<a.c> it = eVar.a(fArr2, new float[]{fArr3[0], fArr3[2]}).iterator();
                while (it.hasNext()) {
                    NativeIntBuffer nativeIntBuffer = it.next().f129870d;
                    int capacity = nativeIntBuffer.capacity() / 3;
                    G.f(c16030h, c10, nativeIntBuffer, C16035m.f(ctx, tVar.f127793g, c10, nativeIntBuffer, capacity, tVar.f127804r), capacity, tVar.f127795i, ctx);
                }
            } else {
                NativeIntBuffer b10 = eVar.b();
                int capacity2 = b10.capacity() / 3;
                G.f(c16030h, c10, b10, C16035m.f(ctx, tVar.f127793g, c10, b10, capacity2, tVar.f127804r), capacity2, tVar.f127795i, ctx);
            }
        }
        return c16030h;
    }
}
