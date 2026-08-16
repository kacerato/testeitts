package com.android.tools.r8.utils;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Consumer;

public final class C11669p extends ClassFileConsumer.ForwardingConsumer {

    public static final boolean f58626f = true;

    public ArrayList f58627c;

    public final ClassFileConsumer f58628d;

    public final r f58629e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11669p(r rVar, ClassFileConsumer classFileConsumer, ClassFileConsumer classFileConsumer2) {
        super(classFileConsumer);
        this.f58629e = rVar;
        this.f58628d = classFileConsumer2;
        this.f58627c = new ArrayList();
    }

    public final void a(C11670q c11670q) {
        this.f58629e.f58633a.a(c11670q.f58631b, Origin.unknown(), c11670q.f58630a);
    }

    @Override
    public final void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
        super.accept(byteDataView, str, diagnosticsHandler);
        byte[] copyByteData = byteDataView.copyByteData();
        synchronized (this) {
            this.f58627c.add(new C11670q(Collections.singleton(str), copyByteData));
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        super.finished(diagnosticsHandler);
        r rVar = this.f58629e;
        if (rVar.f58634b) {
            if (f58626f) {
                return;
            }
            getDataResourceConsumer();
        } else {
            rVar.f58634b = true;
            this.f58627c.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11669p.this.a((C11670q) obj);
                }
            });
            this.f58627c = null;
        }
    }

    @Override
    public final DataResourceConsumer getDataResourceConsumer() {
        ClassFileConsumer classFileConsumer = this.f58628d;
        return new C11668o(this, classFileConsumer != null ? classFileConsumer.getDataResourceConsumer() : null);
    }
}
