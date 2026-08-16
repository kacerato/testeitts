package com.android.tools.r8.retrace;

import com.android.tools.r8.M3;
import com.android.tools.r8.ParseFlagInfo;
import com.android.tools.r8.ParseFlagPrinter;
import com.android.tools.r8.PartitionMapConsumer;
import com.android.tools.r8.Y;
import com.android.tools.r8.internal.AbstractC10532z40;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C10365y40;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.retrace.PartitionCommand;
import com.android.tools.r8.utils.C11671s;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

public class Partition {

    private static final String f56266a = C10656zq0.b("Usage: partition [options] <proguard-map> where <proguard-map> is a generated mapping file and options are:");

    static final boolean f56267b = true;

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0099, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        if (com.android.tools.r8.retrace.Partition.f56267b != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a7, code lost:
    
        if (java.util.Arrays.asList(r7).contains("--help") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00af, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b0, code lost:
    
        r7 = java.lang.System.out;
        r7.println("Partition " + com.android.tools.r8.Version.getVersionString());
        r8 = new java.lang.StringBuilder();
        com.android.tools.r8.internal.C10656zq0.a(r8, com.android.tools.r8.retrace.Partition.f56266a);
        new com.android.tools.r8.ParseFlagPrinter().addFlags(getFlags()).appendLinesToBuilder(r8);
        r7.print(r8.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ef, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f0, code lost:
    
        run(r1.build());
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f7, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(String[] strArr, C11091a c11091a) {
        C10365y40 c10365y40 = new C10365y40(strArr);
        PartitionCommand.Builder builder = PartitionCommand.builder();
        boolean z10 = false;
        while (true) {
            if (c10365y40.a() == null) {
                break;
            }
            if (AbstractC10532z40.a(c10365y40, "--help") != null) {
                builder = null;
                break;
            }
            String a10 = AbstractC10532z40.a(c10365y40, "--output", null);
            if (a10 != null && !a10.isEmpty()) {
                builder.setPartitionMapConsumer(new C11671s(Paths.get(a10, new String[0])));
            } else if (!z10) {
                builder.setProguardMapProducer(ProguardMapProducer.fromPath(Paths.get(c10365y40.a(), new String[0])));
                c10365y40.b();
                z10 = true;
            } else {
                StringBuilder sb2 = new StringBuilder();
                C10656zq0.a(sb2, f56266a);
                new ParseFlagPrinter().addFlags(getFlags()).appendLinesToBuilder(sb2);
                c11091a.error(new StringDiagnostic(sb2.toString()));
                throw new RetracePartitionException("Too many arguments specified for builder at '" + c10365y40.a() + "'");
            }
        }
    }

    public static List<ParseFlagInfo> getFlags() {
        int i10 = AbstractC7552hC.f48487c;
        return new C7051eC().a(Y.a("--output", Collections.singletonList("<partition-map>"), Arrays.asList("Output destination of partitioned map"))).a(Y.c()).a();
    }

    public static void main(final String... strArr) {
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                Partition.run(strArr);
            }
        });
    }

    public static void run(String[] strArr) throws RetracePartitionException {
        a(strArr, new C11091a());
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.tools.r8.retrace.ProguardMapPartitionerBuilder] */
    public static void run(PartitionCommand partitionCommand) {
        try {
            PartitionMapConsumer partitionMapConsumer = partitionCommand.getPartitionMapConsumer();
            ?? proguardMapProducer = ProguardMapPartitioner.builder(partitionCommand.getDiagnosticsHandler()).setProguardMapProducer(partitionCommand.getProguardMapProducer());
            PartitionMapConsumer partitionMapConsumer2 = partitionCommand.getPartitionMapConsumer();
            Objects.requireNonNull(partitionMapConsumer2);
            partitionMapConsumer.acceptMappingPartitionMetadata(proguardMapProducer.setPartitionConsumer(new M3(partitionMapConsumer2)).setAllowEmptyMappedRanges(true).setAllowExperimentalMapping(false).build().run());
            partitionCommand.getPartitionMapConsumer().finished(partitionCommand.getDiagnosticsHandler());
        } catch (Throwable th2) {
            throw ((RetracePartitionException) AbstractC8333lv.a(partitionCommand.getDiagnosticsHandler(), th2, new InterfaceC7495gt0() {
                @Override
                public final Object a(Object obj, Object obj2, Object obj3) {
                    RetracePartitionException a10;
                    a10 = Partition.a((String) obj, (Throwable) obj2, (Boolean) obj3);
                    return a10;
                }
            }, RetracePartitionException.class));
        }
    }

    public static RetracePartitionException a(String str, Throwable th2, Boolean bool) {
        return new RetracePartitionException(str, th2);
    }
}
