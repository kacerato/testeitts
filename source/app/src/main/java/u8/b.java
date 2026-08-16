package U8;

import com.google.android.filament.Fence;
import com.google.android.filament.Texture;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.atomic.AtomicBoolean;

public class b {

    public Camera f25811a;

    public Tb.a f25812b;

    public float f25813c = 100.0f;

    public final AtomicBoolean f25814d = new AtomicBoolean();

    public final ByteBuffer f25815e;

    public final Texture.g f25816f;

    public Fence f25817g;

    public b() {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(4);
        this.f25815e = allocateDirect;
        allocateDirect.order(ByteOrder.nativeOrder());
        this.f25816f = new Texture.g(allocateDirect, Texture.e.DEPTH_COMPONENT, Texture.k.FLOAT);
    }

    public float a() {
        return this.f25813c;
    }

    public final void b() {
        this.f25815e.rewind();
        if (this.f25815e.remaining() >= 4) {
            float f10 = this.f25815e.getFloat();
            float nearPlane = this.f25811a.getNearPlane();
            float farPlane = this.f25811a.getFarPlane();
            this.f25811a.getRenderDistance();
            float f11 = ((farPlane - nearPlane) * f10) + nearPlane;
            System.out.println("[AutoDof] log depth: " + f10 + " linear:" + f11 + " m (near=" + nearPlane + ", far=" + farPlane + ")");
            this.f25813c = f11;
        }
        this.f25814d.set(false);
    }

    public final void c() {
        int i10 = this.f25812b.i() / 2;
        int h10 = this.f25812b.h() / 2;
        this.f25815e.rewind();
        Qb.a.g().n(this.f25812b.r().f(), i10, h10, 1, 1, this.f25816f);
        this.f25817g = Qb.a.f().r();
    }

    public void d(Camera camera) {
        if (!this.f25814d.compareAndSet(false, true)) {
            try {
                if (this.f25817g.c(Fence.b.FLUSH, 0L) == Fence.a.CONDITION_SATISFIED) {
                    b();
                    return;
                }
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        this.f25811a = camera;
        Tb.a imageBuffer = camera.getImageBuffer();
        this.f25812b = imageBuffer;
        if (imageBuffer == null || imageBuffer.r() == null) {
            this.f25814d.set(false);
        } else {
            c();
        }
    }
}
