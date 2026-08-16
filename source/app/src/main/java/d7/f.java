package D7;

import E7.c;
import U.h;
import android.opengl.Matrix;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Utils.ThumbBuilder.Core.Manifest;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;

public class f {

    public static c f4921c;

    public static E7.b f4922d;

    public static final List<c> f4919a = new SteppedArrayList();

    public static final List<c> f4920b = new SteppedArrayList();

    public static final UpdateModule f4923e = new a();

    public class a extends UpdateModule {
        @Override
        public void f() {
            f.e();
        }

        @Override
        public void h() {
            f.g();
        }
    }

    public class b implements Runnable {

        public final ImageView f4924b;

        public final File f4925c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                h u10 = new h().u(R.drawable.package_failedload);
                b bVar = b.this;
                Vc.e.L(bVar.f4924b, bVar.f4925c.getAbsolutePath(), N7.c.t(), u10, i.f59186b);
            }
        }

        public b(final ImageView val$display, final File val$thumbFile) {
            this.f4924b = val$display;
            this.f4925c = val$thumbFile;
        }

        @Override
        public void run() {
            if (this.f4924b == null || !this.f4925c.exists()) {
                return;
            }
            N7.c.j0(new a());
        }
    }

    public static class c {

        public File f4927a;

        public GameObject f4928b;

        public boolean f4929c;

        public int f4930d = 0;

        public int f4931e = 0;

        public int f4932f = 0;

        public WeakReference<ImageView> f4933g;

        public c(File file) {
            this.f4927a = file;
        }

        public void a() {
            this.f4928b.destroy();
            K8.a.D(this.f4928b);
        }

        public boolean b() {
            if (!this.f4929c) {
                return false;
            }
            int i10 = this.f4931e + 1;
            this.f4931e = i10;
            return i10 >= 15;
        }

        public String c() {
            return this.f4927a.getAbsolutePath();
        }

        public String d() {
            return Tc.b.O(c()) + ".meta/";
        }

        public File e() {
            return new File((Tc.b.O(c()) + ".meta/") + "thumb.png");
        }

        public boolean f() {
            int i10 = this.f4932f + 1;
            this.f4932f = i10;
            return i10 >= 180;
        }
    }

    public static void c(File file, ImageView display) {
        if (!file.exists()) {
            throw new RuntimeException();
        }
        f4923e.a();
        List<c> list = f4920b;
        synchronized (list) {
            c cVar = new c(file);
            cVar.f4933g = new WeakReference<>(display);
            list.add(cVar);
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
        f4922d.f5701a.f5712c.j(dArr, 0.1f, f10);
        Vector3 vector3 = new Vector3(0.0f, 0.0f, -M10);
        vector3.rotateLocal(25.0f, 30.0f, 0.0f);
        Vector3 add = center.add(vector3);
        Matrix.setLookAtM(fArr, 0, add.getX(), add.getY(), add.getZ(), center.getX(), center.getY(), center.getZ(), 0.0f, 1.0f, 0.0f);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.invertM(fArr2, 0, fArr, 0);
        for (int i11 = 0; i11 < 16; i11++) {
            dArr[i11] = fArr2[i11];
        }
        f4922d.f5701a.f5712c.k(dArr);
    }

    public static void e() {
        E7.b bVar;
        c cVar = f4921c;
        if (cVar == null || (bVar = f4922d) == null || cVar.f4928b == null || !bVar.f5705e) {
            return;
        }
        E7.e eVar = bVar.f5701a;
        eVar.f5714e.a(eVar.f5710a);
        Qb.a.b(true, true);
        Qb.a.o(f4922d.f5701a.f5710a);
        f4922d.f5701a.f5714e.z();
        f4922d.f5704d = true;
    }

    public static void f() {
        c.b a10 = E7.c.a(f4921c.f4928b);
        if (!a10.d()) {
            d(a10.b(), a10.c());
        }
        f4921c.f4929c = true;
    }

    public static void g() {
        E7.b bVar = f4922d;
        if (bVar != null) {
            bVar.c();
        }
        List<c> list = f4920b;
        synchronized (list) {
            try {
                if (!list.isEmpty()) {
                    f4919a.addAll(list);
                    list.clear();
                }
            } finally {
            }
        }
        if (f4921c != null) {
            h();
            return;
        }
        List<c> list2 = f4919a;
        if (!list2.isEmpty()) {
            f4921c = list2.remove(0);
            if (f4922d == null) {
                f4922d = new E7.b();
            }
            try {
                Vertex n10 = Fb.c.n(f4921c.f4927a.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), false, N7.c.t(), false, null);
                if (n10 != null) {
                    if (!n10.x1() && !n10.u1()) {
                        n10.apply();
                    }
                    Material material = new Material();
                    material.f78885e = "@vertexthumbbuilder-" + Tc.b.L();
                    material.f78886g = false;
                    material.S();
                    ModelRenderer modelRenderer = new ModelRenderer();
                    modelRenderer.setMaterial(material);
                    modelRenderer.setModel(n10);
                    GameObject gameObject = new GameObject();
                    gameObject.r(modelRenderer);
                    f4921c.f4928b = gameObject;
                    gameObject.J0().setPosition(0.0f);
                    f4922d.a(gameObject);
                    K8.a.L(gameObject);
                    E7.b bVar2 = f4922d;
                    bVar2.f5704d = false;
                    bVar2.f5705e = false;
                } else {
                    f4921c = null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                f4921c = null;
            }
        }
        if (f4919a.isEmpty() && f4921c == null) {
            f4923e.b();
            E7.b bVar3 = f4922d;
            if (bVar3 != null) {
                bVar3.b();
                f4922d = null;
            }
        }
    }

    public static void h() {
        boolean a10 = E7.d.a(f4921c.f4928b);
        f4922d.f5705e = true;
        i(f4921c.f4928b);
        f();
        boolean z10 = a10 || f4921c.f();
        c cVar = f4921c;
        int i10 = cVar.f4930d;
        if (i10 > 0) {
            int i11 = i10 - 1;
            cVar.f4930d = i11;
            if (i11 <= 0) {
                cVar.a();
                f4921c = null;
                return;
            }
            return;
        }
        if (z10 && cVar.b() && f4922d.f5704d) {
            c cVar2 = f4921c;
            cVar2.f4930d = 5;
            f4922d.f5701a.f5714e.g(f4921c.e(), 80, new b(f4921c.f4933g.get(), cVar2.e()));
            Manifest manifest = new Manifest();
            manifest.b();
            E7.f.b(f4921c.f4927a.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), manifest);
        }
    }

    public static void i(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ModelRenderer) {
                ((ModelRenderer) L10).updateForThumb(gameObject, f4922d.f5701a);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            i(gameObject.C(i11));
        }
    }
}
