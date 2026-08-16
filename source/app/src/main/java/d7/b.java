package D7;

import E7.c;
import U.h;
import android.opengl.Matrix;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Utils.ThumbBuilder.Core.Manifest;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import gb.C13317e;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;

public class b {

    public static d f4871c;

    public static E7.b f4872d;

    public static final List<d> f4869a = new SteppedArrayList();

    public static final List<d> f4870b = new SteppedArrayList();

    public static final UpdateModule f4873e = new a();

    public class a extends UpdateModule {
        @Override
        public void f() {
            b.e();
        }

        @Override
        public void h() {
            b.h();
        }
    }

    public class C0090b implements GameObject.e {
        @Override
        public boolean a(Component component) {
            return (component instanceof ModelRenderer) || (component instanceof ParticleEmitter);
        }
    }

    public class c implements Runnable {

        public final ImageView f4874b;

        public final File f4875c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                h u10 = new h().u(R.drawable.package_failedload);
                c cVar = c.this;
                Vc.e.L(cVar.f4874b, cVar.f4875c.getAbsolutePath(), N7.c.t(), u10, i.f59186b);
            }
        }

        public c(final ImageView val$display, final File val$thumbFile) {
            this.f4874b = val$display;
            this.f4875c = val$thumbFile;
        }

        @Override
        public void run() {
            if (this.f4874b == null || !this.f4875c.exists()) {
                return;
            }
            N7.c.j0(new a());
        }
    }

    public static class d {

        public File f4877a;

        public GameObject f4878b;

        public boolean f4879c;

        public int f4880d = 0;

        public int f4881e = 0;

        public int f4882f = 0;

        public WeakReference<ImageView> f4883g;

        public d(File file) {
            this.f4877a = file;
        }

        public void a() {
            this.f4878b.destroy();
            K8.a.D(this.f4878b);
        }

        public boolean b() {
            if (!this.f4879c) {
                return false;
            }
            int i10 = this.f4881e + 1;
            this.f4881e = i10;
            return i10 >= 30;
        }

        public String c() {
            return this.f4877a.getAbsolutePath();
        }

        public String d() {
            return Tc.b.O(c()) + ".meta/";
        }

        public File e() {
            return new File((Tc.b.O(c()) + ".meta/") + "thumb.png");
        }

        public boolean f() {
            int i10 = this.f4882f + 1;
            this.f4882f = i10;
            return i10 >= 180;
        }
    }

    public static void c(File file, ImageView display) {
        if (!file.exists()) {
            throw new RuntimeException();
        }
        synchronized (f4869a) {
            try {
                f4873e.a();
                int i10 = 0;
                while (true) {
                    List<d> list = f4869a;
                    if (i10 >= list.size()) {
                        d dVar = new d(file);
                        dVar.f4883g = new WeakReference<>(display);
                        list.add(dVar);
                        return;
                    } else if (list.get(i10).f4877a.getAbsolutePath().equals(file.getAbsolutePath())) {
                        return;
                    } else {
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(Vector3 center, float distance) {
        float M10 = Nc.b.M(0.5f, 1.4f * distance);
        double[] dArr = new double[16];
        float[] fArr = new float[16];
        float[] fArr2 = new float[16];
        float f10 = M10 * 4.0f;
        Matrix.perspectiveM(new float[16], 0, 60.0f, 1.0f, 0.1f, f10);
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = r8[i10];
        }
        f4872d.f5701a.f5712c.j(dArr, 0.1f, f10);
        Vector3 vector3 = new Vector3(0.0f, 0.0f, -M10);
        vector3.rotateLocal(25.0f, 30.0f, 0.0f);
        Vector3 add = center.add(vector3);
        Matrix.setLookAtM(fArr, 0, add.getX(), add.getY(), add.getZ(), center.getX(), center.getY(), center.getZ(), 0.0f, 1.0f, 0.0f);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.invertM(fArr2, 0, fArr, 0);
        for (int i11 = 0; i11 < 16; i11++) {
            dArr[i11] = fArr2[i11];
        }
        f4872d.f5701a.f5712c.k(dArr);
    }

    public static void e() {
        E7.b bVar;
        d dVar = f4871c;
        if (dVar == null || (bVar = f4872d) == null || dVar.f4878b == null || !bVar.f5705e) {
            return;
        }
        E7.e eVar = bVar.f5701a;
        eVar.f5714e.a(eVar.f5710a);
        Qb.a.b(true, true);
        Qb.a.o(f4872d.f5701a.f5710a);
        f4872d.f5701a.f5714e.z();
        f4872d.f5704d = true;
    }

    public static void f(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ParticleEmitter) {
                ((ParticleEmitter) L10).f73881E = true;
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            f(gameObject.C(i11));
        }
    }

    public static void g() {
        c.b a10 = E7.c.a(f4871c.f4878b);
        if (!a10.d()) {
            d(a10.b(), a10.c());
        }
        f4871c.f4879c = true;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007a -> B:22:0x007f). Please report as a decompilation issue!!! */
    public static void h() {
        E7.b bVar = f4872d;
        if (bVar != null) {
            bVar.c();
        }
        List<d> list = f4870b;
        synchronized (list) {
            try {
                if (!list.isEmpty()) {
                    f4869a.addAll(list);
                    list.clear();
                }
            } finally {
            }
        }
        if (f4871c != null) {
            i();
            return;
        }
        List<d> list2 = f4869a;
        if (!list2.isEmpty()) {
            f4871c = list2.remove(0);
            if (f4872d == null) {
                f4872d = new E7.b();
            }
            try {
                GameObject U10 = GameObject.U(X7.a.y(f4871c.c()), false, false, new C0090b());
                if (C13317e.J(U10)) {
                    U10.S1();
                    f4872d.a(U10);
                    f4871c.f4878b = U10;
                    E7.b bVar2 = f4872d;
                    bVar2.f5704d = false;
                    bVar2.f5705e = false;
                    U10.J0().setPosition(0.0f);
                    K8.a.L(U10);
                } else {
                    f4871c = null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                f4871c = null;
            }
        }
        if (f4869a.isEmpty() && f4871c == null) {
            f4873e.b();
            E7.b bVar3 = f4872d;
            if (bVar3 != null) {
                bVar3.b();
                f4872d = null;
            }
        }
    }

    public static void i() {
        GameObject gameObject = f4871c.f4878b;
        if (gameObject == null) {
            return;
        }
        boolean a10 = E7.d.a(gameObject);
        f4872d.f5705e = true;
        j(f4871c.f4878b);
        f(f4871c.f4878b);
        g();
        boolean z10 = a10 || f4871c.f();
        d dVar = f4871c;
        int i10 = dVar.f4880d;
        if (i10 > 0) {
            int i11 = i10 - 1;
            dVar.f4880d = i11;
            if (i11 <= 0) {
                dVar.a();
                f4871c = null;
                return;
            }
            return;
        }
        if (z10 && dVar.b() && f4872d.f5704d) {
            d dVar2 = f4871c;
            dVar2.f4880d = 5;
            f4872d.f5701a.f5714e.g(f4871c.e(), 80, new c(f4871c.f4883g.get(), dVar2.e()));
            Manifest manifest = new Manifest();
            manifest.b();
            E7.f.b(f4871c.f4877a.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), manifest);
            E7.b bVar = f4872d;
            bVar.f5704d = false;
            bVar.f5705e = false;
        }
    }

    public static void j(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ModelRenderer) {
                ((ModelRenderer) L10).updateForThumb(gameObject, f4872d.f5701a);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            j(gameObject.C(i11));
        }
    }
}
