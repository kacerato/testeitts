package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;

public final class C4297d0 extends AbstractC4287b0 {
    public C4297d0(AndroidResourceInput androidResourceInput, C5094Ef0 c5094Ef0) {
        super(androidResourceInput, c5094Ef0);
    }

    @Override
    public final ByteDataView getByteDataView() {
        try {
            return ByteDataView.of(AbstractC6706c8.a(this.f35614a.getByteStream()));
        } catch (ResourceException | IOException e10) {
            this.f35615b.error(new ExceptionDiagnostic(e10, this.f35614a.getOrigin()));
            return null;
        }
    }
}
