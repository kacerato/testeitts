package Vb;

import Ic.C2633l;
import Ic.C2636o;
import Sb.a;
import b3.s;
import cc.C4173d;
import com.google.android.filament.Material;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialConfig;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialShader;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.v;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.h;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import oc.C14497a;
import org.eclipse.jdt.internal.core.JavadocConstants;
import t3.C15377a;

public class a {

    public static String f26755f;

    public static String f26756g;

    public static String f26757h;

    public static String f26758i;

    public static String f26759j;

    public static String f26760k;

    public static String f26761l;

    public static final Pattern f26750a = Pattern.compile("(?m)^(\\s*)void\\s+material\\s*\\(\\s*inout\\s+MaterialInputs\\s+([A-Za-z_][A-Za-z0-9_]*)\\s*\\)");

    public static final Pattern f26751b = Pattern.compile("(?m)^(\\s*)void\\s+materialVertex\\s*\\(\\s*inout\\s+MaterialVertexInputs\\s+([A-Za-z_][A-Za-z0-9_]*)\\s*\\)");

    public static final Pattern f26752c = Pattern.compile("(?m)^(\\s*)void\\s+easyMaterial\\s*\\(\\s*inout\\s+MaterialInputs\\s+([A-Za-z_][A-Za-z0-9_]*)\\s*\\)");

    public static final Pattern f26753d = Pattern.compile("(?m)^\\s*void\\s+easyMaterial\\s*\\(\\s*inout\\s+MaterialInputs\\s+[A-Za-z_][A-Za-z0-9_]*\\s*,\\s*SubMaterialData\\s+[A-Za-z_][A-Za-z0-9_]*\\s*\\)");

    public static final Pattern f26754e = Pattern.compile("(?m)^\\s*void\\s+easyVertex\\s*\\(\\s*inout\\s+MaterialVertexInputs\\s+[A-Za-z_][A-Za-z0-9_]*\\s*\\)");

    public static final List<g> f26762m = new SteppedArrayList();

    public class RunnableC0736a implements Runnable {

        public final g f26763b;

        public final int f26764c;

        public final oc.b f26765d;

        public RunnableC0736a(final g val$pending, final int val$hash, final oc.b val$sceneVFXShader) {
            this.f26763b = val$pending;
            this.f26764c = val$hash;
            this.f26765d = val$sceneVFXShader;
        }

        @Override
        public void run() {
            FilamentMaterialTemplate v10;
            MaterialShader materialShader = this.f26763b.f26791a;
            if (materialShader.f80143a || materialShader.f80145c != null || (v10 = a.v(this.f26764c)) == null) {
                return;
            }
            g gVar = this.f26763b;
            MaterialShader materialShader2 = gVar.f26791a;
            materialShader2.f80143a = false;
            materialShader2.f80145c = v10;
            materialShader2.f80146d = gVar.f26792b;
            materialShader2.f80148f = a.k(gVar.f26794d, this.f26765d);
            this.f26763b.f26791a.d(a.z(this.f26765d));
        }
    }

    public class b implements Runnable {
        @Override
        public void run() {
            synchronized (a.f26762m) {
                a.f26762m.clear();
            }
            synchronized (K8.a.l().d().materialShaders) {
                for (int i10 = 0; i10 < K8.a.l().d().materialShaders.size(); i10++) {
                    try {
                        MaterialShader materialShader = K8.a.l().d().materialShaders.get(i10);
                        if (materialShader != null && materialShader.b() != null) {
                            try {
                                materialShader.f80149g.clear();
                                materialShader.f80145c = null;
                                materialShader.d(0L);
                                materialShader.f80143a = false;
                                materialShader.f80144b = null;
                                String b10 = materialShader.b();
                                String r10 = X7.a.r(b10);
                                if (r10 == null || r10.isEmpty()) {
                                    throw new IllegalStateException("Failed to load shader text");
                                }
                                HashMap hashMap = new HashMap();
                                HashMap hashMap2 = new HashMap();
                                MaterialConfig materialConfig = (MaterialConfig) X7.a.m().fromJson(a.x(r10), MaterialConfig.class);
                                if (materialConfig.name == null) {
                                    materialConfig.name = b10;
                                }
                                Vb.d.f(materialConfig, hashMap, hashMap2, materialShader.f80149g, b10);
                                String w10 = a.w(r10);
                                String y10 = a.y(r10);
                                oc.b l10 = C14497a.l();
                                materialShader.f(materialConfig.name);
                                g gVar = new g(materialShader, materialConfig, l10, hashMap, hashMap2, w10, y10, b10);
                                synchronized (a.f26762m) {
                                    a.f26762m.add(gVar);
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                materialShader.f80143a = true;
                                materialShader.f80144b = e10.getMessage();
                                J4.d.E1();
                                J4.d.M1("Custom material shader error");
                                J4.d.M1("Path:" + materialShader.b());
                                J4.d.M1("Failed to prepare params from JSON:" + e10.getMessage());
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public class c implements Runnable {
        @Override
        public void run() {
            synchronized (a.f26762m) {
                a.f26762m.clear();
            }
            synchronized (K8.a.l().d().materialShaders) {
                try {
                    HashMap hashMap = new HashMap();
                    for (int i10 = 0; i10 < K8.a.l().d().materialShaders.size(); i10++) {
                        MaterialShader materialShader = K8.a.l().d().materialShaders.get(i10);
                        if (materialShader != null && materialShader.b() != null) {
                            hashMap.put(materialShader.b(), materialShader);
                        }
                    }
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R()).listFiles();
                    if (listFiles != null) {
                        for (File file : listFiles) {
                            if (!file.isDirectory()) {
                                a.s(file, hashMap, steppedArrayList);
                            } else if (!file.getName().equals("JAVARuntime") && !file.getName().equals("_EDITOR")) {
                                a.s(file, hashMap, steppedArrayList);
                            }
                        }
                    }
                    K8.a.l().d().materialShaders.clear();
                    K8.a.l().d().materialShaders.addAll(steppedArrayList);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public class d implements Runnable {

        public Sb.a f26766b;

        public boolean f26767c = false;

        public final String f26768d;

        public final String f26769e;

        public final Map f26770f;

        public final Map f26771g;

        public final MaterialConfig f26772h;

        public final String f26773i;

        public final MaterialShader f26774j;

        public final Semaphore f26775k;

        public final String f26776l;

        public final StringBuilder f26777m;

        public class C0737a implements a.b {

            public boolean f26778a = false;

            public boolean f26779b = false;

            public C0737a() {
            }

            @Override
            public void a(String line) {
                if (line.contains("BEGIN-" + d.this.f26776l)) {
                    this.f26778a = true;
                }
                if (this.f26778a && !line.contains("compilation terminated") && line.contains("Filament: ERROR:")) {
                    String substring = line.substring(line.indexOf("Filament: ERROR: ") + 17);
                    if (substring.contains(".  No code generated.")) {
                        substring = substring.replace(".  No code generated.", "");
                    }
                    String replace = substring.replace("'", JavadocConstants.ANCHOR_PREFIX_END);
                    StringBuilder sb2 = d.this.f26777m;
                    sb2.append(replace);
                    sb2.append("\n");
                    if (line.contains(".  No code generated.")) {
                        d.this.f26766b.h();
                        b();
                    }
                }
            }

            @Override
            public void b() {
                if (this.f26779b) {
                    return;
                }
                try {
                    this.f26779b = true;
                    d.this.f26766b = null;
                    J4.d.E1();
                    J4.d.M1(J4.d.q2(Tc.b.v(d.this.f26772h.name) + " failed to build!"));
                    String[] split = d.this.f26777m.toString().split("\n");
                    d dVar = d.this;
                    dVar.f26774j.f80144b = dVar.f26777m.toString();
                    for (String str : split) {
                        J4.d.b2(J4.d.q2(str));
                    }
                } finally {
                    d.this.f26775k.release();
                }
            }
        }

        public d(final String val$shaderCode, final String val$vertexCode, final Map val$UNIFORMS, final Map val$SAMPLERS, final MaterialConfig val$materialConfig, final String val$debugIpp, final MaterialShader val$materialShader, final Semaphore val$semaphore, final String val$tag, final StringBuilder val$errors) {
            this.f26768d = val$shaderCode;
            this.f26769e = val$vertexCode;
            this.f26770f = val$UNIFORMS;
            this.f26771g = val$SAMPLERS;
            this.f26772h = val$materialConfig;
            this.f26773i = val$debugIpp;
            this.f26774j = val$materialShader;
            this.f26775k = val$semaphore;
            this.f26776l = val$tag;
            this.f26777m = val$errors;
        }

        @Override
        public void run() {
            FilamentMaterialTemplate filamentMaterialTemplate;
            if (this.f26767c) {
                return;
            }
            this.f26767c = true;
            try {
                try {
                    filamentMaterialTemplate = a.o(this.f26768d, this.f26769e, this.f26770f, this.f26771g, this.f26772h, this.f26773i);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    filamentMaterialTemplate = null;
                }
                if (filamentMaterialTemplate == null) {
                    this.f26774j.f80143a = true;
                    if (this.f26766b == null) {
                        Sb.a aVar = new Sb.a(new C0737a());
                        this.f26766b = aVar;
                        aVar.g();
                        return;
                    }
                    return;
                }
                MaterialShader materialShader = this.f26774j;
                materialShader.f80143a = false;
                materialShader.f80145c = filamentMaterialTemplate;
                materialShader.f80146d = this.f26772h;
                materialShader.f80148f = a.k(this.f26770f, C14497a.l());
                this.f26774j.d(C14497a.m());
                this.f26775k.release();
            } catch (Throwable th2) {
                th2.printStackTrace();
                this.f26775k.release();
            }
        }
    }

    public class e implements Runnable {

        public boolean f26781b = false;

        public final String f26782c;

        public final String f26783d;

        public final Map f26784e;

        public final Map f26785f;

        public final MaterialConfig f26786g;

        public final String f26787h;

        public final MaterialShader f26788i;

        public final Semaphore f26789j;

        public e(final String val$shaderCode, final String val$vertexCode, final Map val$UNIFORMS, final Map val$SAMPLERS, final MaterialConfig val$materialConfig, final String val$debugIpp, final MaterialShader val$materialShader, final Semaphore val$semaphore) {
            this.f26782c = val$shaderCode;
            this.f26783d = val$vertexCode;
            this.f26784e = val$UNIFORMS;
            this.f26785f = val$SAMPLERS;
            this.f26786g = val$materialConfig;
            this.f26787h = val$debugIpp;
            this.f26788i = val$materialShader;
            this.f26789j = val$semaphore;
        }

        @Override
        public void run() {
            FilamentMaterialTemplate filamentMaterialTemplate;
            if (this.f26781b) {
                return;
            }
            this.f26781b = true;
            try {
                try {
                    filamentMaterialTemplate = a.o(this.f26782c, this.f26783d, this.f26784e, this.f26785f, this.f26786g, this.f26787h);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    filamentMaterialTemplate = null;
                }
                if (filamentMaterialTemplate != null) {
                    MaterialShader materialShader = this.f26788i;
                    materialShader.f80143a = false;
                    materialShader.f80145c = filamentMaterialTemplate;
                    materialShader.f80146d = this.f26786g;
                    materialShader.f80148f = a.k(this.f26784e, C14497a.l());
                    this.f26788i.d(C14497a.m());
                } else {
                    this.f26788i.f80143a = true;
                }
            } finally {
                this.f26789j.release();
            }
        }
    }

    public static class f {

        public static final int[] f26790a;

        static {
            int[] iArr = new int[h.c.values().length];
            f26790a = iArr;
            try {
                iArr[h.c.VERTEX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26790a[h.c.FRAG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26790a[h.c.SUBMAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class g {

        public final MaterialShader f26791a;

        public final MaterialConfig f26792b;

        public final oc.b f26793c;

        public final Map<String, Vb.c> f26794d;

        public final Map<String, MaterialBuilder.m> f26795e;

        public final String f26796f;

        public final String f26797g;

        public final String f26798h;

        public g(MaterialShader materialShader, MaterialConfig materialConfig, oc.b sceneVFXShader, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String shaderCode, String vertexCode, String debugIpp) {
            this.f26791a = materialShader;
            this.f26792b = materialConfig;
            this.f26793c = sceneVFXShader;
            this.f26794d = uniforms;
            this.f26795e = samplers;
            this.f26796f = shaderCode;
            this.f26797g = vertexCode;
            this.f26798h = debugIpp;
        }
    }

    public static String A(h.c source, boolean easyMaterialIsLit, boolean easyMaterialIsRefractive) {
        int i10 = f.f26790a[source.ordinal()];
        if (i10 == 1) {
            if (f26759j == null) {
                f26759j = oc.c.m(h.f85460t);
            }
            return f26759j;
        }
        if (i10 == 2) {
            if (f26761l == null) {
                f26761l = oc.c.m(h.f85461u);
            }
            return v.b(f26761l, easyMaterialIsLit, easyMaterialIsRefractive);
        }
        if (i10 != 3) {
            throw new IllegalArgumentException();
        }
        if (f26760k == null) {
            f26760k = oc.c.m(h.f85462v);
        }
        return v.b(f26760k, easyMaterialIsLit, easyMaterialIsRefractive);
    }

    public static String B() {
        if (f26755f == null) {
            f26755f = C4173d.q(v.c(C4173d.n(C4173d.f34729p)), null);
        }
        return f26755f;
    }

    public static String C() {
        if (f26757h == null) {
            f26757h = C4173d.q(v.c(C4173d.n(C4173d.f34730q)), null);
        }
        return f26757h;
    }

    public static String D() {
        if (f26756g == null) {
            f26756g = v.c(C4173d.n(C4173d.f34731r));
        }
        return f26756g;
    }

    public static String E() {
        if (f26758i == null) {
            f26758i = v.c(C4173d.n(C4173d.f34732s));
        }
        return f26758i;
    }

    public static String F(String code, MaterialConfig materialConfig, boolean vertex, oc.b sceneVFXShader) {
        String str;
        if (code == null || code.isEmpty()) {
            return code;
        }
        if (sceneVFXShader == null || sceneVFXShader.g() == null || sceneVFXShader.g().isEmpty()) {
            return code.replace(h.f85457q, "").replace(h.f85458r, "").replace(h.f85459s, "");
        }
        if (materialConfig != null) {
            "lit".equalsIgnoreCase(materialConfig.shadingModel);
        }
        if (materialConfig != null) {
            "true".equalsIgnoreCase(materialConfig.refraction);
        }
        if (vertex) {
            str = sceneVFXShader.f();
        } else {
            str = sceneVFXShader.a() + "\n" + sceneVFXShader.c();
        }
        String str2 = str != null ? str : "";
        return vertex ? code.replace(h.f85457q, str2).replace(h.f85458r, r(sceneVFXShader, materialConfig, h.c.VERTEX)) : code.replace(h.f85457q, str2).replace(h.f85458r, r(sceneVFXShader, materialConfig, h.c.FRAG)).replace(h.f85459s, r(sceneVFXShader, materialConfig, h.c.SUBMAT));
    }

    public static void G() {
        O9.b.d(new b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void H() {
        List<g> list = f26762m;
        synchronized (list) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList(list);
                list.clear();
                for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                    g gVar = (g) steppedArrayList.get(i10);
                    if (gVar != null && gVar.f26791a != null) {
                        oc.b l10 = C14497a.l();
                        int l11 = l(gVar.f26796f, gVar.f26797g, gVar.f26792b, l10);
                        if (!ec.b.h(l11)) {
                            ec.b.j(l11);
                        }
                        if (!ec.b.h(l11)) {
                            try {
                                p(gVar.f26796f, gVar.f26797g, gVar.f26794d, gVar.f26795e, gVar.f26792b, l10, gVar.f26798h);
                            } catch (Exception e10) {
                                MaterialShader materialShader = gVar.f26791a;
                                materialShader.f80143a = true;
                                materialShader.f80144b = e10.getMessage();
                                J4.d.E1();
                                J4.d.M1("Custom material shader error");
                                J4.d.M1("Path:" + gVar.f26798h);
                                J4.d.M1("Failed to compile shader payload:" + e10.getMessage());
                            }
                        }
                        K8.a.I(new RunnableC0736a(gVar, l11, l10));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String I(String fragmentShaderCode) {
        String c10 = v.c(fragmentShaderCode);
        if (c10 == null || c10.isEmpty() || f26753d.matcher(c10).find()) {
            return c10;
        }
        Matcher matcher = f26752c.matcher(c10);
        if (matcher.find()) {
            return matcher.replaceFirst("$1void easyMaterial(inout MaterialInputs $2, SubMaterialData smData)");
        }
        Matcher matcher2 = f26750a.matcher(c10);
        return matcher2.find() ? matcher2.replaceFirst("$1void easyMaterial(inout MaterialInputs $2, SubMaterialData smData)") : c10;
    }

    public static String J(String vertexCode) {
        String c10 = v.c(vertexCode);
        if (c10 == null || c10.isEmpty() || f26754e.matcher(c10).find()) {
            return c10;
        }
        Matcher matcher = f26751b.matcher(c10);
        return matcher.find() ? matcher.replaceFirst("$1void easyVertex(inout MaterialVertexInputs $2)") : c10;
    }

    public static void K() {
        M();
    }

    public static void L() {
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            M();
        }
    }

    public static void M() {
        O9.b.d(new c());
    }

    public static void j(Sb.b builder, oc.b sceneVFXShader) {
        if (sceneVFXShader == null || sceneVFXShader.b() == null) {
            return;
        }
        List<ec.f> b10 = sceneVFXShader.b();
        for (int i10 = 0; i10 < b10.size(); i10++) {
            ec.f fVar = b10.get(i10);
            if (fVar != null) {
                if (fVar.c() > 0) {
                    builder.Q(fVar.d(), fVar.c(), fVar.b(), fVar.a());
                } else {
                    builder.O(fVar.d(), fVar.b(), fVar.a());
                }
            }
        }
    }

    public static List<ec.f> k(Map<String, Vb.c> uniformParams, oc.b sceneVFXShader) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (uniformParams != null) {
            for (Map.Entry<String, Vb.c> entry : uniformParams.entrySet()) {
                Vb.c value = entry.getValue();
                if (entry.getKey() != null && value != null) {
                    steppedArrayList.add(new ec.f(value.f26805a, entry.getKey(), value.f26806b));
                }
            }
        }
        if (sceneVFXShader != null && sceneVFXShader.b() != null) {
            steppedArrayList.addAll(sceneVFXShader.b());
        }
        return steppedArrayList;
    }

    public static int l(String fragmentShaderCode, String vertexCode, MaterialConfig materialConfig, oc.b sceneVFXShader) {
        return ("cms-" + z(sceneVFXShader) + "-" + q(sceneVFXShader) + "-" + m(fragmentShaderCode, materialConfig, sceneVFXShader) + "\n//vertex\n" + n(vertexCode, materialConfig, sceneVFXShader)).hashCode();
    }

    public static String m(String fragmentShaderCode, MaterialConfig materialConfig, oc.b sceneVFXShader) {
        String I10 = I(fragmentShaderCode);
        return (I10 == null || I10.isEmpty()) ? I10 : F(B().replace("[INSERT_CODE]", D().replace("[INSERT_EASY_CODE]", I10)), materialConfig, false, sceneVFXShader);
    }

    public static String n(String vertexCode, MaterialConfig materialConfig, oc.b sceneVFXShader) {
        String J10 = J(vertexCode);
        return (J10 == null || J10.isEmpty()) ? J10 : F(C().replace("[INSERT_CODE]", E().replace("[INSERT_EASY_CODE]", J10)), materialConfig, true, sceneVFXShader);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:10|(15:49|14|(1:(1:17)(1:45))(1:46)|18|(1:20)(1:44)|21|22|23|(2:26|24)|27|28|(2:31|29)|32|33|(2:39|40)(2:37|38))|13|14|(0)(0)|18|(0)(0)|21|22|23|(1:24)|27|28|(1:29)|32|33|(1:35)|39|40) */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fa, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fb, code lost:
    
        r4.printStackTrace();
        J4.d.E1();
        J4.d.M1("Invalid blending mode [" + r12.blendingMode + "] at shader:" + r13);
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00da A[Catch: Exception -> 0x01ae, TryCatch #0 {Exception -> 0x01ae, blocks: (B:3:0x0002, B:5:0x0018, B:8:0x0032, B:17:0x00a5, B:18:0x00d0, B:20:0x00da, B:22:0x00ea, B:43:0x00fb, B:23:0x011d, B:24:0x012a, B:26:0x0130, B:28:0x014a, B:29:0x0152, B:31:0x0158, B:33:0x0172, B:35:0x0181, B:37:0x0187, B:39:0x01a8, B:40:0x01ad, B:44:0x00e5, B:45:0x00c5, B:46:0x00cb, B:47:0x008a, B:50:0x0094), top: B:2:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0130 A[Catch: Exception -> 0x01ae, LOOP:0: B:24:0x012a->B:26:0x0130, LOOP_END, TryCatch #0 {Exception -> 0x01ae, blocks: (B:3:0x0002, B:5:0x0018, B:8:0x0032, B:17:0x00a5, B:18:0x00d0, B:20:0x00da, B:22:0x00ea, B:43:0x00fb, B:23:0x011d, B:24:0x012a, B:26:0x0130, B:28:0x014a, B:29:0x0152, B:31:0x0158, B:33:0x0172, B:35:0x0181, B:37:0x0187, B:39:0x01a8, B:40:0x01ad, B:44:0x00e5, B:45:0x00c5, B:46:0x00cb, B:47:0x008a, B:50:0x0094), top: B:2:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0158 A[Catch: Exception -> 0x01ae, LOOP:1: B:29:0x0152->B:31:0x0158, LOOP_END, TryCatch #0 {Exception -> 0x01ae, blocks: (B:3:0x0002, B:5:0x0018, B:8:0x0032, B:17:0x00a5, B:18:0x00d0, B:20:0x00da, B:22:0x00ea, B:43:0x00fb, B:23:0x011d, B:24:0x012a, B:26:0x0130, B:28:0x014a, B:29:0x0152, B:31:0x0158, B:33:0x0172, B:35:0x0181, B:37:0x0187, B:39:0x01a8, B:40:0x01ad, B:44:0x00e5, B:45:0x00c5, B:46:0x00cb, B:47:0x008a, B:50:0x0094), top: B:2:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0181 A[Catch: Exception -> 0x01ae, TryCatch #0 {Exception -> 0x01ae, blocks: (B:3:0x0002, B:5:0x0018, B:8:0x0032, B:17:0x00a5, B:18:0x00d0, B:20:0x00da, B:22:0x00ea, B:43:0x00fb, B:23:0x011d, B:24:0x012a, B:26:0x0130, B:28:0x014a, B:29:0x0152, B:31:0x0158, B:33:0x0172, B:35:0x0181, B:37:0x0187, B:39:0x01a8, B:40:0x01ad, B:44:0x00e5, B:45:0x00c5, B:46:0x00cb, B:47:0x008a, B:50:0x0094), top: B:2:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e5 A[Catch: Exception -> 0x01ae, TRY_LEAVE, TryCatch #0 {Exception -> 0x01ae, blocks: (B:3:0x0002, B:5:0x0018, B:8:0x0032, B:17:0x00a5, B:18:0x00d0, B:20:0x00da, B:22:0x00ea, B:43:0x00fb, B:23:0x011d, B:24:0x012a, B:26:0x0130, B:28:0x014a, B:29:0x0152, B:31:0x0158, B:33:0x0172, B:35:0x0181, B:37:0x0187, B:39:0x01a8, B:40:0x01ad, B:44:0x00e5, B:45:0x00c5, B:46:0x00cb, B:47:0x008a, B:50:0x0094), top: B:2:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cb A[Catch: Exception -> 0x01ae, TryCatch #0 {Exception -> 0x01ae, blocks: (B:3:0x0002, B:5:0x0018, B:8:0x0032, B:17:0x00a5, B:18:0x00d0, B:20:0x00da, B:22:0x00ea, B:43:0x00fb, B:23:0x011d, B:24:0x012a, B:26:0x0130, B:28:0x014a, B:29:0x0152, B:31:0x0158, B:33:0x0172, B:35:0x0181, B:37:0x0187, B:39:0x01a8, B:40:0x01ad, B:44:0x00e5, B:45:0x00c5, B:46:0x00cb, B:47:0x008a, B:50:0x0094), top: B:2:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static FilamentMaterialTemplate o(String fragmentShaderCode, String vertexCode, Map<String, Vb.c> uniformParams, Map<String, MaterialBuilder.m> samplerParams, MaterialConfig materialConfig, String debugIpp) {
        oc.b l10;
        String m10;
        String n10;
        int l11;
        ByteBuffer f10;
        char c10;
        com.google.android.filament.filamat.b d10;
        try {
            l10 = C14497a.l();
            m10 = m(fragmentShaderCode, materialConfig, l10);
            n10 = n(vertexCode, materialConfig, l10);
            l11 = l(fragmentShaderCode, vertexCode, materialConfig, l10);
            f10 = ec.b.f(l11);
        } catch (Exception unused) {
            throw new RuntimeException("Failed to compile shader!");
        }
        if (f10 != null) {
            ByteBuffer duplicate = f10.duplicate();
            duplicate.rewind();
            return new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
        }
        Sb.b bVar = (Sb.b) new Sb.b().v("CustomMaterialShader-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).C(MaterialBuilder.t.UV0).C(MaterialBuilder.t.TANGENTS).C(com.itsmagic.engine.Engines.Engine.Vertex.a.f80006a.f80008a).C(com.itsmagic.engine.Engines.Engine.Vertex.a.f80007b.f80008a);
        String str = materialConfig.shadingModel;
        int hashCode = str.hashCode();
        if (hashCode == 107159) {
            if (str.equals("lit")) {
                c10 = 0;
                if (c10 != 0) {
                }
                if ("true".equalsIgnoreCase(materialConfig.refraction)) {
                }
                bVar.c(MaterialBuilder.a.valueOf(materialConfig.blendingMode.toUpperCase(Locale.ROOT)));
                bVar.m(materialConfig.doubleSided);
                while (r10.hasNext()) {
                }
                while (r10.hasNext()) {
                }
                j(bVar, l10);
                bVar.r(m10);
                bVar.t(n10);
                d10 = bVar.d();
                if (d10 != null) {
                }
                throw new RuntimeException("Failed to compile shader!");
            }
            c10 = '\uffff';
            if (c10 != 0) {
            }
            if ("true".equalsIgnoreCase(materialConfig.refraction)) {
            }
            bVar.c(MaterialBuilder.a.valueOf(materialConfig.blendingMode.toUpperCase(Locale.ROOT)));
            bVar.m(materialConfig.doubleSided);
            while (r10.hasNext()) {
            }
            while (r10.hasNext()) {
            }
            j(bVar, l10);
            bVar.r(m10);
            bVar.t(n10);
            d10 = bVar.d();
            if (d10 != null) {
            }
            throw new RuntimeException("Failed to compile shader!");
        }
        if (hashCode == 111436126 && str.equals("unlit")) {
            c10 = 1;
            if (c10 != 0) {
                bVar.E(MaterialBuilder.n.LIT);
            } else if (c10 != 1) {
                J4.d.E1();
                J4.d.M1("Invalid shadingModel type[" + materialConfig.shadingModel + "] at shader:" + debugIpp);
            } else {
                bVar.E(MaterialBuilder.n.UNLIT);
            }
            if ("true".equalsIgnoreCase(materialConfig.refraction)) {
                bVar.B(MaterialBuilder.k.SOLID);
            } else {
                bVar.B(MaterialBuilder.k.THIN);
                bVar.A(MaterialBuilder.j.SCREEN_SPACE);
            }
            bVar.c(MaterialBuilder.a.valueOf(materialConfig.blendingMode.toUpperCase(Locale.ROOT)));
            bVar.m(materialConfig.doubleSided);
            for (Map.Entry<String, Vb.c> entry : uniformParams.entrySet()) {
                Vb.c value = entry.getValue();
                bVar.O(value.f26805a, value.f26806b, entry.getKey());
            }
            for (Map.Entry<String, MaterialBuilder.m> entry2 : samplerParams.entrySet()) {
                bVar.D(entry2.getValue(), MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, entry2.getKey());
            }
            j(bVar, l10);
            bVar.r(m10);
            bVar.t(n10);
            d10 = bVar.d();
            if (d10 != null || !d10.b()) {
                throw new RuntimeException("Failed to compile shader!");
            }
            ByteBuffer a10 = d10.a();
            ByteBuffer duplicate2 = a10.duplicate();
            duplicate2.rewind();
            ec.b.l(l11, a10);
            return new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
        }
        c10 = '\uffff';
        if (c10 != 0) {
        }
        if ("true".equalsIgnoreCase(materialConfig.refraction)) {
        }
        bVar.c(MaterialBuilder.a.valueOf(materialConfig.blendingMode.toUpperCase(Locale.ROOT)));
        bVar.m(materialConfig.doubleSided);
        while (r10.hasNext()) {
        }
        while (r10.hasNext()) {
        }
        j(bVar, l10);
        bVar.r(m10);
        bVar.t(n10);
        d10 = bVar.d();
        if (d10 != null) {
        }
        throw new RuntimeException("Failed to compile shader!");
        throw new RuntimeException("Failed to compile shader!");
    }

    public static void p(String fragmentShaderCode, String vertexCode, Map<String, Vb.c> uniformParams, Map<String, MaterialBuilder.m> samplerParams, MaterialConfig materialConfig, oc.b sceneVFXShader, String debugIpp) {
        String m10 = m(fragmentShaderCode, materialConfig, sceneVFXShader);
        String n10 = n(vertexCode, materialConfig, sceneVFXShader);
        int l10 = l(fragmentShaderCode, vertexCode, materialConfig, sceneVFXShader);
        if (ec.b.h(l10) || ec.b.j(l10)) {
            return;
        }
        Sb.b bVar = (Sb.b) new Sb.b().v("CustomMaterialShader-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).C(MaterialBuilder.t.UV0).C(MaterialBuilder.t.TANGENTS).C(com.itsmagic.engine.Engines.Engine.Vertex.a.f80006a.f80008a).C(com.itsmagic.engine.Engines.Engine.Vertex.a.f80007b.f80008a);
        String str = materialConfig.shadingModel;
        str.hashCode();
        if (str.equals("lit")) {
            bVar.E(MaterialBuilder.n.LIT);
        } else if (str.equals("unlit")) {
            bVar.E(MaterialBuilder.n.UNLIT);
        } else {
            J4.d.E1();
            J4.d.M1("Invalid shadingModel type[" + materialConfig.shadingModel + "] at shader:" + debugIpp);
        }
        if ("true".equalsIgnoreCase(materialConfig.refraction)) {
            bVar.B(MaterialBuilder.k.THIN);
            bVar.A(MaterialBuilder.j.SCREEN_SPACE);
        } else {
            bVar.B(MaterialBuilder.k.SOLID);
        }
        try {
            bVar.c(MaterialBuilder.a.valueOf(materialConfig.blendingMode.toUpperCase(Locale.ROOT)));
        } catch (IllegalArgumentException e10) {
            e10.printStackTrace();
            J4.d.E1();
            J4.d.M1("Invalid blending mode [" + materialConfig.blendingMode + "] at shader:" + debugIpp);
        }
        bVar.m(materialConfig.doubleSided);
        if (uniformParams != null) {
            for (Map.Entry<String, Vb.c> entry : uniformParams.entrySet()) {
                Vb.c value = entry.getValue();
                bVar.O(value.f26805a, value.f26806b, entry.getKey());
            }
        }
        if (samplerParams != null) {
            for (Map.Entry<String, MaterialBuilder.m> entry2 : samplerParams.entrySet()) {
                bVar.D(entry2.getValue(), MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, entry2.getKey());
            }
        }
        j(bVar, sceneVFXShader);
        bVar.r(m10);
        bVar.t(n10);
        com.google.android.filament.filamat.b d10 = bVar.d();
        if (d10 != null && d10.b()) {
            ec.b.l(l10, d10.a());
            return;
        }
        if (!C15377a.f109719g.booleanValue()) {
            System.out.println("SHADER VERTEX:\n" + n10 + "\nFRAGMENT:\n" + m10);
        }
        throw new RuntimeException("Failed to compile shader!");
    }

    public static String q(oc.b sceneVFXShader) {
        if (sceneVFXShader == null || sceneVFXShader.b() == null || sceneVFXShader.b().isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        List<ec.f> b10 = sceneVFXShader.b();
        for (int i10 = 0; i10 < b10.size(); i10++) {
            ec.f fVar = b10.get(i10);
            if (fVar != null) {
                sb2.append("|p:");
                sb2.append((Object) fVar.d());
                sb2.append(s.f32937c);
                sb2.append((Object) fVar.b());
                sb2.append(s.f32937c);
                sb2.append(fVar.c());
                sb2.append(s.f32937c);
                sb2.append(fVar.a());
            }
        }
        return sb2.toString();
    }

    public static String r(oc.b sceneVFXShader, MaterialConfig materialConfig, h.c source) {
        if (sceneVFXShader != null && sceneVFXShader.g() != null && !sceneVFXShader.g().isEmpty()) {
            String A10 = A(source, materialConfig != null && "lit".equalsIgnoreCase(materialConfig.shadingModel), materialConfig != null && "true".equalsIgnoreCase(materialConfig.refraction));
            if (A10 != null && !A10.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                List<String> g10 = sceneVFXShader.g();
                for (int i10 = 0; i10 < g10.size(); i10++) {
                    String str = g10.get(i10);
                    if (str != null && !str.isEmpty()) {
                        String str2 = str + ConstantDescs.DEFAULT_NAME + source.ordinal();
                        sb2.append(A10.replace("--VFX_COUNTER_PARAM--", "materialParams." + oc.c.i(str)).replace("--VFX_POSITION_PARAM--", "materialParams." + oc.c.k(str)).replace(oc.c.f98678i, oc.c.f98678i + str2 + ConstantDescs.DEFAULT_NAME));
                        sb2.append("\n");
                    }
                }
                return sb2.toString();
            }
        }
        return "";
    }

    public static void s(File file, Map<String, MaterialShader> existingShadersByIpp, List<MaterialShader> reloadedShaders) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    s(file2, existingShadersByIpp, reloadedShaders);
                }
                return;
            }
            return;
        }
        if (C2633l.b(file.getName(), ".mvsc")) {
            String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
            try {
                MaterialShader materialShader = existingShadersByIpp.get(replace);
                if (materialShader == null) {
                    materialShader = new MaterialShader();
                } else {
                    materialShader.f80149g.clear();
                    materialShader.f80145c = null;
                    materialShader.d(0L);
                }
                materialShader.e(replace);
                materialShader.f80143a = false;
                materialShader.f80144b = null;
                String g10 = C2636o.g(file);
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = new HashMap();
                MaterialConfig materialConfig = (MaterialConfig) X7.a.m().fromJson(x(g10), MaterialConfig.class);
                if (materialConfig.name == null) {
                    materialConfig.name = file.getName();
                }
                Vb.d.f(materialConfig, hashMap, hashMap2, materialShader.f80149g, replace);
                String w10 = w(g10);
                String y10 = y(g10);
                oc.b l10 = C14497a.l();
                materialShader.f(materialConfig.name);
                K8.a.l().d().materialShaders.add(materialShader);
                g gVar = new g(materialShader, materialConfig, l10, hashMap, hashMap2, w10, y10, replace);
                List<g> list = f26762m;
                synchronized (list) {
                    list.add(gVar);
                }
                reloadedShaders.add(materialShader);
            } catch (Exception e10) {
                e10.printStackTrace();
                J4.d.E1();
                J4.d.M1("Custom material shader error");
                J4.d.M1("Path:" + replace);
                J4.d.M1("Failed to prepare params from JSON:" + e10.getMessage());
            }
        }
    }

    public static void t(String shaderCode, String vertexCode, Map<String, Vb.c> UNIFORMS, Map<String, MaterialBuilder.m> SAMPLERS, MaterialShader materialShader, MaterialConfig materialConfig, String tag, StringBuilder errors, String debugIpp) throws InterruptedException {
        Semaphore semaphore = new Semaphore(0);
        K8.a.I(new d(shaderCode, vertexCode, UNIFORMS, SAMPLERS, materialConfig, debugIpp, materialShader, semaphore, tag, errors));
        semaphore.tryAcquire(15000L, TimeUnit.MILLISECONDS);
    }

    public static void u(String shaderCode, String vertexCode, Map<String, Vb.c> UNIFORMS, Map<String, MaterialBuilder.m> SAMPLERS, MaterialShader materialShader, MaterialConfig materialConfig, String tag, StringBuilder errors, String debugIpp) throws InterruptedException {
        Semaphore semaphore = new Semaphore(0);
        K8.a.I(new e(shaderCode, vertexCode, UNIFORMS, SAMPLERS, materialConfig, debugIpp, materialShader, semaphore));
        semaphore.tryAcquire(15000L, TimeUnit.MILLISECONDS);
    }

    public static FilamentMaterialTemplate v(int hash) {
        ByteBuffer g10 = ec.b.g(hash);
        if (g10 == null) {
            return null;
        }
        ByteBuffer duplicate = g10.duplicate();
        duplicate.rewind();
        return new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
    }

    public static String w(String text) {
        return text.substring(text.indexOf("-FRAGMENT SHADER-") + 17, text.lastIndexOf("-FRAGMENT SHADER-"));
    }

    public static String x(String text) {
        return text.substring(text.indexOf("-MANIFEST-") + 10, text.lastIndexOf("-MANIFEST-"));
    }

    public static String y(String text) {
        return text.substring(text.indexOf("-VERTEX SHADER-") + 15, text.lastIndexOf("-VERTEX SHADER-"));
    }

    public static long z(oc.b sceneVFXShader) {
        if (sceneVFXShader == null) {
            return 0L;
        }
        return sceneVFXShader.e();
    }
}
