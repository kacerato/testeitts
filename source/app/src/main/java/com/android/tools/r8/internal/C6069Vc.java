package com.android.tools.r8.internal;

import com.android.tools.r8.R8Assistant;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.io.InputStream;

public final class C6069Vc {

    public final C5094Ef0 f45102a;

    public C6069Vc(C5094Ef0 c5094Ef0) {
        this.f45102a = c5094Ef0;
    }

    public final byte[] a(Class cls) {
        String b10 = C4932Bl.b((Class<?>) cls);
        try {
            InputStream resourceAsStream = R8Assistant.class.getClassLoader().getResourceAsStream(b10);
            try {
                if (resourceAsStream != null) {
                    byte[] a10 = AbstractC6706c8.a(resourceAsStream);
                    resourceAsStream.close();
                    return a10;
                }
                this.f45102a.error(new StringDiagnostic("Could not open class file: " + b10));
                if (resourceAsStream == null) {
                    return null;
                }
                resourceAsStream.close();
                return null;
            } finally {
            }
        } catch (IOException e10) {
            this.f45102a.error(new ExceptionDiagnostic(e10));
            return null;
        }
    }
}
