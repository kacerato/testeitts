package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4798y;

public final class C8572nK implements InterfaceC5121Es0 {

    public final com.android.tools.r8.graph.M2 f50926a;

    public final com.android.tools.r8.shaking.N f50927b;

    public final C8570nJ f50928c;

    public C8572nK(C4798y c4798y, com.android.tools.r8.shaking.N n10) {
        this.f50926a = c4798y.b().d("Landroid/hardware/camera2/CameraDevice;");
        this.f50927b = n10;
        this.f50928c = c4798y.E();
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        if (a22.s0().a(this.f50926a)) {
            C8570nJ c8570nJ = this.f50928c;
            if ((c8570nJ.f50697l instanceof ClassFileConsumer) || c8570nJ.z().b(C2.L)) {
                this.f50927b.f56780W.a(new C5077Dz0(), h52);
            }
        }
    }
}
