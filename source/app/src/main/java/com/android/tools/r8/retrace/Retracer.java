package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.TypeReference;
import java.util.OptionalInt;

public interface Retracer {
    static Retracer createDefault(ProguardMapProducer proguardMapProducer, DiagnosticsHandler diagnosticsHandler) {
        try {
            return ProguardMappingSupplier.builder().setProguardMapProducer(proguardMapProducer).build().createRetracer(diagnosticsHandler);
        } catch (Exception e10) {
            throw new InvalidMappingFileException(e10);
        }
    }

    RetraceClassResult retraceClass(ClassReference classReference);

    RetraceFieldResult retraceField(FieldReference fieldReference);

    RetraceFrameResult retraceFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, ClassReference classReference, String str);

    RetraceFrameResult retraceFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, MethodReference methodReference);

    RetraceMethodResult retraceMethod(MethodReference methodReference);

    RetraceThrownExceptionResult retraceThrownException(ClassReference classReference);

    RetraceTypeResult retraceType(TypeReference typeReference);
}
