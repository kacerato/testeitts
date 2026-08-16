package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceUnknownJsonMappingInformationResult;
import com.android.tools.r8.retrace.RetraceUnknownMappingInformationElement;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;

public final class C7801ik0 implements RetraceUnknownJsonMappingInformationResult {

    public final AbstractC7552hC f49041a;

    public C7801ik0(AbstractC7552hC abstractC7552hC) {
        this.f49041a = abstractC7552hC;
    }

    public final RetraceUnknownMappingInformationElement a(C9502sv0 c9502sv0) {
        return new C7967jk0(this, c9502sv0);
    }

    @Override
    public final Stream stream() {
        return this.f49041a.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7801ik0.this.a((C9502sv0) obj);
            }
        });
    }

    public static C7801ik0 a(List list) {
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7801ik0.a(C7051eC.this, (com.android.tools.r8.naming.mappinginformation.e) obj);
            }
        });
        return new C7801ik0(c7051eC.a());
    }

    public static void a(C7051eC c7051eC, com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        if (eVar instanceof C9502sv0) {
            c7051eC.a(eVar.k());
        }
    }
}
