package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.internal.C10098wW;
import com.android.tools.r8.internal.C9375s80;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC6594bV;
import com.android.tools.r8.internal.M50;
import com.android.tools.r8.naming.C10912b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.function.Consumer;

public class C11093c {

    public final StringConsumer f56311a;

    public final M50 f56312b;

    public final DiagnosticsHandler f56313c;

    public static class a {

        public StringConsumer f56314a;

        public M50 f56315b;

        public DiagnosticsHandler f56316c;

        public a a(StringConsumer stringConsumer) {
            this.f56314a = stringConsumer;
            return this;
        }

        public a a(M50<?> m50) {
            this.f56315b = m50;
            return this;
        }

        public a a(DiagnosticsHandler diagnosticsHandler) {
            this.f56316c = diagnosticsHandler;
            return this;
        }

        public C11093c a() {
            return new C11093c(this.f56314a, this.f56315b, this.f56316c);
        }
    }

    public C11093c(StringConsumer stringConsumer, M50 m50, DiagnosticsHandler diagnosticsHandler) {
        this.f56311a = stringConsumer;
        this.f56312b = m50;
        this.f56313c = diagnosticsHandler;
    }

    public final void a(InterfaceC6594bV interfaceC6594bV, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
        final C11094d c11094d = new C11094d(this.f56311a, this.f56313c);
        if (interfaceC6594bV.c()) {
            C10098wW d10 = interfaceC6594bV.d();
            if (d10.d()) {
                d10.b().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C11093c.a(C11094d.this, (String) obj);
                    }
                });
            }
        }
        Iterator<String> it = interfaceC6594bV.a().iterator();
        while (it.hasNext()) {
            try {
                C10912b.a(new C9375s80(new ByteArrayInputStream(mappingPartitionFromKeySupplier.get(it.next())), EnumC6871d70.f47286b, true), interfaceC6594bV.b(), this.f56313c, true, true, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C11093c.a((C10912b.a) obj);
                    }
                }).a(c11094d);
            } catch (IOException e10) {
                throw new RetracePartitionException(e10);
            }
        }
        c11094d.f56317a.finished(this.f56313c);
        this.f56312b.finished(this.f56313c);
    }

    public void b() throws RetracePartitionException {
        InterfaceC6594bV metadata = this.f56312b.getMetadata(this.f56313c);
        if (metadata == null || !metadata.e()) {
            throw new RetracePartitionException("Cannot obtain all partition keys from metadata");
        }
        PartitionMappingSupplier partitionMappingSupplier = this.f56312b.getPartitionMappingSupplier();
        if (partitionMappingSupplier == null) {
            throw new RetracePartitionException("Running synchronously requires a synchronous partition mapping provider. Use runAsync() if you have an asynchronous provider.");
        }
        Iterator<String> it = metadata.a().iterator();
        while (it.hasNext()) {
            this.f56312b.registerKeyUse(it.next());
        }
        a(metadata, partitionMappingSupplier.getMappingPartitionFromKeySupplier());
    }

    public static void a(C10912b.a aVar) {
        aVar.f55831a = true;
    }

    public static void a(C11094d c11094d, String str) {
        c11094d.f56317a.accept(str, c11094d.f56318b);
        c11094d.f56317a.accept("\n", c11094d.f56318b);
    }

    public static a a() {
        return new a();
    }
}
