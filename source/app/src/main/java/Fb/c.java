package Fb;

import Ic.C2633l;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.UnsupportedFileException;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.InvalidFilePath;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;

public class c {

    public static final Object f6743a;

    public static final List<Hb.c> f6744b;

    public static final Map<String, Hb.c> f6745c;

    public static final List<Hb.c> f6746d;

    public static final char[] f6747e;

    public class a implements x8.b {
        @Override
        public void a() {
            synchronized (c.f6744b) {
                c.f6744b.clear();
                c.f6745c.clear();
            }
        }

        @Override
        public void b() {
            synchronized (c.f6744b) {
                c.f6744b.clear();
                c.f6745c.clear();
            }
        }
    }

    public class b implements g {
        @Override
        public void setProgress(float v10) {
        }
    }

    public class C0128c implements g {
        @Override
        public void setProgress(float v10) {
        }
    }

    public class d implements g {
        @Override
        public void setProgress(float v10) {
        }
    }

    public class e implements MeshSerializer.b {

        public final g f6748a;

        public e(final g val$listener) {
            this.f6748a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f6748a.setProgress(v10);
        }
    }

    public class f implements MeshSerializer.b {

        public final g f6749a;

        public f(final g val$listener) {
            this.f6749a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f6749a.setProgress(v10);
        }
    }

    public interface g {
        void setProgress(float v10);
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
        f6743a = new Object();
        f6744b = new SteppedArrayList(1000);
        f6745c = new HashMap(1000);
        f6746d = new SteppedArrayList(1000);
        f6747e = new char[]{':', JavaElement.JEM_ESCAPE, '?', '*'};
    }

    public static void A(String path) {
        if (path == null || path.isEmpty()) {
            throw new InvalidFilePath();
        }
        synchronized (f6743a) {
            try {
                Map<String, Hb.c> map = f6745c;
                Hb.c cVar = map.get(path);
                if (cVar != null && cVar.f()) {
                    map.remove(path);
                    f6744b.remove(cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static File B(File file) {
        String name;
        String C10;
        if (file == null || (C10 = C((name = file.getName()))) == null || C10.equals(name)) {
            return null;
        }
        File parentFile = file.getParentFile();
        return parentFile == null ? new File(C10) : new File(parentFile, C10);
    }

    public static String C(String path) {
        if (path == null) {
            return null;
        }
        int i10 = 0;
        while (true) {
            char[] cArr = f6747e;
            if (i10 >= cArr.length) {
                return path;
            }
            path = path.replace(cArr[i10], '_');
            i10++;
        }
    }

    public static Vertex D(int i10) {
        Vertex b10;
        synchronized (f6743a) {
            b10 = f6744b.get(i10).b();
        }
        return b10;
    }

    public static void c(Vertex vertex) {
        if (vertex == null) {
            throw new NullPointerException("Material can't be null!");
        }
        String str = vertex.f79966b;
        if (str == null || str.isEmpty()) {
            throw new NullPointerException("Material file can't be null or empty!");
        }
        synchronized (f6743a) {
            try {
                Map<String, Hb.c> map = f6745c;
                if (!map.containsKey(vertex.f79966b)) {
                    Hb.c cVar = new Hb.c(vertex, vertex.f79966b);
                    f6744b.add(cVar);
                    map.put(cVar.c(), cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Vertex d(String file, Vertex vertex) {
        if (vertex == null) {
            throw new NullPointerException("vertex can't be null");
        }
        if (file == null || file.isEmpty()) {
            throw new InvalidFilePath();
        }
        synchronized (f6743a) {
            try {
                if (!g(vertex)) {
                    vertex.f79966b = file;
                    c(vertex);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return vertex;
    }

    public static void e(String file, Vertex vertex) {
        if (vertex == null) {
            throw new NullPointerException("vertex can't be null");
        }
        if (file == null || file.isEmpty()) {
            throw new InvalidFilePath();
        }
        synchronized (f6743a) {
            vertex.f79966b = file;
            c(vertex);
        }
    }

    public static void f(String file) {
        synchronized (f6743a) {
            try {
                Map<String, Hb.c> map = f6745c;
                Hb.c cVar = map.get(file);
                if (cVar != null && cVar.f()) {
                    cVar.d();
                    map.remove(file);
                    f6744b.remove(cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean g(Vertex vertex) {
        if (vertex == null) {
            throw new NullPointerException("vertex can't be null");
        }
        String str = vertex.f79966b;
        if (str == null || str.isEmpty()) {
            throw new InvalidFilePath();
        }
        synchronized (f6743a) {
            try {
                Hb.c cVar = f6745c.get(vertex.f79966b);
                return cVar != null && cVar.f();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static int h() {
        int size;
        synchronized (f6743a) {
            size = f6744b.size();
        }
        return size;
    }

    public static Hb.c i(Vertex vertex) {
        if (vertex == null) {
            throw new NullPointerException("vertex can't be null");
        }
        String str = vertex.f79966b;
        if (str == null || str.isEmpty()) {
            throw new InvalidFilePath();
        }
        synchronized (f6743a) {
            try {
                Hb.c cVar = f6745c.get(vertex.f79966b);
                if (cVar == null || !cVar.f()) {
                    return null;
                }
                return cVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Vertex j(String file) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new InvalidFilePath();
        }
        synchronized (f6743a) {
            try {
                Hb.c cVar = f6745c.get(o10);
                if (cVar == null || !cVar.f()) {
                    return null;
                }
                return cVar.b();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Vertex k(File file, Fb.a importSettings, g listener) {
        File B10;
        try {
            if (!C2633l.b(file.getName(), ".mesh") && !C2633l.b(file.getName(), ".mwf")) {
                throw new UnsupportedFileException();
            }
            Vertex s10 = s(file, importSettings, new b());
            if (s10 == null && (B10 = B(file)) != null && !B10.equals(file) && (s10 = s(B10, importSettings, new C0128c())) != null) {
                file = B10;
            }
            if (s10 != null) {
                s10.f79966b = file.getAbsolutePath();
                c(s10);
            }
            return s10;
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Vertex l(File file, g listener) {
        return k(file, null, listener);
    }

    public static Vertex m(String localFilePath, boolean fromAssets, Context context, boolean individualVertex, Fb.a importSettings, g listener) {
        Vertex j10;
        RuntimeException runtimeException;
        Vertex vertex;
        if (localFilePath == null || localFilePath.isEmpty()) {
            throw new InvalidFilePath();
        }
        String o10 = Tc.b.o(localFilePath);
        if (o10.isEmpty()) {
            throw new InvalidFilePath();
        }
        String C10 = C(localFilePath);
        if (C10 != null) {
            C10 = Tc.b.o(C10);
            if (C10.isEmpty()) {
                C10 = null;
            }
            if (C10 != null && C10.equals(o10)) {
                C10 = null;
            }
        }
        synchronized (f6743a) {
            if (!individualVertex) {
                try {
                    Vertex j11 = j(o10);
                    if (j11 != null) {
                        y(j11, importSettings);
                        return j11;
                    }
                    if (C10 != null && !C10.isEmpty() && (j10 = j(C10)) != null) {
                        y(j10, importSettings);
                        return j10;
                    }
                } finally {
                }
            }
            try {
                vertex = r(o10, fromAssets, context, importSettings, listener);
                runtimeException = null;
            } catch (RuntimeException e10) {
                runtimeException = e10;
                vertex = null;
            }
            if (vertex == null && C10 != null) {
                try {
                    vertex = r(C10, fromAssets, context, importSettings, listener);
                    if (vertex != null) {
                        o10 = C10;
                        runtimeException = null;
                    }
                } catch (RuntimeException e11) {
                    if (runtimeException == null) {
                        runtimeException = e11;
                    }
                }
            }
            if (vertex == null) {
                if (runtimeException == null) {
                    return null;
                }
                throw runtimeException;
            }
            y(vertex, importSettings);
            if (!individualVertex) {
                synchronized (f6743a) {
                    try {
                        Vertex j12 = j(o10);
                        if (j12 != null) {
                            y(j12, importSettings);
                            return j12;
                        }
                        vertex.f79966b = o10;
                        c(vertex);
                    } finally {
                    }
                }
            }
            return vertex;
        }
    }

    public static Vertex n(String localFilePath, boolean fromAssets, Context context, boolean individualVertex, g listener) {
        return m(localFilePath, fromAssets, context, individualVertex, null, listener);
    }

    public static Vertex o(String filePath, boolean fromAssets, boolean individualVertex, Fb.a importSettings, g listener) {
        return m(filePath, fromAssets, N7.c.t(), individualVertex, importSettings, listener);
    }

    public static Vertex p(String filePath, boolean fromAssets, boolean individualVertex, g listener) {
        return m(filePath, fromAssets, N7.c.t(), individualVertex, null, listener);
    }

    public static Vertex q(InputStream file, Fb.a importSettings, g listener) {
        try {
            if (u(file)) {
                return t(file, importSettings, new d());
            }
            throw new UnsupportedFileException();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Vertex r(String localFilePath, boolean fromAssets, Context context, Fb.a importSettings, g listener) {
        if (!C2633l.b(localFilePath, ".mesh") && !C2633l.b(localFilePath, ".mwf")) {
            throw new UnsupportedFileException();
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.S(context).contains("@@ASSET@@") && !fromAssets) {
            return t(X7.a.p(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R().replace("@@ASSET@@", "") + "/" + localFilePath), context), importSettings, listener);
        }
        if (fromAssets) {
            return t(X7.a.p("@@ASSET@@" + localFilePath, context), importSettings, listener);
        }
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + Tc.b.o(localFilePath);
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        return s(new File(str.replace("//", "/")), importSettings, listener);
    }

    public static Vertex s(File file, Fb.a importSettings, g listener) {
        if (file == null) {
            throw new InvalidFilePath();
        }
        Vertex h10 = MeshSerializer.h(file, importSettings, listener != null ? new f(listener) : null);
        if (h10 != null) {
            return h10;
        }
        return null;
    }

    public static Vertex t(InputStream inputStream, Fb.a importSettings, g listener) {
        if (inputStream == null) {
            throw new InvalidFilePath();
        }
        Vertex j10 = MeshSerializer.j(inputStream, importSettings, listener != null ? new e(listener) : null);
        if (j10 != null) {
            return j10;
        }
        throw new RuntimeException("Failed to load vertex");
    }

    public static boolean u(InputStream inputStream) throws IOException {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        inputStream.mark(4);
        byte[] bArr = new byte[4];
        int read = inputStream.read(bArr);
        inputStream.reset();
        if (read != 4 || bArr[0] != 80 || bArr[1] != 75) {
            return false;
        }
        byte b10 = bArr[2];
        if (b10 != 3 && b10 != 5 && b10 != 7) {
            return false;
        }
        byte b11 = bArr[3];
        return b11 == 4 || b11 == 6 || b11 == 8;
    }

    public static void v() {
        synchronized (f6743a) {
            f6744b.clear();
            f6745c.clear();
        }
    }

    public static void w() {
        List<Hb.c> list;
        synchronized (f6743a) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    List<Hb.c> list2 = f6744b;
                    if (i11 >= list2.size()) {
                        break;
                    }
                    Hb.c cVar = list2.get(i11);
                    if (cVar != null && !cVar.e()) {
                        f6746d.add(cVar);
                    }
                    i11++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!f6746d.isEmpty()) {
                while (true) {
                    list = f6746d;
                    if (i10 >= list.size()) {
                        break;
                    }
                    Hb.c cVar2 = list.get(i10);
                    f6744b.remove(cVar2);
                    f6745c.remove(cVar2.c());
                    i10++;
                }
                list.clear();
            }
        }
    }

    public static void x() {
        synchronized (f6743a) {
            int i10 = 0;
            while (true) {
                try {
                    List<Hb.c> list = f6744b;
                    if (i10 < list.size()) {
                        Hb.c cVar = list.get(i10);
                        if (cVar.f() && cVar.b().w1()) {
                            f6746d.add(cVar);
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void y(Vertex vertex, Fb.a importSettings) {
        if (vertex == null) {
            return;
        }
        if (importSettings == null) {
            if (vertex.x1() || vertex.u1()) {
                return;
            }
            vertex.apply();
            return;
        }
        if (!importSettings.f6730a) {
            if (importSettings.f6731b) {
                vertex.d0();
            }
        } else {
            if (vertex.x1() || vertex.u1()) {
                return;
            }
            vertex.apply();
        }
    }

    public static void z(Vertex vertex) {
        if (vertex == null) {
            throw new NullPointerException("vertex can't be null");
        }
        String str = vertex.f79966b;
        if (str == null || str.isEmpty()) {
            throw new InvalidFilePath();
        }
        synchronized (f6743a) {
            try {
                Map<String, Hb.c> map = f6745c;
                Hb.c cVar = map.get(vertex.f79966b);
                if (cVar != null && cVar.f()) {
                    map.remove(vertex.f79966b);
                    f6744b.remove(cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
