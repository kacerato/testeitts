package org.openjdk.tools.javac.jvm;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.util.Name;

public class ClassFile {
    public static final int CONSTANT_Class = 7;
    public static final int CONSTANT_Double = 6;
    public static final int CONSTANT_Fieldref = 9;
    public static final int CONSTANT_Float = 4;
    public static final int CONSTANT_Integer = 3;
    public static final int CONSTANT_InterfaceMethodref = 11;
    public static final int CONSTANT_InvokeDynamic = 18;
    public static final int CONSTANT_Long = 5;
    public static final int CONSTANT_MethodHandle = 15;
    public static final int CONSTANT_MethodType = 16;
    public static final int CONSTANT_Methodref = 10;
    public static final int CONSTANT_Module = 19;
    public static final int CONSTANT_NameandType = 12;
    public static final int CONSTANT_Package = 20;
    public static final int CONSTANT_String = 8;
    public static final int CONSTANT_Unicode = 2;
    public static final int CONSTANT_Utf8 = 1;
    public static final int JAVA_MAGIC = -889275714;
    public static final int MAX_CODE = 65535;
    public static final int MAX_DIMENSIONS = 255;
    public static final int MAX_LOCALS = 65535;
    public static final int MAX_PARAMETERS = 255;
    public static final int MAX_STACK = 65535;
    public static final int REF_getField = 1;
    public static final int REF_getStatic = 2;
    public static final int REF_invokeInterface = 9;
    public static final int REF_invokeSpecial = 7;
    public static final int REF_invokeStatic = 6;
    public static final int REF_invokeVirtual = 5;
    public static final int REF_newInvokeSpecial = 8;
    public static final int REF_putField = 3;
    public static final int REF_putStatic = 4;

    public static class NameAndType {
        Name name;
        Types types;
        Types.UniqueType uniqueType;

        public NameAndType(Name name, Type type, Types types) {
            this.name = name;
            this.uniqueType = new Types.UniqueType(type, types);
            this.types = types;
        }

        public boolean equals(Object obj) {
            if (obj instanceof NameAndType) {
                NameAndType nameAndType = (NameAndType) obj;
                if (this.name == nameAndType.name && this.uniqueType.equals(nameAndType.uniqueType)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.name.hashCode() * this.uniqueType.hashCode();
        }

        public void setType(Type type) {
            this.uniqueType = new Types.UniqueType(type, this.types);
        }
    }

    public enum Version {
        V45_3(45, 3),
        V49(49, 0),
        V50(50, 0),
        V51(51, 0),
        V52(52, 0),
        V53(53, 0);

        public final int major;
        public final int minor;
        private static final Version MIN = values()[0];
        private static final Version MAX = values()[values().length - 1];

        Version(int i10, int i11) {
            this.major = i10;
            this.minor = i11;
        }

        public static Version MAX() {
            return MAX;
        }

        public static Version MIN() {
            return MIN;
        }
    }

    public static byte[] externalize(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            byte b10 = bArr[i10 + i12];
            if (b10 == 46) {
                bArr2[i12] = Opcodes.OPC_laload;
            } else {
                bArr2[i12] = b10;
            }
        }
        return bArr2;
    }

    public static byte[] internalize(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            byte b10 = bArr[i10 + i12];
            if (b10 == 47) {
                bArr2[i12] = Opcodes.OPC_iaload;
            } else {
                bArr2[i12] = b10;
            }
        }
        return bArr2;
    }

    public static byte[] externalize(Name name) {
        return externalize(name.getByteArray(), name.getByteOffset(), name.getByteLength());
    }

    public static byte[] internalize(Name name) {
        return internalize(name.getByteArray(), name.getByteOffset(), name.getByteLength());
    }
}
