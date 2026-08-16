package ec;

import Ic.C2634m;
import JAVARuntime.CompileErrorListener;
import com.google.android.filament.Material;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class e extends C2634m {

    public final FilamentMaterialTemplate f85430b;

    public final List<f> f85431c;

    public final List<g> f85432d;

    public e(FilamentMaterialTemplate materialTemplate, List<f> params, List<g> samples) {
        this.f85430b = materialTemplate;
        this.f85431c = params;
        this.f85432d = samples;
    }

    public List<f> e() {
        return this.f85431c;
    }

    public List<g> f() {
        return this.f85432d;
    }

    public FilamentMaterial h() {
        return this.f85430b.f(this.f85431c);
    }

    public static class a {

        public String f85433a;

        public String f85434b;

        public FilamentMaterialTemplate f85435c;

        public Sb.b f85436d;

        public ByteBuffer f85439g;

        public String f85440h;

        public boolean f85441i;

        public boolean f85442j;

        public final List<f> f85437e = new SteppedArrayList();

        public final List<g> f85438f = new SteppedArrayList();

        public Map<String, C1586a> f85443k = new HashMap();

        public class C1586a {

            public String f85444a;

            public String f85445b;

            public C1586a(String replaceCode) {
                this.f85445b = "";
                this.f85444a = replaceCode;
                if (replaceCode.contains("void main()")) {
                    this.f85444a = replaceCode.substring(0, replaceCode.indexOf("void main()"));
                    this.f85445b = replaceCode.substring(replaceCode.indexOf("void main()"));
                }
            }
        }

        public a(String matName) {
            this.f85440h = matName;
        }

        public final boolean A(String code) {
            return (code == null || code.isEmpty()) ? false : true;
        }

        public a a() {
            if (!z()) {
                throw new IllegalArgumentException("shader code is empty!");
            }
            this.f85436d.r(f());
            String g10 = g();
            if (g10 != null && !g10.isEmpty()) {
                this.f85436d.t(g10);
            }
            com.google.android.filament.filamat.b d10 = this.f85436d.d();
            if (d10 == null || !d10.b()) {
                throw new RuntimeException("Failed to compile material");
            }
            this.f85439g = d10.a();
            this.f85441i = true;
            return this;
        }

        public void b() {
            this.f85439g = null;
        }

        public a c() {
            d(null);
            return this;
        }

        public a d(CompileErrorListener compileErrorListener) {
            if (!z()) {
                throw new IllegalArgumentException("shader code is empty!");
            }
            this.f85436d.r(f());
            String g10 = g();
            if (g10 != null && !g10.isEmpty()) {
                this.f85436d.t(g10);
            }
            com.google.android.filament.filamat.b d10 = this.f85436d.d();
            if (d10 != null && d10.b()) {
                ByteBuffer a10 = d10.a();
                this.f85439g = a10;
                ByteBuffer duplicate = a10.duplicate();
                duplicate.rewind();
                this.f85435c = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
                this.f85441i = true;
                return this;
            }
            String str = d10 != null ? null : "MaterialPackage returned null - critical compilation failure";
            if (compileErrorListener != null) {
                compileErrorListener.onError(str);
                return this;
            }
            throw new RuntimeException("Failed to compile material: " + str);
        }

        public e e() {
            return new e(this.f85435c, this.f85437e, this.f85438f);
        }

        public final String f() {
            return m(this.f85433a);
        }

        public final String g() {
            return m(this.f85434b);
        }

        public String h() {
            return this.f85433a;
        }

        public int i(String name) {
            return this.f85443k.get(name).f85444a.split("\n").length + this.f85443k.get(name).f85445b.split("\n").length;
        }

        public ByteBuffer j() {
            return this.f85439g;
        }

        public String k() {
            return this.f85434b;
        }

        public a l() {
            this.f85436d = (Sb.b) new Sb.b().v(this.f85440h).x(MaterialBuilder.h.MOBILE).s(MaterialBuilder.e.SURFACE).E(MaterialBuilder.n.LIT).c(MaterialBuilder.a.MASKED).C(MaterialBuilder.t.UV0).C(MaterialBuilder.t.TANGENTS).i(MaterialBuilder.c.BACK);
            return this;
        }

        public final String m(String c10) {
            if (c10 == null) {
                return null;
            }
            if (this.f85442j) {
                while (c10.contains("use itsmagic.")) {
                    String substring = c10.substring(c10.indexOf("use itsmagic.") + 13);
                    String substring2 = substring.substring(0, substring.indexOf(";"));
                    C1586a c1586a = this.f85443k.get(substring2);
                    c10 = c10.replace("use itsmagic." + substring2 + ";", c1586a.f85444a) + "\n" + c1586a.f85445b;
                }
            }
            return c10;
        }

        public void n(MaterialBuilder.m type, MaterialBuilder.l format, MaterialBuilder.g precision, String name) {
            try {
                Sb.b bVar = this.f85436d;
                if (bVar != null) {
                    bVar.D(type, format, precision, name);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85438f.add(new g(type, format, precision, name));
        }

        public void o(g sampler) {
            try {
                Sb.b bVar = this.f85436d;
                if (bVar != null) {
                    bVar.D(sampler.d(), sampler.a(), sampler.c(), sampler.b());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85438f.add(sampler);
        }

        public a p(Ac.b fragmentCode) {
            q(fragmentCode.toString());
            return this;
        }

        public a q(String code) {
            if (code == null || code.isEmpty()) {
                throw null;
            }
            this.f85433a = code;
            return this;
        }

        public a r(Ac.b vertexCode) {
            if (vertexCode != null) {
                s(vertexCode.toString());
            }
            return this;
        }

        public a s(String code) {
            this.f85434b = code;
            return this;
        }

        public void t(MaterialBuilder.r type, MaterialBuilder.g precision, String name) {
            try {
                Sb.b bVar = this.f85436d;
                if (bVar != null) {
                    bVar.P(type, name);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85437e.add(new f(type, name));
        }

        public void u(MaterialBuilder.r type, String name) {
            t(type, MaterialBuilder.g.DEFAULT, name);
        }

        public void v(f param) {
            try {
                Sb.b bVar = this.f85436d;
                if (bVar != null) {
                    bVar.O(param.d(), param.b(), param.a());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85437e.add(param);
        }

        public void w(MaterialBuilder.r type, MaterialBuilder.g precision, String name, int size) {
            try {
                Sb.b bVar = this.f85436d;
                if (bVar != null) {
                    bVar.Q(type, size, precision, name);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85437e.add(new f(type, name, precision, size));
        }

        public a x(Sb.b builder) {
            this.f85436d = builder;
            return this;
        }

        public a y(ByteBuffer payload, CompileErrorListener compileErrorListener) {
            if (!z()) {
                throw new IllegalArgumentException("shader code is empty!");
            }
            this.f85439g = payload;
            ByteBuffer duplicate = payload.duplicate();
            duplicate.rewind();
            this.f85435c = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
            this.f85441i = true;
            return this;
        }

        public boolean z() {
            return A(this.f85433a);
        }

        public a(boolean fromRT) {
            this.f85442j = fromRT;
        }
    }
}
