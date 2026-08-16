package D7;

import U.h;
import android.opengl.Matrix;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.i;
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
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;

public class d {

    public static c f4900c;

    public static E7.b f4901d;

    public static final List<c> f4898a = new SteppedArrayList();

    public static final List<c> f4899b = new SteppedArrayList();

    public static final UpdateModule f4902e = new a();

    public class a extends UpdateModule {
        @Override
        public void f() {
            d.e();
        }

        @Override
        public void h() {
            d.g();
        }
    }

    public class b implements Runnable {

        public final ImageView f4903b;

        public final File f4904c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                h u10 = new h().u(R.drawable.package_failedload);
                b bVar = b.this;
                Vc.e.L(bVar.f4903b, bVar.f4904c.getAbsolutePath(), N7.c.t(), u10, i.f59186b);
            }
        }

        public b(final ImageView val$display, final File val$thumbFile) {
            this.f4903b = val$display;
            this.f4904c = val$thumbFile;
        }

        @Override
        public void run() {
            if (this.f4903b == null || !this.f4904c.exists()) {
                return;
            }
            N7.c.j0(new a());
        }
    }

    public static class c {

        public Vertex f4906a;

        public String f4907b;

        public GameObject f4908c;

        public boolean f4909d;

        public int f4910e = 0;

        public int f4911f = 0;

        public WeakReference<ImageView> f4912g;

        public c(Vertex vertex, String name) {
            this.f4906a = vertex;
            this.f4907b = name;
        }

        public void a() {
            this.f4908c.destroy();
            K8.a.D(this.f4908c);
        }

        public boolean b() {
            if (!this.f4909d) {
                return false;
            }
            int i10 = this.f4911f + 1;
            this.f4911f = i10;
            return i10 >= 15;
        }

        public File c() {
            return new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/thumbs/" + Tc.b.w(this.f4907b, true) + ".png");
        }
    }

    public static void c(String name, Vertex vertex, ImageView display) {
        if (vertex == null) {
            throw new RuntimeException();
        }
        f4902e.a();
        List<c> list = f4899b;
        synchronized (list) {
            c cVar = new c(vertex, name);
            cVar.f4912g = new WeakReference<>(display);
            list.add(cVar);
        }
    }

    public static void d(Vector3 center, float distance) {
        float M10 = Nc.b.M(0.5f, 1.4f * distance);
        double[] dArr = new double[16];
        float[] fArr = new float[16];
        float[] fArr2 = new float[16];
        float f10 = M10 * 4.0f;
        Matrix.perspectiveM(new float[16], 0, 90.0f, 1.0f, 0.1f, f10);
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = r8[i10];
        }
        f4901d.f5701a.f5712c.j(dArr, 0.1f, f10);
        Vector3 add = center.add(0.0f, 0.0f, -M10);
        add.rotateLocal(35.0f, 30.0f, 0.0f);
        Quaternion quaternion = new Quaternion();
        quaternion.v(35.0f, 30.0f, 0.0f);
        Vector3 p02 = quaternion.p0(Vector3.forward());
        p02.normalizeLocal();
        Matrix.setLookAtM(fArr, 0, add.getX(), add.getY(), add.getZ(), add.getX() + p02.getX(), add.getY() + p02.getY(), add.getZ() + p02.getZ(), 0.0f, 1.0f, 0.0f);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.invertM(fArr2, 0, fArr, 0);
        for (int i11 = 0; i11 < 16; i11++) {
            dArr[i11] = fArr2[i11];
        }
        f4901d.f5701a.f5712c.k(dArr);
    }

    public static void e() {
        E7.b bVar;
        c cVar = f4900c;
        if (cVar == null || (bVar = f4901d) == null || cVar.f4908c == null || !bVar.f5705e) {
            return;
        }
        E7.e eVar = bVar.f5701a;
        eVar.f5714e.a(eVar.f5710a);
        Qb.a.b(true, true);
        Qb.a.o(f4901d.f5701a.f5710a);
        f4901d.f5701a.f5714e.z();
        f4901d.f5704d = true;
    }

    public static void f() {
        GameObject.g z10 = f4900c.f4908c.z();
        if (!z10.f()) {
            d(z10.d(), z10.e());
        }
        f4900c.f4909d = true;
    }

    public static void g() {
        E7.b bVar = f4901d;
        if (bVar != null) {
            bVar.c();
        }
        List<c> list = f4899b;
        synchronized (list) {
            try {
                if (!list.isEmpty()) {
                    f4898a.addAll(list);
                    list.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (f4900c != null) {
            h();
            return;
        }
        List<c> list2 = f4898a;
        if (!list2.isEmpty()) {
            f4900c = list2.remove(0);
            if (f4901d == null) {
                f4901d = new E7.b();
            }
            try {
                Vertex vertex = f4900c.f4906a;
                Material material = new Material();
                material.f78885e = "@vertexthumbbuilder-" + Tc.b.L();
                material.f78886g = false;
                ModelRenderer modelRenderer = new ModelRenderer();
                modelRenderer.setMaterial(material);
                modelRenderer.setModel(vertex);
                GameObject gameObject = new GameObject();
                gameObject.r(modelRenderer);
                f4900c.f4908c = gameObject;
                gameObject.J0().setPosition(0.0f);
                f4901d.a(gameObject);
                K8.a.L(gameObject);
                E7.b bVar2 = f4901d;
                bVar2.f5704d = false;
                bVar2.f5705e = false;
            } catch (Exception e10) {
                e10.printStackTrace();
                f4900c = null;
            }
        }
        if (f4898a.isEmpty() && f4900c == null) {
            f4902e.b();
            E7.b bVar3 = f4901d;
            if (bVar3 != null) {
                bVar3.b();
                f4901d = null;
            }
        }
    }

    public static void h() {
        f4901d.f5705e = true;
        i(f4900c.f4908c);
        f();
        c cVar = f4900c;
        int i10 = cVar.f4910e;
        if (i10 > 0) {
            int i11 = i10 - 1;
            cVar.f4910e = i11;
            if (i11 <= 0) {
                cVar.a();
                f4900c = null;
                return;
            }
            return;
        }
        if (cVar.b() && f4901d.f5704d) {
            c cVar2 = f4900c;
            cVar2.f4910e = 5;
            File c10 = cVar2.c();
            f4901d.f5701a.f5714e.g(f4900c.c(), 80, new b(f4900c.f4912g.get(), c10));
        }
    }

    public static void i(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ModelRenderer) {
                ((ModelRenderer) L10).updateForThumb(gameObject, f4901d.f5701a);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            i(gameObject.C(i11));
        }
    }
}
