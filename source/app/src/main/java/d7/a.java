package D7;

import U.h;
import android.opengl.Matrix;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.i;
import com.google.android.filament.IndirectLight;
import com.itsmagic.engine.Activities.Editor.Utils.ThumbBuilder.Core.Manifest;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import wb.C15981c;
import yb.C16165b;

public class a {

    public static c f4857c;

    public static E7.b f4858d;

    public static final List<c> f4855a = new SteppedArrayList();

    public static final List<c> f4856b = new SteppedArrayList();

    public static final UpdateModule f4859e = new C0088a();

    public class C0088a extends UpdateModule {
        @Override
        public void f() {
            a.e();
        }

        @Override
        public void h() {
            a.g();
        }
    }

    public class b implements Runnable {

        public final ImageView f4860b;

        public final File f4861c;

        public class RunnableC0089a implements Runnable {
            public RunnableC0089a() {
            }

            @Override
            public void run() {
                h u10 = new h().u(R.drawable.package_failedload);
                b bVar = b.this;
                Vc.e.L(bVar.f4860b, bVar.f4861c.getAbsolutePath(), N7.c.t(), u10, i.f59186b);
            }
        }

        public b(final ImageView val$display, final File val$thumbFile) {
            this.f4860b = val$display;
            this.f4861c = val$thumbFile;
        }

        @Override
        public void run() {
            if (this.f4860b == null || !this.f4861c.exists()) {
                return;
            }
            N7.c.j0(new RunnableC0089a());
        }
    }

    public static class c {

        public File f4863a;

        public GameObject f4864b;

        public boolean f4865c;

        public int f4866d = 0;

        public int f4867e = 0;

        public WeakReference<ImageView> f4868f;

        public c(File file) {
            this.f4863a = file;
        }

        public void a() {
            this.f4864b.destroy();
            K8.a.D(this.f4864b);
        }

        public boolean b() {
            if (!this.f4865c) {
                return false;
            }
            int i10 = this.f4867e + 1;
            this.f4867e = i10;
            return i10 >= 15;
        }

        public String c() {
            return this.f4863a.getAbsolutePath();
        }

        public String d() {
            return Tc.b.O(c()) + ".meta/";
        }

        public File e() {
            return new File((Tc.b.O(c()) + ".meta/") + "thumb.png");
        }
    }

    public static void c(File file, ImageView display) {
        if (com.itsmagic.engine.Engines.Engine.Texture.Cubemap.a.e()) {
            return;
        }
        if (!file.exists()) {
            throw new RuntimeException();
        }
        f4859e.a();
        List<c> list = f4856b;
        synchronized (list) {
            c cVar = new c(file);
            cVar.f4868f = new WeakReference<>(display);
            list.add(cVar);
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
        f4858d.f5701a.f5712c.j(dArr, 0.1f, f10);
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
        f4858d.f5701a.f5712c.k(dArr);
    }

    public static void e() {
        E7.b bVar;
        c cVar = f4857c;
        if (cVar == null || (bVar = f4858d) == null || cVar.f4864b == null || !bVar.f5705e) {
            return;
        }
        E7.e eVar = bVar.f5701a;
        eVar.f5714e.a(eVar.f5710a);
        Qb.a.b(true, true);
        Qb.a.o(f4858d.f5701a.f5710a);
        f4858d.f5701a.f5714e.z();
        f4858d.f5704d = true;
    }

    public static void f() {
        GameObject.g z10 = f4857c.f4864b.z();
        if (!z10.f()) {
            d(z10.d(), z10.e());
        }
        f4857c.f4865c = true;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ee -> B:22:0x00f3). Please report as a decompilation issue!!! */
    public static void g() {
        E7.b bVar = f4858d;
        if (bVar != null) {
            bVar.c();
        }
        List<c> list = f4856b;
        synchronized (list) {
            try {
                if (!list.isEmpty()) {
                    f4855a.addAll(list);
                    list.clear();
                }
            } finally {
            }
        }
        if (f4857c != null) {
            h();
            return;
        }
        List<c> list2 = f4855a;
        if (!list2.isEmpty()) {
            f4857c = list2.remove(0);
            if (f4858d == null) {
                f4858d = new E7.b();
            }
            try {
                Vertex C12 = Vertex.C1(Vertex.v.SPHERE);
                if (com.itsmagic.engine.Engines.Engine.Texture.Cubemap.a.e()) {
                    f4857c = null;
                } else {
                    try {
                        FileCubemap n10 = C15981c.n(f4857c.f4863a.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), 512);
                        if (n10 != null) {
                            f4858d.f5701a.f5711b.u(new FilamentIndirectLight(new IndirectLight.a().c(1, new float[]{1.0f, 1.0f, 1.0f}).b(50000.0f), n10));
                            Material material = new Material();
                            material.o0();
                            material.h0("roughness", C16165b.f130163i);
                            material.h0("metallic", C16165b.f130161g);
                            ModelRenderer modelRenderer = new ModelRenderer();
                            modelRenderer.setMaterial(material);
                            modelRenderer.setModel(C12);
                            GameObject gameObject = new GameObject();
                            gameObject.r(modelRenderer);
                            f4857c.f4864b = gameObject;
                            gameObject.J0().setPosition(0.0f);
                            f4858d.a(gameObject);
                            K8.a.L(gameObject);
                            E7.b bVar2 = f4858d;
                            bVar2.f5704d = false;
                            bVar2.f5705e = false;
                        } else {
                            f4857c = null;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        f4857c = null;
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                f4857c = null;
            }
        }
        if (f4855a.isEmpty() && f4857c == null) {
            f4859e.b();
            E7.b bVar3 = f4858d;
            if (bVar3 != null) {
                bVar3.b();
                f4858d = null;
            }
        }
    }

    public static void h() {
        f4858d.f5705e = true;
        i(f4857c.f4864b);
        f();
        c cVar = f4857c;
        int i10 = cVar.f4866d;
        if (i10 > 0) {
            int i11 = i10 - 1;
            cVar.f4866d = i11;
            if (i11 <= 0) {
                cVar.a();
                f4857c = null;
                return;
            }
            return;
        }
        if (cVar.b() && f4858d.f5704d) {
            c cVar2 = f4857c;
            cVar2.f4866d = 5;
            f4858d.f5701a.f5714e.g(f4857c.e(), 80, new b(f4857c.f4868f.get(), cVar2.e()));
            Manifest manifest = new Manifest();
            manifest.b();
            E7.f.b(f4857c.f4863a.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), manifest);
        }
    }

    public static void i(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ModelRenderer) {
                ((ModelRenderer) L10).updateForThumb(gameObject, f4858d.f5701a);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            i(gameObject.C(i11));
        }
    }
}
