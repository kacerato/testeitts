package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceStackFrameAmbiguousResultWithContext;
import com.android.tools.r8.retrace.RetraceStackFrameResult;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C6144Wj0 implements RetraceStackFrameAmbiguousResultWithContext {

    public final RetraceStackTraceContext f45519a;

    public final List f45520b;

    public C6144Wj0(List list, RetraceStackTraceContext retraceStackTraceContext) {
        this.f45520b = list;
        this.f45519a = retraceStackTraceContext;
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f45520b.forEach(consumer);
    }

    @Override
    public final void forEachWithIndex(BiConsumer biConsumer) {
        for (int i10 = 0; i10 < this.f45520b.size(); i10++) {
            biConsumer.accept((RetraceStackFrameResult) this.f45520b.get(i10), Integer.valueOf(i10));
        }
    }

    @Override
    public final RetraceStackFrameResult get(int i10) {
        return (RetraceStackFrameResult) this.f45520b.get(i10);
    }

    @Override
    public final List getAmbiguousResult() {
        return this.f45520b;
    }

    @Override
    public final RetraceStackTraceContext getContext() {
        return this.f45519a;
    }

    @Override
    public final boolean isAmbiguous() {
        return this.f45520b.size() > 1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f45520b.isEmpty();
    }

    @Override
    public final int size() {
        return this.f45520b.size();
    }
}
