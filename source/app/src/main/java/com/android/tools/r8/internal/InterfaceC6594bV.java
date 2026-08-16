package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.dex.C4318s;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.retrace.MappingPartitionMetadata;
import com.android.tools.r8.retrace.RetracePartitionException;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Collection;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public interface InterfaceC6594bV extends MappingPartitionMetadata {

    public static final byte[] f46770a = {Opcodes.OPC_tableswitch, Opcodes.OPC_jsr};

    public static class a implements InterfaceC6594bV {

        public final MapVersion f46771b;

        public a(MapVersion mapVersion) {
            this.f46771b = mapVersion;
        }

        public static a a(MapVersion mapVersion) {
            return new a(mapVersion);
        }

        @Override
        public final MapVersion b() {
            return this.f46771b;
        }

        @Override
        public byte[] getBytes() {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeBytes(this.f46771b.getName());
                dataOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    default Collection<String> a() {
        return null;
    }

    MapVersion b();

    default boolean c() {
        return false;
    }

    default C10098wW d() {
        return new C10098wW(null, null);
    }

    default boolean e() {
        return false;
    }

    static InterfaceC6594bV a(C4318s c4318s, MapVersion mapVersion, DiagnosticsHandler diagnosticsHandler) {
        ZU zu;
        if (c4318s == null) {
            return a.a(mapVersion);
        }
        if (c4318s.a().remaining() > 2) {
            int i10 = c4318s.f35933a.getShort() & 65535;
            byte[] bArr = f46770a;
            if (i10 == HJ.a((byte) 0, (byte) 0, bArr[0], bArr[1])) {
                i10 = c4318s.d();
            }
            int[] iArr = AbstractC6427aV.f46547a;
            if (i10 == 0) {
                zu = ZU.OBFUSCATED_TYPE_NAME_AS_KEY;
            } else if (i10 != 1) {
                zu = ZU.UNKNOWN;
            } else {
                zu = ZU.OBFUSCATED_TYPE_NAME_AS_KEY_WITH_PARTITIONS;
            }
            int i11 = iArr[zu.ordinal()];
            if (i11 == 1) {
                byte[] array = c4318s.a().array();
                return a.a(MapVersion.fromName(new String(array, 2, array.length - 2)));
            }
            if (i11 == 2) {
                MapVersion fromName = MapVersion.fromName(c4318s.f());
                byte[] bArr2 = new byte[c4318s.f35933a.getInt()];
                c4318s.a(bArr2);
                C10599zW c10599zW = new C10599zW(bArr2);
                byte[] bArr3 = new byte[c4318s.f35933a.getInt()];
                c4318s.a(bArr3);
                return new C6760cV(fromName, c10599zW, new C9931vW(bArr3));
            }
            throw new RetracePartitionException("Could not find partition key strategy from serialized key: " + i10);
        }
        RetracePartitionException retracePartitionException = new RetracePartitionException("Unknown map partition strategy for metadata");
        diagnosticsHandler.error(new ExceptionDiagnostic(retracePartitionException));
        throw retracePartitionException;
    }
}
