package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.shaking.C11130b3;
import java.util.Collection;
import java.util.function.Consumer;

public class C11130b3 {

    public final AbstractC7552hC f57189a;

    public static class a {

        public final C7051eC f57190a;

        public a() {
            int i10 = AbstractC7552hC.f48487c;
            this.f57190a = new C7051eC();
        }

        public a a(AbstractC11147c3 abstractC11147c3) {
            this.f57190a.a(abstractC11147c3);
            return this;
        }

        public final a a(Collection collection) {
            collection.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11130b3.a.this.a((AbstractC11147c3) obj);
                }
            });
            return this;
        }

        public C11130b3 a() {
            return new C11130b3(this.f57190a.a());
        }
    }

    static {
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
    }

    public C11130b3(AbstractC7552hC abstractC7552hC) {
        this.f57189a = abstractC7552hC;
    }

    public static a a() {
        return new a();
    }

    public boolean a(com.android.tools.r8.graph.M2 m22) {
        AbstractC4895Av0 it = this.f57189a.iterator();
        while (it.hasNext()) {
            if (((AbstractC11147c3) it.next()).a(m22)) {
                return true;
            }
        }
        return false;
    }
}
