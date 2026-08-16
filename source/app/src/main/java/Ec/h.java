package ec;

import b3.s;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.v;
import ec.e;
import ge.d0;
import he.h0;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import oc.C14497a;
import t3.C15377a;

public class h {

    public static final String f85457q = "[INSERT_VFX_INSTANCE_CODES]";

    public static final String f85458r = "[INSERT_VFX_RUN_CODE]";

    public static final String f85459s = "[INSERT_VFX_SUB_RUN_CODE]";

    public static final String f85460t = "vfx_call_snippet_vertex.glsl";

    public static final String f85461u = "vfx_call_snippet_frag.glsl";

    public static final String f85462v = "vfx_call_snippet_sub_mat.glsl";

    public static String f85463w;

    public static String f85464x;

    public static String f85465y;

    public final gc.e f85467a;

    public String f85468b;

    public final String f85469c;

    public String f85470d;

    public long f85471e;

    public boolean f85472f;

    public int f85473g;

    public final ec.c f85474h;

    public final List<f> f85475i;

    public final List<g> f85476j;

    public final boolean f85477k;

    public volatile String f85478l;

    public final boolean f85479m;

    public final boolean f85480n;

    public final boolean f85481o;

    public final Map<Integer, e> f85482p;

    public static final Object f85466z = new Object();

    public static final Map<Integer, Object> f85455A = new HashMap();

    public static final Map<Integer, byte[]> f85456B = new ConcurrentHashMap();

    public class a implements x8.b {
        @Override
        public void a() {
            h.h();
        }

        @Override
        public void b() {
            h.h();
        }
    }

    public class b implements h0<String> {
        public b() {
        }

        @Override
        public boolean a(String name, int value) {
            try {
                h.this.H(name, value == 1);
            } catch (Exception unused) {
            }
            return true;
        }
    }

    public enum c {
        FRAG,
        VERTEX,
        SUBMAT
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public h(gc.e fragmentRTCC, ec.c materialBuilderInjector, List<f> params, List<g> samples, boolean useProjectCache) {
        this.f85471e = Long.MIN_VALUE;
        this.f85482p = new HashMap();
        this.f85467a = fragmentRTCC;
        this.f85477k = useProjectCache;
        this.f85469c = null;
        this.f85474h = materialBuilderInjector;
        this.f85475i = params;
        this.f85476j = samples;
        this.f85479m = false;
        this.f85480n = true;
        this.f85481o = false;
        L();
    }

    public static boolean A(ByteBuffer payload) {
        if (payload == null || payload.capacity() <= 0) {
            return false;
        }
        if (payload.position() == payload.limit()) {
            try {
                payload.rewind();
            } catch (Exception unused) {
            }
        }
        return payload.remaining() > 0;
    }

    public static ByteBuffer B(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IllegalArgumentException("Arquivo > 2GB: use leitura por blocos ou mapeamento.");
            }
            int i10 = (int) length;
            byte[] bArr = new byte[i10];
            int i11 = 0;
            while (i11 < i10) {
                int read = fileInputStream.read(bArr, i11, i10 - i11);
                if (read == -1) {
                    break;
                }
                i11 += read;
            }
            if (i11 != i10) {
                throw new EOFException("Fim inesperado do arquivo.");
            }
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            fileInputStream.close();
            return wrap;
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static ByteBuffer F(ByteBuffer payload) {
        if (!A(payload)) {
            return null;
        }
        ByteBuffer duplicate = payload.duplicate();
        duplicate.rewind();
        int remaining = duplicate.remaining();
        byte[] bArr = new byte[remaining];
        duplicate.get(bArr);
        if (remaining == 0) {
            return null;
        }
        return ByteBuffer.wrap(bArr);
    }

    public static void G(File file, ByteBuffer buffer) throws IOException {
        ByteBuffer asReadOnlyBuffer = buffer.asReadOnlyBuffer();
        asReadOnlyBuffer.rewind();
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        File file2 = new File(file.getAbsolutePath() + ".tmp");
        if (file2.exists()) {
            file2.delete();
        }
        if (!file2.exists()) {
            file2.createNewFile();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            FileChannel channel = fileOutputStream.getChannel();
            while (asReadOnlyBuffer.hasRemaining()) {
                try {
                    channel.write(asReadOnlyBuffer);
                } finally {
                }
            }
            fileOutputStream.getFD().sync();
            if (channel != null) {
                channel.close();
            }
            fileOutputStream.close();
            if (file.exists() && !file.delete()) {
                file2.delete();
            } else {
                if (file2.renameTo(file)) {
                    return;
                }
                file2.delete();
            }
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void g(int hash, ByteBuffer payload) {
        if (A(payload)) {
            ByteBuffer asReadOnlyBuffer = payload.asReadOnlyBuffer();
            asReadOnlyBuffer.rewind();
            int remaining = asReadOnlyBuffer.remaining();
            byte[] bArr = new byte[remaining];
            asReadOnlyBuffer.get(bArr);
            if (remaining > 0) {
                f85456B.put(Integer.valueOf(hash), bArr);
            }
        }
    }

    public static void h() {
        f85456B.clear();
    }

    public static Object k(int hash) {
        Object obj;
        synchronized (f85466z) {
            try {
                Map<Integer, Object> map = f85455A;
                obj = map.get(Integer.valueOf(hash));
                if (obj == null) {
                    obj = new Object();
                    map.put(Integer.valueOf(hash), obj);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return obj;
    }

    public static ByteBuffer n(int hash) {
        byte[] bArr = f85456B.get(Integer.valueOf(hash));
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return ByteBuffer.wrap(bArr);
    }

    public static boolean u(int hash) {
        byte[] bArr = f85456B.get(Integer.valueOf(hash));
        return bArr != null && bArr.length > 0;
    }

    public boolean C(i variance) {
        return D(variance, false);
    }

    public final boolean D(i variance, boolean forceRebuild) {
        d(variance);
        L();
        this.f85478l = null;
        int hashCode = (variance.d() + "-" + this.f85473g).hashCode();
        if (!forceRebuild && u(hashCode)) {
            return true;
        }
        synchronized (k(hashCode)) {
            if (!forceRebuild) {
                try {
                    if (this.f85482p.containsKey(Integer.valueOf(hashCode))) {
                        return true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            File file = new File(j() + hashCode + ".vsc");
            if (forceRebuild) {
                if (file.exists()) {
                    return true;
                }
                ByteBuffer n10 = n(hashCode);
                if (A(n10)) {
                    try {
                        G(file, n10);
                        return true;
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            if (!forceRebuild && file.exists()) {
                try {
                    ByteBuffer B10 = B(file);
                    if (A(B10)) {
                        g(hashCode, B10);
                    } else {
                        file.delete();
                    }
                } catch (IOException unused) {
                }
                return true;
            }
            Sb.b bVar = (Sb.b) new Sb.b().v(Tc.b.L()).x(MaterialBuilder.h.MOBILE).w(MaterialBuilder.f.PERFORMANCE);
            bVar.C(MaterialBuilder.t.UV0);
            bVar.C(com.itsmagic.engine.Engines.Engine.Vertex.a.f80006a.f80008a);
            bVar.C(com.itsmagic.engine.Engines.Engine.Vertex.a.f80007b.f80008a);
            this.f85474h.a(bVar);
            bVar.c(variance.f85484a);
            bVar.q(variance.f85485b);
            bVar.i(variance.f85486c);
            bVar.m(variance.f85487d);
            bVar.k(variance.f85491h);
            bVar.l(variance.f85490g);
            if (variance.f85489f != null) {
                bVar.B(MaterialBuilder.k.THIN);
                bVar.A(MaterialBuilder.j.SCREEN_SPACE);
            } else {
                bVar.B(MaterialBuilder.k.SOLID);
            }
            e.a q10 = new e.a(Tc.b.L()).x(bVar).s(this.f85470d).q(this.f85468b);
            b(q10);
            for (int i10 = 0; i10 < this.f85476j.size(); i10++) {
                q10.o(this.f85476j.get(i10));
            }
            try {
                q10.a();
                ByteBuffer j10 = q10.j();
                if (!A(j10)) {
                    return true;
                }
                g(hashCode, j10);
                try {
                    G(file, j10);
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                return true;
            } catch (RuntimeException e12) {
                this.f85478l = e12.getMessage() != null ? e12.getMessage() : "Failed to compile material";
                e12.printStackTrace();
                return false;
            }
        }
    }

    public boolean E(i variance) {
        return D(variance, true);
    }

    public void H(String name, boolean value) {
        this.f85467a.o(name, value);
    }

    public void I(String lastCompileError) {
        this.f85478l = lastCompileError;
    }

    public final boolean J() {
        if (this.f85477k) {
            return true;
        }
        return this.f85479m && this.f85471e != 0;
    }

    public final e K(ByteBuffer payload, String matName) {
        if (!A(payload)) {
            return null;
        }
        try {
            ByteBuffer F10 = F(payload);
            if (!A(F10)) {
                return null;
            }
            e.a q10 = new e.a(matName).s(this.f85470d).q(this.f85468b);
            b(q10);
            for (int i10 = 0; i10 < this.f85476j.size(); i10++) {
                q10.o(this.f85476j.get(i10));
            }
            q10.y(F10, null);
            e e10 = q10.e();
            q10.b();
            return e10;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public final void L() {
        String b10 = this.f85467a.b();
        oc.b o10 = o();
        boolean z10 = w(b10) || w(this.f85469c);
        this.f85472f = z10;
        if (!z10) {
            o10 = null;
        }
        long p10 = p(o10);
        boolean z11 = z(p10);
        if (this.f85467a.c() || z11 || this.f85468b == null || (this.f85469c != null && this.f85470d == null)) {
            this.f85468b = x(b10, o10, false);
            String x10 = x(this.f85469c, o10, true);
            this.f85470d = x10;
            if (x10 != null) {
                this.f85470d = i(x10);
            }
            this.f85471e = p10;
            this.f85467a.n();
            String e10 = e(o10);
            if (this.f85470d == null) {
                this.f85473g = (this.f85468b + e10).hashCode();
                return;
            }
            this.f85473g = (this.f85470d + this.f85468b + e10).hashCode();
        }
    }

    public final void a(e.a builder, f param) {
        if (param == null) {
            return;
        }
        if (param.c() > 0) {
            builder.w(param.d(), param.b(), param.a(), param.c());
        } else {
            builder.v(param);
        }
    }

    public final void b(e.a builder) {
        for (int i10 = 0; i10 < this.f85475i.size(); i10++) {
            a(builder, this.f85475i.get(i10));
        }
        oc.b o10 = o();
        if (this.f85471e == 0 || o10 == null || o10.b() == null) {
            return;
        }
        List<f> b10 = o10.b();
        for (int i11 = 0; i11 < b10.size(); i11++) {
            a(builder, b10.get(i11));
        }
    }

    public final void c(StringBuilder builder, List<f> parameterList) {
        for (int i10 = 0; i10 < parameterList.size(); i10++) {
            f fVar = parameterList.get(i10);
            if (fVar != null) {
                builder.append("|p:");
                builder.append((Object) fVar.d());
                builder.append(s.f32937c);
                builder.append((Object) fVar.b());
                builder.append(s.f32937c);
                builder.append(fVar.c());
                builder.append(s.f32937c);
                builder.append(fVar.a());
            }
        }
    }

    public final void d(i variance) {
        d0<String> d0Var;
        if (variance == null || (d0Var = variance.f85488e) == null || d0Var.isEmpty()) {
            return;
        }
        variance.f85488e.n9(new b());
    }

    public final String e(oc.b sceneVFXShader) {
        StringBuilder sb2 = new StringBuilder();
        c(sb2, this.f85475i);
        if (sceneVFXShader != null && sceneVFXShader.b() != null) {
            c(sb2, sceneVFXShader.b());
        }
        for (int i10 = 0; i10 < this.f85476j.size(); i10++) {
            g gVar = this.f85476j.get(i10);
            if (gVar != null) {
                sb2.append("|s:");
                sb2.append((Object) gVar.d());
                sb2.append(s.f32937c);
                sb2.append((Object) gVar.a());
                sb2.append(s.f32937c);
                sb2.append((Object) gVar.c());
                sb2.append(s.f32937c);
                sb2.append(gVar.b());
            }
        }
        return sb2.toString();
    }

    public final String f(oc.b sceneVFXShader, c source) {
        String q10;
        if (sceneVFXShader == null || sceneVFXShader.g() == null || sceneVFXShader.g().isEmpty() || (q10 = q(source)) == null || q10.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        List<String> g10 = sceneVFXShader.g();
        for (int i10 = 0; i10 < g10.size(); i10++) {
            String str = g10.get(i10);
            if (str != null && !str.isEmpty()) {
                String str2 = str + ConstantDescs.DEFAULT_NAME + source.ordinal();
                sb2.append(q10.replace("--VFX_COUNTER_PARAM--", "materialParams." + oc.c.i(str)).replace("--VFX_POSITION_PARAM--", "materialParams." + oc.c.k(str)).replace(oc.c.f98678i, oc.c.f98678i + str2 + ConstantDescs.DEFAULT_NAME));
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    public final String i(String code) {
        return code.replace("getUserWorldPosition()", "getUserWorldPosition(v.worldPosition.xyz)");
    }

    public final String j() {
        String e10 = ec.b.e();
        if (e10 != null) {
            return e10;
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0() && J()) {
            return com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_VULKAN/";
        }
        return W7.b.f27306f.f2458a.f() + "/vulkan/";
    }

    public long l() {
        if (this.f85479m) {
            return this.f85471e;
        }
        return 0L;
    }

    public String m() {
        return this.f85478l;
    }

    public final oc.b o() {
        if (this.f85479m) {
            return C14497a.l();
        }
        return null;
    }

    public final long p(oc.b sceneVFXShader) {
        if (sceneVFXShader == null) {
            return 0L;
        }
        return sceneVFXShader.e();
    }

    public final String q(c source) {
        int ordinal = source.ordinal();
        if (ordinal == 0) {
            if (f85464x == null) {
                f85464x = oc.c.m(f85461u);
            }
            return v.b(f85464x, this.f85480n, this.f85481o);
        }
        if (ordinal == 1) {
            if (f85463w == null) {
                f85463w = oc.c.m(f85460t);
            }
            return f85463w;
        }
        if (ordinal != 2) {
            throw new IllegalArgumentException();
        }
        if (f85465y == null) {
            f85465y = oc.c.m(f85462v);
        }
        return v.b(f85465y, this.f85480n, this.f85481o);
    }

    public e r(i variance, String matName) {
        d(variance);
        L();
        int hashCode = (variance.d() + "-" + this.f85473g).hashCode();
        if (this.f85482p.containsKey(Integer.valueOf(hashCode))) {
            return this.f85482p.get(Integer.valueOf(hashCode));
        }
        ByteBuffer n10 = n(hashCode);
        if (A(n10)) {
            e K10 = K(n10, matName);
            if (K10 != null) {
                this.f85482p.put(Integer.valueOf(hashCode), K10);
                return K10;
            }
            f85456B.remove(Integer.valueOf(hashCode));
        }
        synchronized (k(hashCode)) {
            try {
                if (this.f85482p.containsKey(Integer.valueOf(hashCode))) {
                    return this.f85482p.get(Integer.valueOf(hashCode));
                }
                ByteBuffer n11 = n(hashCode);
                if (A(n11)) {
                    e K11 = K(n11, matName);
                    if (K11 != null) {
                        this.f85482p.put(Integer.valueOf(hashCode), K11);
                        return K11;
                    }
                    f85456B.remove(Integer.valueOf(hashCode));
                }
                File file = new File(j() + hashCode + ".vsc");
                if (file.exists()) {
                    try {
                        ByteBuffer B10 = B(file);
                        if (!A(B10)) {
                            file.delete();
                            B10 = null;
                        }
                        e.a q10 = new e.a(matName).s(this.f85470d).q(this.f85468b);
                        b(q10);
                        for (int i10 = 0; i10 < this.f85476j.size(); i10++) {
                            q10.o(this.f85476j.get(i10));
                        }
                        if (B10 != null) {
                            try {
                                g(hashCode, B10);
                                e K12 = K(B10, matName);
                                if (K12 != null) {
                                    this.f85482p.put(Integer.valueOf(hashCode), K12);
                                    return K12;
                                }
                                f85456B.remove(Integer.valueOf(hashCode));
                                file.delete();
                            } catch (RuntimeException unused) {
                                file.delete();
                            }
                        }
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
                Sb.b bVar = (Sb.b) new Sb.b().v(Tc.b.L()).x(MaterialBuilder.h.MOBILE).w(MaterialBuilder.f.PERFORMANCE);
                this.f85474h.a(bVar);
                bVar.c(variance.f85484a);
                bVar.q(variance.f85485b);
                bVar.i(variance.f85486c);
                bVar.m(variance.f85487d);
                bVar.k(variance.f85491h);
                bVar.l(variance.f85490g);
                if (variance.f85489f != null) {
                    bVar.B(MaterialBuilder.k.THIN);
                    bVar.A(MaterialBuilder.j.SCREEN_SPACE);
                } else {
                    bVar.B(MaterialBuilder.k.SOLID);
                }
                e.a q11 = new e.a(matName).x(bVar).s(this.f85470d).q(this.f85468b);
                b(q11);
                for (int i11 = 0; i11 < this.f85476j.size(); i11++) {
                    q11.o(this.f85476j.get(i11));
                }
                try {
                    q11.c();
                    ByteBuffer j10 = q11.j();
                    if (A(j10)) {
                        g(hashCode, j10);
                        try {
                            G(file, j10);
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                    e e12 = q11.e();
                    this.f85482p.put(Integer.valueOf(hashCode), e12);
                    q11.b();
                    return e12;
                } catch (RuntimeException e13) {
                    if (!C15377a.f109719g.booleanValue()) {
                        System.out.println("SHADER CODE VERTEX:\n" + this.f85470d + "\nFRAGMENT:\n" + this.f85468b);
                    }
                    e13.printStackTrace();
                    return null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean s() {
        return this.f85467a.c() || z(this.f85472f ? p(o()) : 0L);
    }

    public boolean t(i variance) {
        d(variance);
        L();
        int hashCode = (variance.d() + "-" + this.f85473g).hashCode();
        if (u(hashCode)) {
            return true;
        }
        File file = new File(j() + hashCode + ".vsc");
        return file.exists() && file.length() > 0;
    }

    public boolean v(i variance) {
        if (variance == null) {
            return false;
        }
        d(variance);
        L();
        return u((variance.d() + "-" + this.f85473g).hashCode());
    }

    public final boolean w(String code) {
        if (code == null) {
            return false;
        }
        return code.contains(f85458r);
    }

    public final String x(String code, oc.b sceneVFXShader, boolean vertex) {
        String str;
        if (code == null || !this.f85479m) {
            return code;
        }
        if (!code.contains(f85457q) && !code.contains(f85458r)) {
            return code;
        }
        String str2 = "";
        if (sceneVFXShader != null) {
            if (vertex) {
                str = sceneVFXShader.f();
            } else {
                str = sceneVFXShader.a() + "\n" + sceneVFXShader.c();
            }
            if (str != null) {
                str2 = str;
            }
        }
        return vertex ? code.replace(f85457q, str2).replace(f85458r, f(sceneVFXShader, c.VERTEX)) : code.replace(f85457q, str2).replace(f85458r, f(sceneVFXShader, c.FRAG)).replace(f85459s, f(sceneVFXShader, c.SUBMAT));
    }

    public boolean y() {
        return this.f85479m;
    }

    public final boolean z(long sceneVFXShaderHash) {
        return this.f85479m && this.f85471e != sceneVFXShaderHash;
    }

    public h(gc.e fragmentRTCC, String vertexCode, ec.c materialBuilderInjector, List<f> params, List<g> samples, boolean useProjectCache) {
        this.f85471e = Long.MIN_VALUE;
        this.f85482p = new HashMap();
        this.f85467a = fragmentRTCC;
        this.f85469c = vertexCode;
        this.f85474h = materialBuilderInjector;
        this.f85475i = params;
        this.f85476j = samples;
        this.f85477k = useProjectCache;
        this.f85479m = false;
        this.f85480n = true;
        this.f85481o = false;
        L();
    }

    public h(gc.e fragmentRTCC, String vertexCode, ec.c materialBuilderInjector, List<f> params, List<g> samples, boolean useProjectCache, boolean isEasy) {
        this(fragmentRTCC, vertexCode, materialBuilderInjector, params, samples, useProjectCache, isEasy, true);
    }

    public h(gc.e fragmentRTCC, String vertexCode, ec.c materialBuilderInjector, List<f> params, List<g> samples, boolean useProjectCache, boolean isEasy, boolean easyMaterialIsLit) {
        this(fragmentRTCC, vertexCode, materialBuilderInjector, params, samples, useProjectCache, isEasy, easyMaterialIsLit, false);
    }

    public h(gc.e fragmentRTCC, String vertexCode, ec.c materialBuilderInjector, List<f> params, List<g> samples, boolean useProjectCache, boolean isEasy, boolean easyMaterialIsLit, boolean easyMaterialIsRefractive) {
        this.f85471e = Long.MIN_VALUE;
        this.f85482p = new HashMap();
        this.f85467a = fragmentRTCC;
        this.f85469c = vertexCode;
        this.f85474h = materialBuilderInjector;
        this.f85475i = params;
        this.f85476j = samples;
        this.f85477k = useProjectCache;
        this.f85479m = isEasy;
        this.f85480n = easyMaterialIsLit;
        this.f85481o = easyMaterialIsLit && easyMaterialIsRefractive;
        L();
    }
}
