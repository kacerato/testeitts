package androidx.core.os;

import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;

public final class TraceKt {
    @InterfaceC14427o(message = "Use androidx.tracing.Trace instead", replaceWith = @InterfaceC14412g0(expression = "trace(sectionName)", imports = {"androidx.tracing.trace"}))
    public static final <T> T trace(String sectionName, Mf.a<? extends T> block) {
        M.p(sectionName, "sectionName");
        M.p(block, "block");
        TraceCompat.beginSection(sectionName);
        try {
            return block.invoke();
        } finally {
            J.d(1);
            TraceCompat.endSection();
            J.c(1);
        }
    }
}
