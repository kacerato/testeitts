package com.ardor3d.util.export;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.BitSet;
import java.util.List;
import java.util.Map;

public interface InputCapsule {
    BitSet readBitSet(String str, BitSet bitSet) throws IOException;

    boolean readBoolean(String str, boolean z10) throws IOException;

    boolean[] readBooleanArray(String str, boolean[] zArr) throws IOException;

    boolean[][] readBooleanArray2D(String str, boolean[][] zArr) throws IOException;

    byte readByte(String str, byte b10) throws IOException;

    byte[] readByteArray(String str, byte[] bArr) throws IOException;

    byte[][] readByteArray2D(String str, byte[][] bArr) throws IOException;

    ByteBuffer readByteBuffer(String str, ByteBuffer byteBuffer) throws IOException;

    List<ByteBuffer> readByteBufferList(String str, List<ByteBuffer> list) throws IOException;

    double readDouble(String str, double d10) throws IOException;

    double[] readDoubleArray(String str, double[] dArr) throws IOException;

    double[][] readDoubleArray2D(String str, double[][] dArr) throws IOException;

    <T extends Enum<T>> T readEnum(String str, Class<T> cls, T t10) throws IOException;

    <T extends Enum<T>> T[] readEnumArray(String str, Class<T> cls, T[] tArr) throws IOException;

    float readFloat(String str, float f10) throws IOException;

    float[] readFloatArray(String str, float[] fArr) throws IOException;

    float[][] readFloatArray2D(String str, float[][] fArr) throws IOException;

    FloatBuffer readFloatBuffer(String str, FloatBuffer floatBuffer) throws IOException;

    List<FloatBuffer> readFloatBufferList(String str, List<FloatBuffer> list) throws IOException;

    int readInt(String str, int i10) throws IOException;

    int[] readIntArray(String str, int[] iArr) throws IOException;

    int[][] readIntArray2D(String str, int[][] iArr) throws IOException;

    IntBuffer readIntBuffer(String str, IntBuffer intBuffer) throws IOException;

    long readLong(String str, long j10) throws IOException;

    long[] readLongArray(String str, long[] jArr) throws IOException;

    long[][] readLongArray2D(String str, long[][] jArr) throws IOException;

    Savable readSavable(String str, Savable savable) throws IOException;

    Savable[] readSavableArray(String str, Savable[] savableArr) throws IOException;

    Savable[][] readSavableArray2D(String str, Savable[][] savableArr) throws IOException;

    <E extends Savable> List<E> readSavableList(String str, List<E> list) throws IOException;

    <E extends Savable> List<E>[] readSavableListArray(String str, List<E>[] listArr) throws IOException;

    <E extends Savable> List<E>[][] readSavableListArray2D(String str, List<E>[][] listArr) throws IOException;

    <K extends Savable, V extends Savable> Map<K, V> readSavableMap(String str, Map<K, V> map) throws IOException;

    short readShort(String str, short s10) throws IOException;

    short[] readShortArray(String str, short[] sArr) throws IOException;

    short[][] readShortArray2D(String str, short[][] sArr) throws IOException;

    ShortBuffer readShortBuffer(String str, ShortBuffer shortBuffer) throws IOException;

    String readString(String str, String str2) throws IOException;

    String[] readStringArray(String str, String[] strArr) throws IOException;

    String[][] readStringArray2D(String str, String[][] strArr) throws IOException;

    <V extends Savable> Map<String, V> readStringSavableMap(String str, Map<String, V> map) throws IOException;
}
