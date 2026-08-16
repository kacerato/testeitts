package com.android.tools.r8;

import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;

public interface InterfaceC11677v0 extends Resource {

    public static class a implements InterfaceC11677v0 {

        public static final boolean f58646d = true;

        public final Path f58647a;

        public final Charset f58648b;

        public final PathOrigin f58649c;

        public a(Path path, Charset charset) {
            boolean z10 = f58646d;
            if (!z10 && path == null) {
                throw new AssertionError();
            }
            if (!z10 && charset == null) {
                throw new AssertionError();
            }
            this.f58647a = path;
            this.f58648b = charset;
            this.f58649c = new PathOrigin(path);
        }

        @Override
        public final String a() {
            try {
                return C6169Ww.a(this.f58647a, this.f58648b);
            } catch (IOException e10) {
                throw new ResourceException(this.f58649c, e10);
            }
        }

        @Override
        public final Origin getOrigin() {
            return this.f58649c;
        }
    }

    static InterfaceC11677v0 a(String str, Origin origin) {
        return new C11682w0(origin, str);
    }

    String a() throws ResourceException;

    static a a(Path path) {
        return new a(path, StandardCharsets.UTF_8);
    }
}
