package oc;

import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.CustomVFXEffect;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.f;
import ec.h;
import java.lang.constant.ConstantDescs;
import java.util.List;
import mc.C14207a;

public class c {

    public static final String f98675f = "base_vfx_frag.glsl";

    public static final String f98676g = "base_vfx_sub_mat.glsl";

    public static final String f98677h = "base_vfx_vertex.glsl";

    public static final String f98678i = "vfx_fn_";

    public static final String f98679j = "VFX_STRUCT_";

    public static final String f98680k = "vfx_pr_";

    public static final String f98681l = "emitterPosition";

    public static final String f98682m = "count";

    public final b f98683a;

    public final b f98684b;

    public final b f98685c;

    public final List<f> f98686d = new SteppedArrayList();

    public final String f98687e;

    public class a implements C4173d.c {
        @Override
        public void a(String file) {
            throw new NullPointerException("The file (" + file + ") was not found!");
        }
    }

    public static class b {

        public String f98688a;

        public b() {
        }

        public String a() {
            return this.f98688a;
        }

        public boolean b() {
            String str = this.f98688a;
            return (str == null || str.isEmpty()) ? false : true;
        }

        public void c(String code) {
            if (code == null || code.isEmpty()) {
                throw null;
            }
            this.f98688a = code;
        }

        public b(a aVar) {
            this();
        }
    }

    public interface InterfaceC1891c {
        void a(String file);
    }

    public c(String id2) {
        a aVar = null;
        this.f98683a = new b(aVar);
        this.f98684b = new b(aVar);
        this.f98685c = new b(aVar);
        this.f98687e = id2;
    }

    public static String i(String UID) {
        return f98680k + UID + ConstantDescs.DEFAULT_NAME + f98682m;
    }

    public static String j(BaseVFXEffect effect) {
        return f98680k + effect.getUID() + ConstantDescs.DEFAULT_NAME + f98681l;
    }

    public static String k(String UID) {
        return f98680k + UID + ConstantDescs.DEFAULT_NAME + f98681l;
    }

    public static String m(String file) {
        return n(file, new a());
    }

    public static String n(String file, C4173d.c onErrorListener) {
        return C14207a.a("Shaders/VFX/" + file);
    }

    public void a(MaterialBuilder.r type, MaterialBuilder.g precision, String name) {
        this.f98686d.add(new f(type, f98680k + this.f98687e + ConstantDescs.DEFAULT_NAME + name, precision));
    }

    public void b(MaterialBuilder.r type, String name) {
        this.f98686d.add(new f(type, f98680k + this.f98687e + ConstantDescs.DEFAULT_NAME + name));
    }

    public final String c(String code, h.c source) {
        String str = this.f98687e + ConstantDescs.DEFAULT_NAME + source.ordinal();
        return o(o(code.replace(f98678i, f98678i + str + ConstantDescs.DEFAULT_NAME).replace(f98679j, f98679j + str + ConstantDescs.DEFAULT_NAME), "materialParams.vfx_pr_" + this.f98687e + ConstantDescs.DEFAULT_NAME, "[emitter.index]", "vfxParams."), "materialParams.vfx_pr_" + this.f98687e + ConstantDescs.DEFAULT_NAME, "[emitter.index]", "vfxParam.");
    }

    public final String d(String code) {
        return code.replace("getUserWorldPosition()", "getUserWorldPosition(v.worldPosition.xyz)");
    }

    public String e() {
        String str = this.f98683a.f98688a;
        if (str != null) {
            return str;
        }
        String c10 = c(m(f98675f).replace("[INSERT_VFX_CODE]", CustomVFXEffect.f77397Y), h.c.FRAG);
        this.f98683a.f98688a = c10;
        return c10;
    }

    public List<f> f() {
        return this.f98686d;
    }

    public String g() {
        String str = this.f98684b.f98688a;
        if (str != null) {
            return str;
        }
        String c10 = c(m(f98676g).replace("[INSERT_VFX_CODE]", CustomVFXEffect.f77398Z), h.c.SUBMAT);
        this.f98684b.f98688a = c10;
        return c10;
    }

    public String h() {
        String str = this.f98685c.f98688a;
        if (str != null) {
            return str;
        }
        String c10 = c(m(f98677h).replace("[INSERT_VFX_CODE]", CustomVFXEffect.f77399q0), h.c.VERTEX);
        this.f98685c.f98688a = c10;
        return c10;
    }

    public final boolean l(char c10) {
        return Character.isLetterOrDigit(c10) || c10 == '_';
    }

    public final String o(String code, String materialParamPrefix, String indexAccessSnippet, String sourcePrefix) {
        StringBuilder sb2 = new StringBuilder(code.length());
        int i10 = 0;
        while (i10 < code.length()) {
            if (code.startsWith(sourcePrefix, i10)) {
                int length = sourcePrefix.length() + i10;
                int i11 = length;
                while (i11 < code.length() && l(code.charAt(i11))) {
                    i11++;
                }
                if (i11 > length) {
                    sb2.append(materialParamPrefix);
                    sb2.append((CharSequence) code, length, i11);
                    sb2.append(indexAccessSnippet);
                    i10 = i11;
                }
            }
            sb2.append(code.charAt(i10));
            i10++;
        }
        return sb2.toString();
    }

    public c p(String dc2) {
        this.f98683a.c(c(m(f98675f).replace("[INSERT_VFX_CODE]", dc2), h.c.FRAG));
        return this;
    }

    public c q(String dc2) {
        this.f98684b.c(c(m(f98676g).replace("[INSERT_VFX_CODE]", dc2), h.c.SUBMAT));
        return this;
    }

    public c r(String dc2) {
        this.f98685c.c(d(c(m(f98677h).replace("[INSERT_VFX_CODE]", dc2), h.c.VERTEX)));
        return this;
    }

    public c s(String file) {
        this.f98683a.c(c(m(f98675f).replace("[INSERT_VFX_CODE]", m(file)), h.c.FRAG));
        return this;
    }

    public c t(String file) {
        this.f98684b.c(c(m(f98676g).replace("[INSERT_VFX_CODE]", m(file)), h.c.SUBMAT));
        return this;
    }

    public c u(String file) {
        this.f98685c.c(d(c(m(f98677h).replace("[INSERT_VFX_CODE]", m(file)), h.c.VERTEX)));
        return this;
    }
}
