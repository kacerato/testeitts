package cc;

import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Dictionary.ShaderTemplates;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import dc.C12906d;
import ec.g;
import ec.h;
import ec.i;
import gc.C13320a;
import java.io.PrintStream;
import java.util.List;
import mc.C14207a;
import nc.C14377b;

public class C4173d {

    public static String f34728o = null;

    public static final String f34729p = "Base/base_frag.glsl";

    public static final String f34730q = "Base/base_vertex.glsl";

    public static final String f34731r = "Base/easy_frag.glsl";

    public static final String f34732s = "Base/easy_vertex.glsl";

    public final b f34733a;

    public final b f34734b;

    public ec.c f34735c;

    public final ShaderBinder f34736d;

    public i f34742j;

    public final String f34746n;

    public final List<C13320a> f34737e = new SteppedArrayList();

    public final List<gc.c> f34738f = new SteppedArrayList();

    public final List<ec.f> f34739g = new SteppedArrayList();

    public final List<g> f34740h = new SteppedArrayList();

    public final List<g> f34741i = new SteppedArrayList();

    public boolean f34743k = false;

    public boolean f34744l = true;

    public boolean f34745m = false;

    public class a implements c {
        @Override
        public void a(String file) {
            throw new NullPointerException("The file (" + file + ") was not found!");
        }
    }

    public static class b {

        public String f34747a;

        public b() {
        }

        public String a() {
            return this.f34747a;
        }

        public boolean b() {
            String str = this.f34747a;
            return (str == null || str.isEmpty()) ? false : true;
        }

        public void c(String code) {
            if (code == null || code.isEmpty()) {
                throw null;
            }
            this.f34747a = code;
        }

        public b(a aVar) {
            this();
        }
    }

    public interface c {
        void a(String file);
    }

    public C4173d(String name, ShaderBinder shaderBinder) {
        a aVar = null;
        this.f34733a = new b(aVar);
        this.f34734b = new b(aVar);
        m();
        this.f34736d = shaderBinder;
        this.f34746n = name;
    }

    public static String n(String file) {
        return o(file, new a());
    }

    public static String o(String file, c onErrorListener) {
        String a10 = C14207a.a("Shaders/Material/" + file);
        return a10.contains("[INSERT_SKINNING]") ? a10.replace("[INSERT_SKINNING]", f34728o) : a10;
    }

    public static String q(String n10, List<g> advancedSamples) {
        if (n10 == null || n10.isEmpty() || !n10.contains("[INSERT_ADV_SAMPLES]")) {
            return n10;
        }
        StringBuilder sb2 = new StringBuilder();
        if (advancedSamples != null) {
            for (int i10 = 0; i10 < advancedSamples.size(); i10++) {
                String b10 = advancedSamples.get(i10).b();
                sb2.append("float4 sample" + Tc.b.d(b10) + "(float2 inputUV){\n    float4 spriteRect = materialParams." + b10 + "Sprite;\n    return sampleSpriteTexture(materialParams_" + b10 + ", inputUV, spriteRect);\n}\n");
                sb2.append('\n');
            }
        }
        return n10.replace("[INSERT_ADV_SAMPLES]", sb2.toString());
    }

    public void a(MaterialBuilder.m type, MaterialBuilder.l format, MaterialBuilder.g precision, String name) {
        this.f34741i.add(new g(type, format, precision, name));
        this.f34740h.add(new g(type, format, precision, name));
        this.f34739g.add(new ec.f(MaterialBuilder.r.FLOAT4, precision, name + "Sprite"));
    }

    public void b(C13320a condition) {
        this.f34737e.add(condition);
    }

    public void c(MaterialBuilder.r type, MaterialBuilder.g precision, String name) {
        this.f34739g.add(new ec.f(type, name, precision));
    }

    public void d(MaterialBuilder.r type, String name) {
        this.f34739g.add(new ec.f(type, name));
    }

    public void e(MaterialBuilder.m type, MaterialBuilder.l format, MaterialBuilder.g precision, String name) {
        this.f34740h.add(new g(type, format, precision, name));
    }

    public C12906d f(Material material) {
        return g(material, false);
    }

    public C12906d g(Material material, boolean dump) {
        try {
            String str = this.f34746n;
            if (str == null || str.isEmpty()) {
                throw new RuntimeException("The shader name is not present on this shader instance, material shaders require a name");
            }
            if (!this.f34733a.b()) {
                throw new RuntimeException("Forward is not present");
            }
            C12906d c12906d = new C12906d(this.f34746n, i(), new C4171b(h(this.f34733a, this.f34739g, this.f34740h), this.f34739g, this.f34742j), material);
            if (dump) {
                PrintStream printStream = System.out;
                printStream.println("MaterialShaderConstructor:");
                printStream.println(c12906d);
            }
            return c12906d;
        } catch (Error e10) {
            e = e10;
            System.out.println("SHADER NAME:" + this.f34746n);
            throw e;
        } catch (Exception e11) {
            e = e11;
            System.out.println("SHADER NAME:" + this.f34746n);
            throw e;
        }
    }

    public final h h(b renderPass, List<ec.f> params, List<g> samples) {
        if (!renderPass.b()) {
            throw new RuntimeException();
        }
        String a10 = renderPass.a();
        gc.e eVar = new gc.e(gc.e.e(this.f34737e), gc.e.f(this.f34738f), a10 != null ? p(a10) : null);
        String p10 = this.f34734b.b() ? p(this.f34734b.a()) : null;
        String j10 = p10 != null ? j(p10) : p10;
        SteppedArrayList steppedArrayList = new SteppedArrayList(params);
        if (this.f34743k) {
            steppedArrayList.addAll(C14377b.k());
        }
        steppedArrayList.addAll(nc.h.o());
        SteppedArrayList steppedArrayList2 = new SteppedArrayList(samples);
        if (this.f34743k) {
            steppedArrayList2.addAll(C14377b.l());
        }
        steppedArrayList2.addAll(nc.h.p());
        return new h(eVar, j10, this.f34735c, steppedArrayList, steppedArrayList2, false, this.f34743k, this.f34744l, this.f34745m);
    }

    public ShaderBinder i() {
        ShaderBinder m10 = ShaderBinder.m(this.f34736d);
        if (this.f34743k) {
            m10.g0(new C14377b());
        }
        m10.k0(new nc.h());
        return m10;
    }

    public final String j(String code) {
        return code.replace("getUserWorldPosition()", "getUserWorldPosition(v.worldPosition.xyz)");
    }

    public void k(O9.a<ShaderTemplates.a> out) {
        String str = this.f34746n;
        if (str == null || str.isEmpty()) {
            throw new RuntimeException("The shader name is not present on this shader instance, material shaders require a name");
        }
        if (!this.f34733a.b()) {
            throw new RuntimeException("Forward is not present");
        }
        h h10 = h(this.f34733a, this.f34739g, this.f34740h);
        List<i> k10 = this.f34736d.k(new C4171b(h10, this.f34739g, this.f34742j));
        if (k10 != null) {
            for (int i10 = 0; i10 < k10.size(); i10++) {
                out.add(new ShaderTemplates.a(this, h10, k10.get(i10)));
            }
        }
    }

    public String l() {
        return this.f34746n;
    }

    public final void m() {
    }

    public final String p(String n10) {
        return q(n10, this.f34741i);
    }

    public C4173d r(String file) {
        this.f34733a.c(n(f34729p).replace("[INSERT_CODE]", n(f34731r)).replace("[INSERT_EASY_CODE]", n(file)));
        this.f34743k = true;
        return this;
    }

    public C4173d s(boolean easyMaterialIsLit) {
        this.f34744l = easyMaterialIsLit;
        if (!easyMaterialIsLit) {
            this.f34745m = false;
        }
        return this;
    }

    public C4173d t(boolean easyMaterialIsRefractive) {
        this.f34745m = this.f34744l && easyMaterialIsRefractive;
        return this;
    }

    public C4173d u(String file) {
        this.f34734b.c(n(f34730q).replace("[INSERT_CODE]", n(f34732s)).replace("[INSERT_EASY_CODE]", n(file)));
        this.f34743k = true;
        return this;
    }

    public void v(ec.c forwardBuilder) {
        this.f34735c = forwardBuilder;
    }

    public void w(i forwardDefaultVariance) {
        this.f34742j = forwardDefaultVariance;
    }

    public C4173d x(String file) {
        this.f34733a.c(n(f34729p).replace("[INSERT_CODE]", n(file)));
        return this;
    }

    public C4173d y(String file) {
        this.f34734b.c(n(f34730q).replace("[INSERT_CODE]", n(file)));
        return this;
    }

    public C4173d(ShaderBinder shaderBinder) {
        a aVar = null;
        this.f34733a = new b(aVar);
        this.f34734b = new b(aVar);
        m();
        this.f34736d = shaderBinder;
        this.f34746n = null;
    }
}
