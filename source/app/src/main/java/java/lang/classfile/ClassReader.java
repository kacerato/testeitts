package java.lang.classfile;

import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.ConstantPool;
import java.lang.classfile.constantpool.PoolEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.util.Optional;
import java.util.function.Function;

public interface ClassReader extends ConstantPool {
    Function<Utf8Entry, AttributeMapper<?>> customAttributes();

    int flags();

    ClassEntry thisClassEntry();

    Optional<ClassEntry> superclassEntry();

    int classfileLength();

    PoolEntry readEntry(int i10);

    <T extends PoolEntry> T readEntry(int i10, Class<T> cls);

    PoolEntry readEntryOrNull(int i10);

    <T extends PoolEntry> T readEntryOrNull(int i10, Class<T> cls);

    int readU1(int i10);

    int readU2(int i10);

    int readS1(int i10);

    int readS2(int i10);

    int readInt(int i10);

    long readLong(int i10);

    float readFloat(int i10);

    double readDouble(int i10);

    byte[] readBytes(int i10, int i11);

    void copyBytesTo(BufWriter bufWriter, int i10, int i11);
}
