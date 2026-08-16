package D7;

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
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import da.C12894h;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;

public class c {

    public static C0091c f4886c;

    public static E7.b f4887d;

    public static final List<C0091c> f4884a = new SteppedArrayList();

    public static final List<C0091c> f4885b = new SteppedArrayList();

    public static final UpdateModule f4888e = new a();

    public class a extends UpdateModule {
        @Override
        public void f() {
            c.e();
        }

        @Override
        public void h() {
            c.g();
        }
    }

    public class b implements Runnable {

        public final ImageView f4889b;

        public final File f4890c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                h u10 = new h().u(R.drawable.package_failedload);
                b bVar = b.this;
                Vc.e.L(bVar.f4889b, bVar.f4890c.getAbsolutePath(), N7.c.t(), u10, i.f59186b);
            }
        }

        public b(final ImageView val$display, final File val$thumbFile) {
            this.f4889b = val$display;
            this.f4890c = val$thumbFile;
        }

        @Override
        public void run() {
            if (this.f4889b == null || !this.f4890c.exists()) {
                return;
            }
            N7.c.j0(new a());
        }
    }

    public static class C0091c {

        public File f4892a;

        public GameObject f4893b;

        public boolean f4894c;

        public int f4895d = 0;

        public int f4896e = 0;

        public WeakReference<ImageView> f4897f;

        public C0091c(File file) {
            this.f4892a = file;
        }

        public void a() {
            this.f4893b.destroy();
            K8.a.D(this.f4893b);
        }

        public boolean b() {
            if (!this.f4894c) {
                return false;
            }
            int i10 = this.f4896e + 1;
            this.f4896e = i10;
            return i10 >= 15;
        }

        public String c() {
            return this.f4892a.getAbsolutePath();
        }

        public String d() {
            return Tc.b.O(c()) + ".meta/";
        }

        public File e() {
            return new File((Tc.b.O(c()) + ".meta/") + "thumb.png");
        }
    }

    public static void c(File file, ImageView display) {
        if (!file.exists()) {
            throw new RuntimeException();
        }
        f4888e.a();
        List<C0091c> list = f4885b;
        synchronized (list) {
            C0091c c0091c = new C0091c(file);
            c0091c.f4897f = new WeakReference<>(display);
            list.add(c0091c);
        }
    }

    public static void d(Vector3 center, float distance) {
        float M10 = Nc.b.M(0.5f, 1.5f * distance);
        double[] dArr = new double[16];
        float[] fArr = new float[16];
        float[] fArr2 = new float[16];
        float f10 = M10 * 4.0f;
        Matrix.perspectiveM(new float[16], 0, 90.0f, 1.0f, 0.1f, f10);
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = r8[i10];
        }
        f4887d.f5701a.f5712c.j(dArr, 0.1f, f10);
        Vector3 add = center.add(0.0f, 0.0f, -M10);
        add.rotateLocal(10.0f, 45.0f, 0.0f);
        Quaternion quaternion = new Quaternion();
        quaternion.v(10.0f, 45.0f, 0.0f);
        Vector3 p02 = quaternion.p0(Vector3.forward());
        p02.normalizeLocal();
        Matrix.setLookAtM(fArr, 0, add.getX(), add.getY(), add.getZ(), add.getX() + p02.getX(), add.getY() + p02.getY(), add.getZ() + p02.getZ(), 0.0f, 1.0f, 0.0f);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.invertM(fArr2, 0, fArr, 0);
        for (int i11 = 0; i11 < 16; i11++) {
            dArr[i11] = fArr2[i11];
        }
        f4887d.f5701a.f5712c.k(dArr);
    }

    public static void e() {
        E7.b bVar;
        C0091c c0091c = f4886c;
        if (c0091c == null || (bVar = f4887d) == null || c0091c.f4893b == null || !bVar.f5705e) {
            return;
        }
        E7.e eVar = bVar.f5701a;
        eVar.f5714e.a(eVar.f5710a);
        Qb.a.b(true, true);
        Qb.a.o(f4887d.f5701a.f5710a);
        f4887d.f5701a.f5714e.z();
        f4887d.f5704d = true;
    }

    public static void f() {
        GameObject.g z10 = f4886c.f4893b.z();
        if (!z10.f()) {
            d(z10.d(), z10.e());
        }
        f4886c.f4894c = true;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00a0 -> B:22:0x00a5). Please report as a decompilation issue!!! */
    public static void g() {
        E7.b bVar = f4887d;
        if (bVar != null) {
            bVar.c();
        }
        List<C0091c> list = f4885b;
        synchronized (list) {
            try {
                if (!list.isEmpty()) {
                    f4884a.addAll(list);
                    list.clear();
                }
            } finally {
            }
        }
        if (f4886c != null) {
            h();
            return;
        }
        List<C0091c> list2 = f4884a;
        if (!list2.isEmpty()) {
            f4886c = list2.remove(0);
            if (f4887d == null) {
                f4887d = new E7.b();
            }
            try {
                Vertex C12 = Vertex.C1(Vertex.v.SPHERE);
                Material t10 = C12894h.t(f4886c.f4892a.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                if (t10 != null) {
                    ModelRenderer modelRenderer = new ModelRenderer();
                    modelRenderer.setMaterial(t10);
                    modelRenderer.setModel(C12);
                    GameObject gameObject = new GameObject();
                    gameObject.r(modelRenderer);
                    f4886c.f4893b = gameObject;
                    gameObject.J0().setPosition(0.0f);
                    f4887d.a(gameObject);
                    K8.a.L(gameObject);
                    E7.b bVar2 = f4887d;
                    bVar2.f5704d = false;
                    bVar2.f5705e = false;
                } else {
                    f4886c = null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                f4886c = null;
            }
        }
        if (f4884a.isEmpty() && f4886c == null) {
            f4888e.b();
            E7.b bVar3 = f4887d;
            if (bVar3 != null) {
                bVar3.b();
                f4887d = null;
            }
        }
    }

    public static void h() {
        f4887d.f5705e = true;
        i(f4886c.f4893b);
        f();
        C0091c c0091c = f4886c;
        int i10 = c0091c.f4895d;
        if (i10 > 0) {
            int i11 = i10 - 1;
            c0091c.f4895d = i11;
            if (i11 <= 0) {
                c0091c.a();
                f4886c = null;
                return;
            }
            return;
        }
        if (c0091c.b() && f4887d.f5704d) {
            C0091c c0091c2 = f4886c;
            c0091c2.f4895d = 5;
            f4887d.f5701a.f5714e.g(f4886c.e(), 80, new b(f4886c.f4897f.get(), c0091c2.e()));
            Manifest manifest = new Manifest();
            manifest.b();
            E7.f.b(f4886c.f4892a.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), manifest);
        }
    }

    public static void i(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ModelRenderer) {
                ((ModelRenderer) L10).updateForThumb(gameObject, f4887d.f5701a);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            i(gameObject.C(i11));
        }
    }
}
