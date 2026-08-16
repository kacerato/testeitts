package Hc;

import Mc.i;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Sound.Imported.ImportedAudioHeader;
import com.itsmagic.engine.Engines.Sound.Imported.d;
import com.itsmagic.engine.Engines.Sound.Imported.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class c {

    public static final Object f8336a = new Object();

    public static final i<f> f8337b = new i<>();

    public static final Map<String, f> f8338c = new HashMap();

    public static final List<f> f8339d = new SteppedArrayList();

    public static final List<WeakReference<Fc.a>> f8340e = new SteppedArrayList();

    public class a implements x8.b {
        @Override
        public void a() {
            c.e();
        }

        @Override
        public void b() {
            c.e();
        }
    }

    public class b implements Runnable {

        public final f f8341b;

        public final String f8342c;

        public final d f8343d;

        public b(final f val$cached, final String val$logicalPath, final d val$listener) {
            this.f8341b = val$cached;
            this.f8342c = val$logicalPath;
            this.f8343d = val$listener;
        }

        @Override
        public void run() {
            c.x(this.f8341b, this.f8342c, this.f8343d);
        }
    }

    public class RunnableC0180c implements Runnable {

        public final d.b f8344b;

        public final f f8345c;

        public final d f8346d;

        public final String f8347e;

        public RunnableC0180c(final d.b val$preparedAudio, final f val$entry, final d val$listener, final String val$logicalPath) {
            this.f8344b = val$preparedAudio;
            this.f8345c = val$entry;
            this.f8346d = val$listener;
            this.f8347e = val$logicalPath;
        }

        @Override
        public void run() {
            try {
                f.a a10 = com.itsmagic.engine.Engines.Sound.Imported.f.a(this.f8344b);
                synchronized (this.f8345c.f8356e) {
                    this.f8345c.f8354c = new e(a10, null);
                    this.f8345c.f8353b = g.Done;
                    this.f8345c.f8356e.notifyAll();
                    this.f8346d.a(c.u(this.f8345c, this.f8347e));
                }
            } catch (Throwable th2) {
                synchronized (this.f8345c.f8356e) {
                    this.f8345c.f8355d = th2;
                    this.f8345c.f8353b = g.Garbage;
                    this.f8345c.f8356e.notifyAll();
                    this.f8346d.onError(th2);
                }
            }
        }
    }

    public interface d {
        void a(Fc.a emitter);

        void onError(Throwable e10);
    }

    public static final class e {

        public final NativeShortBuffer f8348a;

        public final ImportedAudioHeader f8349b;

        public final String f8350c;

        public final i<WeakReference<Fc.a>> f8351d;

        public e(f.a aVar, a aVar2) {
            this(aVar);
        }

        public void c(Fc.a emitter) {
            synchronized (this.f8351d) {
                this.f8351d.add(new WeakReference<>(emitter));
            }
        }

        public NativeShortBuffer d() {
            return this.f8348a;
        }

        public String e() {
            return this.f8350c;
        }

        public ImportedAudioHeader f() {
            return this.f8349b;
        }

        public int g() {
            ImportedAudioHeader importedAudioHeader = this.f8349b;
            if (importedAudioHeader != null) {
                return importedAudioHeader.pcmFrames;
            }
            return 0;
        }

        public void h(Fc.a emitter) {
            int i10;
            WeakReference<Fc.a> weakReference;
            synchronized (this.f8351d) {
                int i11 = 0;
                while (true) {
                    for (boolean z10 = true; z10; z10 = false) {
                        i10 = i11;
                        while (i10 < this.f8351d.size()) {
                            try {
                                weakReference = this.f8351d.get(i10);
                                if (weakReference.get() == emitter) {
                                    break;
                                } else {
                                    i10++;
                                }
                            } finally {
                            }
                        }
                    }
                    this.f8351d.remove(weakReference);
                    i11 = Nc.b.H(i10 - 1);
                }
            }
        }

        public e(f.a data) {
            this.f8351d = new i<>();
            this.f8348a = data.f81464b;
            d.b bVar = data.f81463a;
            this.f8349b = bVar.f81448b;
            this.f8350c = bVar.f81447a.a();
        }
    }

    public enum g {
        Done,
        Loading,
        Garbage
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public static boolean d(f entry) {
        return (entry == null || entry.f8354c == null || h(entry.f8354c)) ? false : true;
    }

    public static void e() {
        synchronized (f8336a) {
            int i10 = 0;
            while (true) {
                try {
                    i<f> iVar = f8337b;
                    if (i10 < iVar.size()) {
                        f fVar = iVar.get(i10);
                        if (fVar != null) {
                            synchronized (fVar.f8356e) {
                                try {
                                    if (d(fVar)) {
                                        f(fVar);
                                        iVar.remove(i10);
                                        i10--;
                                    }
                                } finally {
                                }
                            }
                        }
                        i10++;
                    } else {
                        f8338c.clear();
                        f8339d.clear();
                        f8340e.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void f(f entry) {
        if (entry == null || entry.f8354c == null || entry.f8354c.f8348a == null || entry.f8354c.f8348a.isGarbage()) {
            return;
        }
        entry.f8354c.f8348a.destroyImmediate();
    }

    public static f g(String cacheKey) {
        f fVar;
        synchronized (f8336a) {
            fVar = f8338c.get(cacheKey);
        }
        return fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean h(e soundData) {
        boolean z10;
        synchronized (soundData.f8351d) {
            for (int i10 = 0; i10 < soundData.f8351d.size(); i10++) {
                try {
                    WeakReference<Fc.a> weakReference = (WeakReference) soundData.f8351d.get(i10);
                    if (weakReference.get() == null) {
                        f8340e.add(weakReference);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i iVar = soundData.f8351d;
            List<WeakReference<Fc.a>> list = f8340e;
            iVar.removeAll(list);
            list.clear();
            z10 = !soundData.f8351d.isEmpty();
        }
        return z10;
    }

    public static void i(File ioFile) throws FileNotFoundException {
        if (ioFile == null || !ioFile.exists()) {
            return;
        }
        k(com.itsmagic.engine.Engines.Sound.Imported.b.g(ioFile).a());
    }

    public static void j(String file) throws FileNotFoundException {
        if (file == null || file.trim().isEmpty()) {
            return;
        }
        k(com.itsmagic.engine.Engines.Sound.Imported.b.h(file).a());
    }

    public static void k(String cacheKey) {
        boolean z10;
        if (cacheKey == null || cacheKey.isEmpty()) {
            return;
        }
        synchronized (f8336a) {
            try {
                f remove = f8338c.remove(cacheKey);
                if (remove == null) {
                    return;
                }
                f8339d.remove(remove);
                synchronized (remove.f8356e) {
                    try {
                        if (remove.f8354c == null || d(remove)) {
                            f(remove);
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } finally {
                    }
                }
                if (z10) {
                    f8337b.remove(remove);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void l(String cacheKey) {
        k(cacheKey);
    }

    public static boolean m(ImportedAudioHeader header) {
        return header != null && header.durationSeconds <= 5.0f;
    }

    public static Fc.a n(File ioFile) throws FileNotFoundException {
        if (ioFile == null || !ioFile.exists()) {
            throw new FileNotFoundException("File doesn't exist");
        }
        return s(ioFile.getAbsolutePath(), ioFile);
    }

    public static Fc.a o(String file) throws FileNotFoundException {
        return s(file, null);
    }

    public static void p(File ioFile, d listener) throws FileNotFoundException {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        if (ioFile == null || !ioFile.exists()) {
            throw new FileNotFoundException("File doesn't exist");
        }
        r(ioFile.getAbsolutePath(), ioFile, listener);
    }

    public static void q(String file, d listener) throws FileNotFoundException {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        r(file, null, listener);
    }

    public static void r(String logicalPath, File ioFile, d listener) throws FileNotFoundException {
        try {
            d.b c10 = ioFile != null ? com.itsmagic.engine.Engines.Sound.Imported.d.c(ioFile) : com.itsmagic.engine.Engines.Sound.Imported.d.d(logicalPath);
            if (!m(c10.f81448b)) {
                listener.a(ioFile != null ? new Fc.d(ioFile.getAbsolutePath(), c10) : new Fc.d(logicalPath, c10));
                return;
            }
            f g10 = g(c10.f81447a.a());
            if (g10 != null) {
                synchronized (g10.f8356e) {
                    try {
                        if (g10.f8353b == g.Done && g10.f8354c != null) {
                            listener.a(u(g10, logicalPath));
                            return;
                        } else if (g10.f8353b == g.Loading) {
                            O9.b.d(new b(g10, logicalPath, listener));
                            return;
                        }
                    } finally {
                    }
                }
            }
            f fVar = new f(null);
            fVar.f8352a = c10.f81447a.a();
            synchronized (f8336a) {
                f8337b.add(fVar);
                f8338c.put(fVar.f8352a, fVar);
            }
            O9.b.d(new RunnableC0180c(c10, fVar, listener, logicalPath));
        } catch (FileNotFoundException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new FileNotFoundException(e11.getMessage());
        }
    }

    public static Fc.a s(String logicalPath, File ioFile) throws FileNotFoundException {
        Fc.b u10;
        try {
            d.b c10 = ioFile != null ? com.itsmagic.engine.Engines.Sound.Imported.d.c(ioFile) : com.itsmagic.engine.Engines.Sound.Imported.d.d(logicalPath);
            if (!m(c10.f81448b)) {
                return ioFile != null ? new Fc.d(ioFile.getAbsolutePath(), c10) : new Fc.d(logicalPath, c10);
            }
            f g10 = g(c10.f81447a.a());
            if (g10 != null) {
                synchronized (g10.f8356e) {
                    while (g10.f8353b == g.Loading) {
                        try {
                            g10.f8356e.wait(1L);
                        } catch (InterruptedException unused) {
                        }
                    }
                    if (g10.f8353b == g.Done && g10.f8354c != null) {
                        return u(g10, logicalPath);
                    }
                    if (g10.f8355d instanceof FileNotFoundException) {
                        throw ((FileNotFoundException) g10.f8355d);
                    }
                }
            }
            f.a a10 = com.itsmagic.engine.Engines.Sound.Imported.f.a(c10);
            a aVar = null;
            f fVar = new f(aVar);
            fVar.f8352a = c10.f81447a.a();
            synchronized (fVar.f8356e) {
                fVar.f8354c = new e(a10, aVar);
                fVar.f8353b = g.Done;
                u10 = u(fVar, logicalPath);
            }
            synchronized (f8336a) {
                f8337b.add(fVar);
                f8338c.put(fVar.f8352a, fVar);
            }
            return u10;
        } catch (FileNotFoundException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new FileNotFoundException(e11.getMessage());
        }
    }

    public static void t() {
        w();
    }

    public static Fc.b u(f entry, String logicalPath) {
        Fc.b bVar;
        synchronized (entry.f8356e) {
            try {
                if (entry.f8354c == null) {
                    throw new IllegalStateException("Immediate audio is unavailable");
                }
                bVar = new Fc.b(logicalPath, entry.f8354c);
                entry.f8354c.c(bVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    public static void v(Fc.a emitter) {
        f g10;
        if (emitter == null || (g10 = g(emitter.c0())) == null) {
            return;
        }
        synchronized (g10.f8356e) {
            try {
                if (g10.f8354c != null) {
                    g10.f8354c.h(emitter);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void w() {
        List<f> list;
        p6.g L12 = p6.d.E1() ? p6.d.L1("Sound manager") : null;
        synchronized (f8336a) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    i<f> iVar = f8337b;
                    if (i11 >= iVar.size()) {
                        break;
                    }
                    f fVar = iVar.get(i11);
                    synchronized (fVar.f8356e) {
                        try {
                            if (fVar.f8353b == g.Done && fVar.f8354c != null) {
                                if (!h(fVar.f8354c)) {
                                    f8339d.add(fVar);
                                }
                            }
                        } finally {
                        }
                    }
                    i11++;
                } catch (Throwable th2) {
                    throw th2;
                }
                throw th2;
            }
            if (!f8339d.isEmpty()) {
                while (true) {
                    list = f8339d;
                    if (i10 >= list.size()) {
                        break;
                    }
                    f fVar2 = list.get(i10);
                    synchronized (fVar2.f8356e) {
                        try {
                            if (d(fVar2)) {
                                f(fVar2);
                                f8337b.remove(fVar2);
                                f8338c.remove(fVar2.f8352a);
                            }
                        } finally {
                        }
                    }
                    i10++;
                }
                list.clear();
            }
        }
        p6.d.J1(L12);
    }

    public static void x(f entry, String logicalPath, d listener) {
        try {
            synchronized (entry.f8356e) {
                while (entry.f8353b == g.Loading) {
                    try {
                        entry.f8356e.wait(1L);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (entry.f8353b == g.Done && entry.f8354c != null) {
                    listener.a(u(entry, logicalPath));
                } else if (entry.f8355d != null) {
                    listener.onError(entry.f8355d);
                } else {
                    listener.onError(new IllegalStateException("Immediate audio failed to load"));
                }
            }
        } catch (InterruptedException e10) {
            listener.onError(e10);
        }
    }

    public static final class f {

        public String f8352a;

        public g f8353b;

        public e f8354c;

        public Throwable f8355d;

        public final Object f8356e;

        public f() {
            this.f8353b = g.Loading;
            this.f8356e = new Object();
        }

        public f(a aVar) {
            this();
        }
    }
}
