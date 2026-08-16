package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import Rb.c;
import androidx.annotation.Keep;
import com.google.android.filament.Camera;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import java.util.HashMap;
import java.util.Map;

public class FilamentCamera extends SGCListenerObject {

    public final c f80081b;

    public final Camera f80082c;

    public float f80083d;

    public boolean f80084e;

    public static final M9.c f80080g = new a();

    @Keep
    private static final Map<Integer, c> concreteEntityReferences = new HashMap();

    public class a implements M9.c {
        @Override
        public void a(long pointer) {
            int i10 = (int) pointer;
            if (Qb.a.f().a0(i10) != null) {
                Qb.a.f().A(i10);
            }
            FilamentCamera.concreteEntityReferences.remove(Integer.valueOf(i10));
        }
    }

    public FilamentCamera() {
        K8.a.G();
        Qb.a.d();
        c cVar = new c();
        this.f80081b = cVar;
        this.f80082c = Qb.a.f().q(cVar.getId());
        SGC.put(this, cVar.getId(), f80080g, false);
        concreteEntityReferences.put(Integer.valueOf(cVar.getId()), cVar);
    }

    public static boolean h(c entity) {
        Qb.a.d();
        K8.a.G();
        return concreteEntityReferences.containsValue(entity);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f80084e) {
            throw new RuntimeException();
        }
        if (FilamentView.r(this)) {
            throw new FilamentContractViolationError("Camera still bound to a view");
        }
        if (FilamentScene.k(this.f80081b)) {
            throw new FilamentContractViolationError("Camera entity still bound to a scene");
        }
        this.f80084e = true;
        SGC.destroyImmediate(this);
        this.f80081b.destroyImmediate();
    }

    @Override
    public int destroyPriority() {
        return 20;
    }

    public Camera e() {
        if (this.f80084e) {
            throw new RuntimeException();
        }
        return this.f80082c;
    }

    public c f() {
        if (this.f80084e) {
            throw new RuntimeException();
        }
        return this.f80081b;
    }

    public float getFocusDistance() {
        if (this.f80084e) {
            throw new RuntimeException();
        }
        return this.f80083d;
    }

    public void i(double eyeX, double eyeY, double eyeZ, double centerX, double centerY, double centerZ, double upX, double upY, double upZ) {
        K8.a.G();
        if (this.f80084e) {
            throw new RuntimeException();
        }
        this.f80082c.z(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
    }

    public void j(double[] frustumB, float nearPlane, float farPlane) {
        K8.a.G();
        if (this.f80084e) {
            throw new RuntimeException();
        }
        this.f80082c.B(frustumB, nearPlane, farPlane);
    }

    public void k(double[] modelMatrix) {
        K8.a.G();
        if (this.f80084e) {
            throw new RuntimeException();
        }
        this.f80082c.I(modelMatrix);
    }

    public void l(float left, float right, float bottom, float top, float near, float far) {
        K8.a.G();
        if (this.f80084e) {
            throw new RuntimeException();
        }
        this.f80082c.L(Camera.b.ORTHO, left, right, bottom, top, near, far);
    }

    public void m(float fov, float ratio, float md2, float mrd, Camera.a fov1) {
        K8.a.G();
        if (this.f80084e) {
            throw new RuntimeException();
        }
        this.f80082c.K(fov, ratio, md2, mrd, fov1);
    }

    public void setFocusDistance(float distance) {
        K8.a.G();
        if (this.f80084e) {
            throw new RuntimeException();
        }
        this.f80083d = distance;
        this.f80082c.G(distance);
    }
}
