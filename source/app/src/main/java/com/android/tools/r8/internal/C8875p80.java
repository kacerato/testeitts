package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.InterfaceC6594bV;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.retrace.MappingPartition;
import com.android.tools.r8.retrace.MappingPartitionMetadata;
import com.android.tools.r8.retrace.ProguardMapPartitioner;
import com.android.tools.r8.retrace.ProguardMapPartitionerBuilder;
import com.android.tools.r8.retrace.ProguardMapProducer;
import com.android.tools.r8.retrace.RetracePartitionException;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class C8875p80 implements ProguardMapPartitioner {

    public final ProguardMapProducer f51448a;

    public final Consumer f51449b;

    public final DiagnosticsHandler f51450c;

    public final boolean f51451d;

    public final boolean f51452e;

    public final ZU f51453f;

    public static class a implements ProguardMapPartitionerBuilder<a, C8875p80> {

        public ProguardMapProducer f51454a;

        public Consumer f51455b;

        public final DiagnosticsHandler f51456c;

        public boolean f51457d = false;

        public boolean f51458e = false;

        public a(DiagnosticsHandler diagnosticsHandler) {
            this.f51456c = diagnosticsHandler;
        }

        @Override
        public final a setAllowEmptyMappedRanges(boolean z10) {
            this.f51457d = z10;
            return this;
        }

        @Override
        public final a setAllowExperimentalMapping(boolean z10) {
            this.f51458e = z10;
            return this;
        }

        @Override
        public final a setPartitionConsumer(Consumer consumer) {
            return setPartitionConsumer((Consumer<MappingPartition>) consumer);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public C8875p80 build() {
            return new C8875p80(this.f51454a, this.f51455b, this.f51456c, this.f51457d, this.f51458e, ZU.a());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public a setPartitionConsumer(Consumer<MappingPartition> consumer) {
            this.f51455b = consumer;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public a setProguardMapProducer(ProguardMapProducer proguardMapProducer) {
            this.f51454a = proguardMapProducer;
            return this;
        }
    }

    public static class b extends a {

        public ZU f51459f;

        public b(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
            this.f51459f = ZU.a();
        }

        public b a(ZU zu) {
            this.f51459f = zu;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final C8875p80 build() {
            return new C8875p80(this.f51454a, this.f51455b, this.f51456c, this.f51457d, this.f51458e, this.f51459f);
        }
    }

    public C8875p80(ProguardMapProducer proguardMapProducer, Consumer consumer, DiagnosticsHandler diagnosticsHandler, boolean z10, boolean z11, ZU zu) {
        this.f51448a = proguardMapProducer;
        this.f51449b = consumer;
        this.f51450c = diagnosticsHandler;
        this.f51451d = z10;
        this.f51452e = z11;
        this.f51453f = zu;
    }

    public static void a(C10912b.a aVar) {
        aVar.f55831a = true;
        aVar.f55832b = true;
    }

    public final C10912b b(final InterfaceC7328ft0 interfaceC7328ft0) {
        C8708o80 c8708o80 = new C8708o80(this.f51448a.isFileBacked() ? new C9542t80(this.f51448a.getPath(), EnumC6871d70.f47286b, true) : new C9375s80(this.f51448a.get(), EnumC6871d70.f47286b, true));
        final C10912b a10 = C10912b.a(c8708o80, MapVersion.MAP_VERSION_UNKNOWN, this.f51450c, this.f51451d, this.f51452e, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8875p80.a((C10912b.a) obj);
            }
        });
        c8708o80.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8875p80.this.a(interfaceC7328ft0, a10, (String) obj, (List) obj2);
            }
        });
        return a10;
    }

    @Override
    public MappingPartitionMetadata run() throws IOException {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        InterfaceC7328ft0 interfaceC7328ft0 = new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                C8875p80.this.a(linkedHashSet, (C10912b) obj, (C10957k) obj2, (String) obj3);
            }
        };
        C10912b a10 = this.f51448a instanceof C9042q80 ? a(interfaceC7328ft0) : b(interfaceC7328ft0);
        MapVersion mapVersion = MapVersion.MAP_VERSION_UNKNOWN;
        com.android.tools.r8.naming.mappinginformation.b bVar = a10.f55828d.isEmpty() ? null : (com.android.tools.r8.naming.mappinginformation.b) a10.f55828d.iterator().next();
        if (bVar != null) {
            mapVersion = bVar.s();
        }
        ZU zu = this.f51453f;
        if (zu == ZU.OBFUSCATED_TYPE_NAME_AS_KEY) {
            return InterfaceC6594bV.a.a(mapVersion);
        }
        if (zu == ZU.OBFUSCATED_TYPE_NAME_AS_KEY_WITH_PARTITIONS) {
            return new C6760cV(mapVersion, new AW(linkedHashSet), new C10098wW(a10.f55830f, a10.c()));
        }
        RetracePartitionException retracePartitionException = new RetracePartitionException("Unknown mapping partitioning strategy");
        this.f51450c.error(new ExceptionDiagnostic(retracePartitionException));
        throw retracePartitionException;
    }

    public final C10912b a(final InterfaceC7328ft0 interfaceC7328ft0) {
        final C10912b c10912b = ((C9042q80) this.f51448a).f51723a;
        c10912b.f55825a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InterfaceC7328ft0.this.a(c10912b, r4, ((C10957k) obj2).toString());
            }
        });
        return c10912b;
    }

    public final void a(InterfaceC7328ft0 interfaceC7328ft0, C10912b c10912b, String str, List list) {
        try {
            String a10 = C10656zq0.a("\n", (Iterable) list);
            AbstractC8552nC abstractC8552nC = C10912b.a(a10, (DiagnosticsHandler) null, this.f51451d, this.f51452e, false).f55825a;
            if (abstractC8552nC.size() != 1) {
                this.f51450c.error(new StringDiagnostic("Multiple class names in payload\n: " + a10));
                return;
            }
            interfaceC7328ft0.a(c10912b, (C10957k) abstractC8552nC.values().iterator().next(), a10);
        } catch (IOException e10) {
            this.f51450c.error(new ExceptionDiagnostic(e10));
        }
    }

    public final void a(HashSet hashSet, final C10912b c10912b, C10957k c10957k, String str) {
        final HashSet hashSet2 = new HashSet();
        final K50 k50 = new K50();
        c10957k.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8875p80.a(C10912b.this, hashSet2, k50, (String) obj);
            }
        });
        if (!k50.f41572a.isEmpty()) {
            str = "# " + new L50(k50.f41572a).r() + "\n" + str;
        }
        this.f51449b.accept(new YU(c10957k.f55952b, str.getBytes(StandardCharsets.UTF_8)));
        hashSet.add(c10957k.f55952b);
    }

    public static void a(C10912b c10912b, Set set, K50 k50, String str) {
        if (((String) c10912b.f55829e.get(str)) == null || !set.add(str)) {
            return;
        }
        k50.f41572a.put(str, (String) c10912b.f55829e.get(str));
    }
}
