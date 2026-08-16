package com.jme3.export;

import com.jme3.util.IntMap;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Map;

public interface InputCapsule {
    int getSavableVersion(Class<? extends Savable> cls);

    BitSet readBitSet(String str, BitSet bitSet) throws IOException;

    boolean readBoolean(String str, boolean z10) throws IOException;

    boolean[] readBooleanArray(String str, boolean[] zArr) throws IOException;

    boolean[][] readBooleanArray2D(String str, boolean[][] zArr) throws IOException;

    byte readByte(String str, byte b10) throws IOException;

    byte[] readByteArray(String str, byte[] bArr) throws IOException;

    byte[][] readByteArray2D(String str, byte[][] bArr) throws IOException;

    ByteBuffer readByteBuffer(String str, ByteBuffer byteBuffer) throws IOException;

    ArrayList<ByteBuffer> readByteBufferArrayList(String str, ArrayList<ByteBuffer> arrayList) throws IOException;

    double readDouble(String str, double d10) throws IOException;

    double[] readDoubleArray(String str, double[] dArr) throws IOException;

    double[][] readDoubleArray2D(String str, double[][] dArr) throws IOException;

    <T extends Enum<T>> T readEnum(String str, Class<T> cls, T t10) throws IOException;

    float readFloat(String str, float f10) throws IOException;

    float[] readFloatArray(String str, float[] fArr) throws IOException;

    float[][] readFloatArray2D(String str, float[][] fArr) throws IOException;

    FloatBuffer readFloatBuffer(String str, FloatBuffer floatBuffer) throws IOException;

    ArrayList<FloatBuffer> readFloatBufferArrayList(String str, ArrayList<FloatBuffer> arrayList) throws IOException;

    int readInt(String str, int i10) throws IOException;

    int[] readIntArray(String str, int[] iArr) throws IOException;

    int[][] readIntArray2D(String str, int[][] iArr) throws IOException;

    IntBuffer readIntBuffer(String str, IntBuffer intBuffer) throws IOException;

    IntMap<? extends Savable> readIntSavableMap(String str, IntMap<? extends Savable> intMap) throws IOException;

    long readLong(String str, long j10) throws IOException;

    long[] readLongArray(String str, long[] jArr) throws IOException;

    long[][] readLongArray2D(String str, long[][] jArr) throws IOException;

    Savable readSavable(String str, Savable savable) throws IOException;

    Savable[] readSavableArray(String str, Savable[] savableArr) throws IOException;

    Savable[][] readSavableArray2D(String str, Savable[][] savableArr) throws IOException;

    ArrayList readSavableArrayList(String str, ArrayList arrayList) throws IOException;

    ArrayList[] readSavableArrayListArray(String str, ArrayList[] arrayListArr) throws IOException;

    ArrayList[][] readSavableArrayListArray2D(String str, ArrayList[][] arrayListArr) throws IOException;

    Map<? extends Savable, ? extends Savable> readSavableMap(String str, Map<? extends Savable, ? extends Savable> map) throws IOException;

    short readShort(String str, short s10) throws IOException;

    short[] readShortArray(String str, short[] sArr) throws IOException;

    short[][] readShortArray2D(String str, short[][] sArr) throws IOException;

    ShortBuffer readShortBuffer(String str, ShortBuffer shortBuffer) throws IOException;

    String readString(String str, String str2) throws IOException;

    String[] readStringArray(String str, String[] strArr) throws IOException;

    String[][] readStringArray2D(String str, String[][] strArr) throws IOException;

    Map<String, ? extends Savable> readStringSavableMap(String str, Map<String, ? extends Savable> map) throws IOException;
}
