package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.retrace.RetraceThrownExceptionElement;
import com.android.tools.r8.retrace.RetraceThrownExceptionResult;
import java.util.stream.Stream;

public final class C7301fk0 implements RetraceThrownExceptionResult {

    public final ClassReference f48081a;

    public final C10957k f48082b;

    public C7301fk0(ClassReference classReference, C10957k c10957k) {
        this.f48081a = classReference;
        this.f48082b = c10957k;
    }

    @Override
    public final boolean isEmpty() {
        return this.f48081a == null;
    }

    @Override
    public final Stream<RetraceThrownExceptionElement> stream() {
        C10957k c10957k = this.f48082b;
        return Stream.of(new C7134ek0(this, new C8301lk0(this.f48082b != null, c10957k == null ? this.f48081a : Reference.classFromTypeName(c10957k.f55951a)), this.f48082b, this.f48081a));
    }
}
