package Vg;

import I5.b;
import Ic.N;
import JAVARuntime.AtomicFloat;
import Z6.i;
import android.app.Activity;
import android.view.View;
import b8.g;
import com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.ImportFilePopup;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.b;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.ITsMagic.ModelImporter.NativeModelImporter;
import q7.C15045a;

public class c {

    public class a implements ImportFilePopup.u {

        public final File f26952a;

        public final boolean f26953b;

        public class C0742a implements g {

            public final ImportFilePopup.ImportOptions f26954a;

            public class C0743a implements C15045a.d {

                public class C0744a implements b.InterfaceC0224b {

                    public final N f26957a;

                    public final AtomicBoolean f26958b;

                    public final AtomicFloat f26959c;

                    public final AtomicInteger f26960d;

                    public final AtomicInteger f26961e;

                    public C0744a(final N val$message, final AtomicBoolean val$finished, final AtomicFloat val$totalStepLoaded, final AtomicInteger val$totalLoaded, final AtomicInteger val$totalLoading) {
                        this.f26957a = val$message;
                        this.f26958b = val$finished;
                        this.f26959c = val$totalStepLoaded;
                        this.f26960d = val$totalLoaded;
                        this.f26961e = val$totalLoading;
                    }

                    @Override
                    public float a() {
                        if (finished()) {
                            return 1.0f;
                        }
                        float d10 = d();
                        return (b() / d10) + ((1.0f / d10) * c());
                    }

                    @Override
                    public int b() {
                        return this.f26960d.get();
                    }

                    @Override
                    public float c() {
                        return this.f26959c.get();
                    }

                    @Override
                    public int d() {
                        return this.f26961e.get();
                    }

                    @Override
                    public boolean finished() {
                        return this.f26958b.get();
                    }

                    @Override
                    public String getMessage() {
                        return (String) this.f26957a.b();
                    }
                }

                public class b implements Vg.a {

                    public final AtomicBoolean f26963a;

                    public final C15045a f26964b;

                    public final N f26965c;

                    public final AtomicInteger f26966d;

                    public final AtomicInteger f26967e;

                    public final AtomicFloat f26968f;

                    public class RunnableC0745a implements Runnable {

                        public final File f26970b;

                        public RunnableC0745a(final File val$gameObjectFile) {
                            this.f26970b = val$gameObjectFile;
                        }

                        @Override
                        public void run() {
                            File file;
                            if (a.this.f26953b && (file = this.f26970b) != null && file.getAbsolutePath().startsWith(com.itsmagic.engine.Core.Components.ProjectController.a.R())) {
                                com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(this.f26970b), true, c.a());
                            }
                        }
                    }

                    public b(final AtomicBoolean val$finished, final C15045a val$loading, final N val$message, final AtomicInteger val$totalLoaded, final AtomicInteger val$totalLoading, final AtomicFloat val$totalStepLoaded) {
                        this.f26963a = val$finished;
                        this.f26964b = val$loading;
                        this.f26965c = val$message;
                        this.f26966d = val$totalLoaded;
                        this.f26967e = val$totalLoading;
                        this.f26968f = val$totalStepLoaded;
                    }

                    @Override
                    public void a(String error) {
                        this.f26963a.set(true);
                        i.y1("Ops!", error);
                        this.f26964b.p1();
                    }

                    @Override
                    public void b(File gameObjectFile) {
                        this.f26963a.set(true);
                        K8.a.I(new RunnableC0745a(gameObjectFile));
                        this.f26964b.p1();
                    }

                    @Override
                    public void c(int percentage, String str, int executed, int total) {
                        this.f26964b.f1(percentage + "% " + str);
                        this.f26965c.e(str);
                        this.f26966d.set(executed);
                        this.f26967e.set(total);
                        this.f26968f.set(1.0f);
                    }
                }

                public C0743a() {
                }

                @Override
                public void a(C15045a loading) {
                    AtomicInteger atomicInteger = new AtomicInteger();
                    AtomicInteger atomicInteger2 = new AtomicInteger();
                    AtomicFloat atomicFloat = new AtomicFloat();
                    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                    N n10 = new N();
                    I5.b.r1(new C0744a(n10, atomicBoolean, atomicFloat, atomicInteger2, atomicInteger));
                    C0742a c0742a = C0742a.this;
                    NativeModelImporter.startImportOf(c0742a.f26954a, a.this.f26952a, new b(atomicBoolean, loading, n10, atomicInteger2, atomicInteger, atomicFloat));
                }
            }

            public C0742a(final ImportFilePopup.ImportOptions val$importOptions) {
                this.f26954a = val$importOptions;
            }

            @Override
            public void a(Activity activity) {
                C15045a.u1(true, new C0743a());
            }

            @Override
            public void b(Activity activity) {
            }
        }

        public a(final File val$file, final boolean val$copyToWorld) {
            this.f26952a = val$file;
            this.f26953b = val$copyToWorld;
        }

        @Override
        public void a(ImportFilePopup.ImportOptions importOptions) {
            W7.b.f27308h.f(N7.c.o(), new C0742a(importOptions));
        }

        @Override
        public void onCancel() {
        }
    }

    public class b implements ImportFilePopup.u {

        public final e f26972a;

        public final File f26973b;

        public final boolean f26974c;

        public class a implements g {

            public final ImportFilePopup.ImportOptions f26975a;

            public class C0746a implements C15045a.d {

                public class C0747a implements b.InterfaceC0224b {

                    public final N f26978a;

                    public final AtomicBoolean f26979b;

                    public final AtomicFloat f26980c;

                    public final AtomicInteger f26981d;

                    public final AtomicInteger f26982e;

                    public C0747a(final N val$message, final AtomicBoolean val$finished, final AtomicFloat val$totalStepLoaded, final AtomicInteger val$totalLoaded, final AtomicInteger val$totalLoading) {
                        this.f26978a = val$message;
                        this.f26979b = val$finished;
                        this.f26980c = val$totalStepLoaded;
                        this.f26981d = val$totalLoaded;
                        this.f26982e = val$totalLoading;
                    }

                    @Override
                    public float a() {
                        if (finished()) {
                            return 1.0f;
                        }
                        float d10 = d();
                        return (b() / d10) + ((1.0f / d10) * c());
                    }

                    @Override
                    public int b() {
                        return this.f26981d.get();
                    }

                    @Override
                    public float c() {
                        return this.f26980c.get();
                    }

                    @Override
                    public int d() {
                        return this.f26982e.get();
                    }

                    @Override
                    public boolean finished() {
                        return this.f26979b.get();
                    }

                    @Override
                    public String getMessage() {
                        return (String) this.f26978a.b();
                    }
                }

                public class C0748b implements Vg.a {

                    public final AtomicBoolean f26984a;

                    public final C15045a f26985b;

                    public final N f26986c;

                    public final AtomicInteger f26987d;

                    public final AtomicInteger f26988e;

                    public final AtomicFloat f26989f;

                    public class RunnableC0749a implements Runnable {

                        public final File f26991b;

                        public RunnableC0749a(final File val$gameObjectFile) {
                            this.f26991b = val$gameObjectFile;
                        }

                        @Override
                        public void run() {
                            File file;
                            if (b.this.f26974c && (file = this.f26991b) != null && file.getAbsolutePath().startsWith(com.itsmagic.engine.Core.Components.ProjectController.a.R())) {
                                com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(this.f26991b), true, c.a());
                            }
                            b.this.f26972a.a();
                        }
                    }

                    public C0748b(final AtomicBoolean val$finished, final C15045a val$loading, final N val$message, final AtomicInteger val$totalLoaded, final AtomicInteger val$totalLoading, final AtomicFloat val$totalStepLoaded) {
                        this.f26984a = val$finished;
                        this.f26985b = val$loading;
                        this.f26986c = val$message;
                        this.f26987d = val$totalLoaded;
                        this.f26988e = val$totalLoading;
                        this.f26989f = val$totalStepLoaded;
                    }

                    @Override
                    public void a(String error) {
                        this.f26984a.set(true);
                        i.y1("Ops!", error);
                        this.f26985b.p1();
                    }

                    @Override
                    public void b(File gameObjectFile) {
                        this.f26984a.set(true);
                        K8.a.I(new RunnableC0749a(gameObjectFile));
                        this.f26985b.p1();
                    }

                    @Override
                    public void c(int percentage, String str, int executed, int total) {
                        this.f26985b.f1(percentage + "% " + str);
                        this.f26986c.e(str);
                        this.f26987d.set(executed);
                        this.f26988e.set(total);
                        this.f26989f.set(1.0f);
                    }
                }

                public C0746a() {
                }

                @Override
                public void a(C15045a loading) {
                    AtomicInteger atomicInteger = new AtomicInteger();
                    AtomicInteger atomicInteger2 = new AtomicInteger();
                    AtomicFloat atomicFloat = new AtomicFloat();
                    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                    N n10 = new N();
                    I5.b.r1(new C0747a(n10, atomicBoolean, atomicFloat, atomicInteger2, atomicInteger));
                    a aVar = a.this;
                    b.this.f26972a.b(aVar.f26975a);
                    a aVar2 = a.this;
                    NativeModelImporter.startImportOf(aVar2.f26975a, b.this.f26973b, new C0748b(atomicBoolean, loading, n10, atomicInteger2, atomicInteger, atomicFloat));
                }
            }

            public a(final ImportFilePopup.ImportOptions val$importOptions) {
                this.f26975a = val$importOptions;
            }

            @Override
            public void a(Activity activity) {
                C15045a.u1(true, new C0746a());
            }

            @Override
            public void b(Activity activity) {
            }
        }

        public b(final e val$importListener, final File val$file, final boolean val$copyToWorld) {
            this.f26972a = val$importListener;
            this.f26973b = val$file;
            this.f26974c = val$copyToWorld;
        }

        @Override
        public void a(ImportFilePopup.ImportOptions importOptions) {
            W7.b.f27308h.f(N7.c.o(), new a(importOptions));
        }

        @Override
        public void onCancel() {
        }
    }

    public class C0750c implements g {

        public final e f26993a;

        public final ImportFilePopup.ImportOptions f26994b;

        public final File f26995c;

        public final boolean f26996d;

        public class a implements C15045a.d {

            public class C0751a implements b.InterfaceC0224b {

                public final N f26998a;

                public final AtomicBoolean f26999b;

                public final AtomicFloat f27000c;

                public final AtomicInteger f27001d;

                public final AtomicInteger f27002e;

                public C0751a(final N val$message, final AtomicBoolean val$finished, final AtomicFloat val$totalStepLoaded, final AtomicInteger val$totalLoaded, final AtomicInteger val$totalLoading) {
                    this.f26998a = val$message;
                    this.f26999b = val$finished;
                    this.f27000c = val$totalStepLoaded;
                    this.f27001d = val$totalLoaded;
                    this.f27002e = val$totalLoading;
                }

                @Override
                public float a() {
                    if (finished()) {
                        return 1.0f;
                    }
                    float d10 = d();
                    return (b() / d10) + ((1.0f / d10) * c());
                }

                @Override
                public int b() {
                    return this.f27001d.get();
                }

                @Override
                public float c() {
                    return this.f27000c.get();
                }

                @Override
                public int d() {
                    return this.f27002e.get();
                }

                @Override
                public boolean finished() {
                    return this.f26999b.get();
                }

                @Override
                public String getMessage() {
                    return (String) this.f26998a.b();
                }
            }

            public class b implements Vg.a {

                public final AtomicBoolean f27004a;

                public final C15045a f27005b;

                public final N f27006c;

                public final AtomicInteger f27007d;

                public final AtomicInteger f27008e;

                public final AtomicFloat f27009f;

                public class RunnableC0752a implements Runnable {

                    public final File f27011b;

                    public RunnableC0752a(final File val$gameObjectFile) {
                        this.f27011b = val$gameObjectFile;
                    }

                    @Override
                    public void run() {
                        File file;
                        if (C0750c.this.f26996d && (file = this.f27011b) != null && file.getAbsolutePath().startsWith(com.itsmagic.engine.Core.Components.ProjectController.a.R())) {
                            com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(this.f27011b), true, c.a());
                        }
                        C0750c.this.f26993a.a();
                    }
                }

                public b(final AtomicBoolean val$finished, final C15045a val$loading, final N val$message, final AtomicInteger val$totalLoaded, final AtomicInteger val$totalLoading, final AtomicFloat val$totalStepLoaded) {
                    this.f27004a = val$finished;
                    this.f27005b = val$loading;
                    this.f27006c = val$message;
                    this.f27007d = val$totalLoaded;
                    this.f27008e = val$totalLoading;
                    this.f27009f = val$totalStepLoaded;
                }

                @Override
                public void a(String error) {
                    this.f27004a.set(true);
                    i.y1("Ops!", error);
                    this.f27005b.p1();
                }

                @Override
                public void b(File gameObjectFile) {
                    this.f27004a.set(true);
                    K8.a.I(new RunnableC0752a(gameObjectFile));
                    this.f27005b.p1();
                }

                @Override
                public void c(int percentage, String str, int executed, int total) {
                    this.f27005b.f1(percentage + "% " + str);
                    this.f27006c.e(str);
                    this.f27007d.set(executed);
                    this.f27008e.set(total);
                    this.f27009f.set(1.0f);
                }
            }

            public a() {
            }

            @Override
            public void a(C15045a loading) {
                AtomicInteger atomicInteger = new AtomicInteger();
                AtomicInteger atomicInteger2 = new AtomicInteger();
                AtomicFloat atomicFloat = new AtomicFloat();
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                N n10 = new N();
                I5.b.r1(new C0751a(n10, atomicBoolean, atomicFloat, atomicInteger2, atomicInteger));
                C0750c c0750c = C0750c.this;
                c0750c.f26993a.b(c0750c.f26994b);
                C0750c c0750c2 = C0750c.this;
                NativeModelImporter.startImportOf(c0750c2.f26994b, c0750c2.f26995c, new b(atomicBoolean, loading, n10, atomicInteger2, atomicInteger, atomicFloat));
            }
        }

        public C0750c(final e val$importListener, final ImportFilePopup.ImportOptions val$importOptions, final File val$file, final boolean val$copyToWorld) {
            this.f26993a = val$importListener;
            this.f26994b = val$importOptions;
            this.f26995c = val$file;
            this.f26996d = val$copyToWorld;
        }

        @Override
        public void a(Activity activity) {
            C15045a.u1(true, new a());
        }

        @Override
        public void b(Activity activity) {
        }
    }

    public class d implements b.g {
        @Override
        public void a(GameObject object) {
        }

        @Override
        public void b(String t10) {
        }

        @Override
        public void onUpdate() {
        }
    }

    public interface e {
        void a();

        void b(ImportFilePopup.ImportOptions importOptions);
    }

    public static b.g a() {
        return c();
    }

    public static void b(View v10, File file, boolean copyToWorld, e importListener) {
        W7.b.f27308h.f(N7.c.o(), new C0750c(importListener, new ImportFilePopup.ImportOptions(), file, copyToWorld));
    }

    public static b.g c() {
        return new d();
    }

    public static void d(View v10, File file, boolean copyToWorld) {
        ImportFilePopup.d(v10, file, new a(file, copyToWorld));
    }

    public static void e(View v10, File file, boolean copyToWorld, e importListener) {
        ImportFilePopup.d(v10, file, new b(importListener, file, copyToWorld));
    }
}
