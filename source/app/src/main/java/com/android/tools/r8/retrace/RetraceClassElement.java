package com.android.tools.r8.retrace;

import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.TypeReference;
import java.util.List;
import java.util.OptionalInt;

public interface RetraceClassElement extends RetraceElement<RetraceClassResult> {
    @Override
    RetraceClassResult getParentResult();

    RetracedClassReference getRetracedClass();

    RetracedSourceFile getSourceFile();

    RetraceUnknownJsonMappingInformationResult getUnknownJsonMappingInformation();

    RetraceFieldResult lookupField(String str);

    RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, MethodReference methodReference);

    RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, String str);

    RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, String str, List<TypeReference> list, TypeReference typeReference);

    RetraceMethodResult lookupMethod(String str);
}
