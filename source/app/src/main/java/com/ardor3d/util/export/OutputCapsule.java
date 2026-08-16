package com.ardor3d.util.export;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.BitSet;
import java.util.List;
import java.util.Map;

public interface OutputCapsule {
    void write(byte b10, String str, byte b11) throws IOException;

    void write(double d10, String str, double d11) throws IOException;

    void write(float f10, String str, float f11) throws IOException;

    void write(int i10, String str, int i11) throws IOException;

    void write(long j10, String str, long j11) throws IOException;

    void write(Savable savable, String str, Savable savable2) throws IOException;

    void write(Enum<?> r12, String str, Enum<?> r32) throws IOException;

    void write(String str, String str2, String str3) throws IOException;

    void write(ByteBuffer byteBuffer, String str, ByteBuffer byteBuffer2) throws IOException;

    void write(FloatBuffer floatBuffer, String str, FloatBuffer floatBuffer2) throws IOException;

    void write(IntBuffer intBuffer, String str, IntBuffer intBuffer2) throws IOException;

    void write(ShortBuffer shortBuffer, String str, ShortBuffer shortBuffer2) throws IOException;

    void write(BitSet bitSet, String str, BitSet bitSet2) throws IOException;

    void write(short s10, String str, short s11) throws IOException;

    void write(boolean z10, String str, boolean z11) throws IOException;

    void write(byte[] bArr, String str, byte[] bArr2) throws IOException;

    void write(double[] dArr, String str, double[] dArr2) throws IOException;

    void write(float[] fArr, String str, float[] fArr2) throws IOException;

    void write(int[] iArr, String str, int[] iArr2) throws IOException;

    void write(long[] jArr, String str, long[] jArr2) throws IOException;

    void write(Savable[] savableArr, String str, Savable[] savableArr2) throws IOException;

    void write(Enum<?>[] enumArr, String str) throws IOException;

    void write(String[] strArr, String str, String[] strArr2) throws IOException;

    void write(short[] sArr, String str, short[] sArr2) throws IOException;

    void write(boolean[] zArr, String str, boolean[] zArr2) throws IOException;

    void write(byte[][] bArr, String str, byte[][] bArr2) throws IOException;

    void write(double[][] dArr, String str, double[][] dArr2) throws IOException;

    void write(float[][] fArr, String str, float[][] fArr2) throws IOException;

    void write(int[][] iArr, String str, int[][] iArr2) throws IOException;

    void write(long[][] jArr, String str, long[][] jArr2) throws IOException;

    void write(Savable[][] savableArr, String str, Savable[][] savableArr2) throws IOException;

    void write(String[][] strArr, String str, String[][] strArr2) throws IOException;

    void write(short[][] sArr, String str, short[][] sArr2) throws IOException;

    void write(boolean[][] zArr, String str, boolean[][] zArr2) throws IOException;

    void writeByteBufferList(List<ByteBuffer> list, String str, List<ByteBuffer> list2) throws IOException;

    void writeFloatBufferList(List<FloatBuffer> list, String str, List<FloatBuffer> list2) throws IOException;

    void writeSavableList(List<? extends Savable> list, String str, List<? extends Savable> list2) throws IOException;

    void writeSavableListArray(List<? extends Savable>[] listArr, String str, List<? extends Savable>[] listArr2) throws IOException;

    void writeSavableListArray2D(List<? extends Savable>[][] listArr, String str, List<? extends Savable>[][] listArr2) throws IOException;

    void writeSavableMap(Map<? extends Savable, ? extends Savable> map, String str, Map<? extends Savable, ? extends Savable> map2) throws IOException;

    void writeStringSavableMap(Map<String, ? extends Savable> map, String str, Map<String, ? extends Savable> map2) throws IOException;
}
