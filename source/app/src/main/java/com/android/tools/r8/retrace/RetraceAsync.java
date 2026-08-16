package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.AbstractC5451Kj0;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import java.util.List;

public class RetraceAsync<T, ST extends StackTraceElementProxy<T, ST>> extends AbstractC5451Kj0 {

    private final MappingSupplierAsync f56282d;

    private final DiagnosticsHandler f56283e;

    public static class Builder<T, ST extends StackTraceElementProxy<T, ST>> extends RetraceBuilderBase<Builder<T, ST>, T, ST> {

        private MappingSupplierAsync f56284a;

        public RetraceAsync<T, ST> build() {
            return new RetraceAsync<>(this.stackTraceLineParser, this.f56284a, this.diagnosticsHandler, this.isVerbose);
        }

        @Override
        public Builder<T, ST> self() {
            return this;
        }

        public Builder<T, ST> setMappingSupplier(MappingSupplierAsync<?> mappingSupplierAsync) {
            this.f56284a = mappingSupplierAsync;
            return self();
        }
    }

    public RetraceAsync(StackTraceLineParser stackTraceLineParser, MappingSupplierAsync mappingSupplierAsync, DiagnosticsHandler diagnosticsHandler, boolean z10) {
        super(stackTraceLineParser, mappingSupplierAsync, diagnosticsHandler, z10);
        this.f56282d = mappingSupplierAsync;
        this.f56283e = diagnosticsHandler;
    }

    public RetraceStackTraceResult a(List list, RetraceStackTraceContext retraceStackTraceContext, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
        return retraceStackTraceParsedWithRetracer(this.f56282d.createRetracer(this.f56283e, mappingPartitionFromKeySupplier), list, retraceStackTraceContext);
    }

    public RetraceStackFrameResultWithContext b(StackTraceElementProxy stackTraceElementProxy, RetraceStackTraceContext retraceStackTraceContext, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
        return retraceLineWithRetracer(this.f56282d.createRetracer(this.f56283e, mappingPartitionFromKeySupplier), stackTraceElementProxy, retraceStackTraceContext);
    }

    public static <T, ST extends StackTraceElementProxy<T, ST>> Builder<T, ST> builder() {
        return new Builder<>();
    }

    public RetraceAsyncResult<RetraceStackFrameAmbiguousResultWithContext<T>> retraceFrame(T t10, final RetraceStackTraceContext retraceStackTraceContext) {
        final StackTraceElementProxy<Object, Object> parse = parse(t10);
        registerUses(parse);
        return new RetraceAsyncResult() {
            @Override
            public final Object getResult(MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
                RetraceStackFrameAmbiguousResultWithContext a10;
                a10 = RetraceAsync.this.a(parse, retraceStackTraceContext, mappingPartitionFromKeySupplier);
                return a10;
            }
        };
    }

    public RetraceAsyncResult<RetraceStackFrameResultWithContext<T>> retraceLine(T t10, final RetraceStackTraceContext retraceStackTraceContext) {
        final StackTraceElementProxy<Object, Object> parse = parse(t10);
        registerUses(parse);
        return new RetraceAsyncResult() {
            @Override
            public final Object getResult(MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
                RetraceStackFrameResultWithContext b10;
                b10 = RetraceAsync.this.b(parse, retraceStackTraceContext, mappingPartitionFromKeySupplier);
                return b10;
            }
        };
    }

    public RetraceAsyncResult<RetraceStackTraceResult<T>> retraceStackTrace(List<T> list, RetraceStackTraceContext retraceStackTraceContext) {
        return retraceStackTraceParsed(parse((List<Object>) list), retraceStackTraceContext);
    }

    public RetraceAsyncResult<RetraceStackTraceResult<T>> retraceStackTraceParsed(final List<ST> list, final RetraceStackTraceContext retraceStackTraceContext) {
        registerUses(list);
        return new RetraceAsyncResult() {
            @Override
            public final Object getResult(MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
                RetraceStackTraceResult a10;
                a10 = RetraceAsync.this.a(list, retraceStackTraceContext, mappingPartitionFromKeySupplier);
                return a10;
            }
        };
    }

    public RetraceStackFrameAmbiguousResultWithContext a(StackTraceElementProxy stackTraceElementProxy, RetraceStackTraceContext retraceStackTraceContext, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
        return retraceFrameWithRetracer(this.f56282d.createRetracer(this.f56283e, mappingPartitionFromKeySupplier), stackTraceElementProxy, retraceStackTraceContext);
    }
}
