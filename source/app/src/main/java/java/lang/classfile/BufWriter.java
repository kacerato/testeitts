package java.lang.classfile;

import java.lang.classfile.constantpool.ConstantPool;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.lang.classfile.constantpool.PoolEntry;

public interface BufWriter {
    ConstantPoolBuilder constantPool();

    boolean canWriteDirect(ConstantPool constantPool);

    void reserveSpace(int i10);

    void writeU1(int i10);

    void writeU2(int i10);

    void writeInt(int i10);

    void writeFloat(float f10);

    void writeLong(long j10);

    void writeDouble(double d10);

    void writeBytes(byte[] bArr);

    void writeBytes(byte[] bArr, int i10, int i11);

    void patchInt(int i10, int i11, int i12);

    void writeIntBytes(int i10, long j10);

    void writeIndex(PoolEntry poolEntry);

    void writeIndexOrZero(PoolEntry poolEntry);

    int size();
}
