package com.android.tools.r8.internal;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.utils.ArchiveResourceProvider;
import com.android.tools.r8.utils.C11662i;
import java.io.IOException;
import java.util.HashMap;
import java.util.function.Consumer;

public final class C8604na {

    public static final boolean f50981c = true;

    public HashMap f50982a = null;

    public final C11662i f50983b;

    public C8604na(C11662i c11662i) {
        this.f50983b = c11662i;
    }

    public final void a() {
        final C8270la c8270la = new C8270la(this);
        for (ProgramResourceProvider programResourceProvider : this.f50983b.h()) {
            if (!(programResourceProvider instanceof C9905vJ)) {
                if (programResourceProvider instanceof ArchiveResourceProvider) {
                    ((ArchiveResourceProvider) programResourceProvider).accept(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C8604na.a(C8270la.this, (ProgramResource) obj);
                        }
                    });
                } else {
                    for (ProgramResource programResource : programResourceProvider.getProgramResources()) {
                        if (programResource.getKind() == ProgramResource.Kind.CF) {
                            try {
                                byte[] a10 = C6040Uo0.a(programResource.getByteStream());
                                int length = a10.length;
                                new C6072Vd(a10, true).a(c8270la, new K4[0], 4);
                            } catch (IOException unused) {
                            }
                        }
                    }
                }
            }
        }
    }

    public static void a(C8270la c8270la, ProgramResource programResource) {
        if (programResource.getKind() == ProgramResource.Kind.CF) {
            try {
                byte[] a10 = C6040Uo0.a(programResource.getByteStream());
                int length = a10.length;
                new C6072Vd(a10, true).a(c8270la, new K4[0], 4);
            } catch (ResourceException | IOException unused) {
            }
        }
    }
}
