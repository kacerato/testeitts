package oc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import ec.f;
import java.util.List;

public class b {

    public final String f98668a;

    public final long f98669b;

    public String f98670c;

    public String f98671d;

    public String f98672e;

    public final List<f> f98673f;

    public final List<String> f98674g;

    public b(String fragment, String subMaterial, String vertex, List<f> params, List<String> vfxUniqueUIDs) {
        String L10 = Tc.b.L();
        this.f98668a = L10;
        this.f98669b = h(L10);
        this.f98670c = fragment;
        this.f98671d = subMaterial;
        this.f98672e = vertex;
        this.f98673f = params;
        this.f98674g = vfxUniqueUIDs;
    }

    public static long h(String value) {
        long j10 = SkinnedModelRenderer.f76424m3;
        for (int i10 = 0; i10 < value.length(); i10++) {
            j10 = (j10 ^ value.charAt(i10)) * SkinnedModelRenderer.f76425q3;
        }
        return j10;
    }

    public String a() {
        return this.f98670c;
    }

    public List<f> b() {
        return this.f98673f;
    }

    public String c() {
        return this.f98671d;
    }

    public String d() {
        return this.f98668a;
    }

    public long e() {
        return this.f98669b;
    }

    public String f() {
        return this.f98672e;
    }

    public List<String> g() {
        return this.f98674g;
    }
}
