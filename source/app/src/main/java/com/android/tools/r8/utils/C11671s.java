package com.android.tools.r8.utils;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.PartitionMapConsumer;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.retrace.MappingPartition;
import com.android.tools.r8.retrace.MappingPartitionMetadata;
import com.android.tools.r8.utils.C11673u;
import java.io.IOException;
import java.nio.file.Path;

public final class C11671s implements PartitionMapConsumer {

    public final C7 f58637a = new C7();

    public final Path f58638b;

    public C11671s(Path path) {
        this.f58638b = path;
    }

    public final C11673u.b a() {
        return C11673u.b.a(this.f58638b);
    }

    @Override
    public final void acceptMappingPartition(MappingPartition mappingPartition) {
        try {
            C7 c72 = this.f58637a;
            InterfaceC7158es0 interfaceC7158es0 = new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return C11671s.this.a();
                }
            };
            if (!c72.b()) {
                c72.a((C7) interfaceC7158es0.get());
            }
            ((C11673u.b) c72.a()).a(mappingPartition.getKey(), mappingPartition.getPayload());
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final void acceptMappingPartitionMetadata(MappingPartitionMetadata mappingPartitionMetadata) {
        try {
            C7 c72 = this.f58637a;
            InterfaceC7158es0 interfaceC7158es0 = new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return C11671s.this.b();
                }
            };
            if (!c72.b()) {
                c72.a((C7) interfaceC7158es0.get());
            }
            ((C11673u.b) c72.a()).a("METADATA", mappingPartitionMetadata.getBytes());
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public final C11673u.b b() {
        return C11673u.b.a(this.f58638b);
    }

    public final C11673u.b c() {
        return C11673u.b.a(this.f58638b);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        try {
            C7 c72 = this.f58637a;
            InterfaceC7158es0 interfaceC7158es0 = new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return C11671s.this.c();
                }
            };
            if (!c72.b()) {
                c72.a((C7) interfaceC7158es0.get());
            }
            ((C11673u.b) c72.a()).a();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
