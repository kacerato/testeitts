package com.jme3.export.binary;

import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.IntMap;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;

public final class BinaryOutputCapsule implements OutputCapsule {
    public static final int DEFAULT_OBJECT = -2;
    public static final int NULL_OBJECT = -1;
    protected ByteArrayOutputStream baos = new ByteArrayOutputStream();
    protected byte[] bytes;
    protected BinaryClassObject cObj;
    protected BinaryExporter exporter;
    public static byte[] NULL_BYTES = {-1};
    public static byte[] DEFAULT_BYTES = {-2};

    public BinaryOutputCapsule(BinaryExporter binaryExporter, BinaryClassObject binaryClassObject) {
        this.exporter = binaryExporter;
        this.cObj = binaryClassObject;
    }

    public static byte[] deflate(byte[] bArr) {
        int length = bArr.length;
        if (length == 4) {
            int convertIntFromBytes = ByteUtils.convertIntFromBytes(bArr);
            if (convertIntFromBytes == -1) {
                return NULL_BYTES;
            }
            if (convertIntFromBytes == -2) {
                return DEFAULT_BYTES;
            }
        }
        for (int i10 = 0; i10 < bArr.length && bArr[i10] == 0; i10++) {
            length--;
        }
        if (length == 0) {
            return new byte[1];
        }
        int i11 = length + 1;
        byte[] bArr2 = new byte[i11];
        bArr2[0] = (byte) length;
        for (int i12 = 1; i12 < i11; i12++) {
            bArr2[i12] = bArr[((bArr.length - length) - 1) + i12];
        }
        return bArr2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BinaryOutputCapsule)) {
            return false;
        }
        byte[] bArr = ((BinaryOutputCapsule) obj).bytes;
        byte[] bArr2 = this.bytes;
        if (bArr2.length != bArr.length) {
            return false;
        }
        return Arrays.equals(bArr2, bArr);
    }

    public void finish() {
        this.bytes = this.baos.toByteArray();
        this.baos = null;
    }

    public void generateAlias(String str, byte b10) {
        this.cObj.nameFields.put(str, new BinaryClassField(str, (byte) this.cObj.nameFields.size(), b10));
    }

    public int hashCode() {
        return 161 + Arrays.hashCode(this.bytes);
    }

    @Override
    public void write(byte b10, String str, byte b11) throws IOException {
        if (b10 == b11) {
            return;
        }
        writeAlias(str, (byte) 0);
        write(b10);
    }

    public void writeAlias(String str, byte b10) throws IOException {
        if (this.cObj.nameFields.get(str) == null) {
            generateAlias(str, b10);
        }
        write(this.cObj.nameFields.get(str).alias);
    }

    @Override
    public void writeByteBufferArrayList(ArrayList<ByteBuffer> arrayList, String str, ArrayList<ByteBuffer> arrayList2) throws IOException {
        if (arrayList == arrayList2) {
            return;
        }
        writeAlias(str, (byte) 111);
        writeByteBufferArrayList(arrayList);
    }

    @Override
    public void writeFloatBufferArrayList(ArrayList<FloatBuffer> arrayList, String str, ArrayList<FloatBuffer> arrayList2) throws IOException {
        if (arrayList == arrayList2) {
            return;
        }
        writeAlias(str, (byte) 110);
        writeFloatBufferArrayList(arrayList);
    }

    public void writeForBuffer(byte b10) throws IOException {
        this.baos.write(b10);
    }

    @Override
    public void writeIntSavableMap(IntMap<? extends Savable> intMap, String str, IntMap<? extends Savable> intMap2) throws IOException {
        if (intMap == intMap2) {
            return;
        }
        writeAlias(str, (byte) 107);
        writeIntSavableMap(intMap);
    }

    @Override
    public void writeSavableArrayList(ArrayList arrayList, String str, ArrayList arrayList2) throws IOException {
        if (arrayList == arrayList2) {
            return;
        }
        writeAlias(str, (byte) 100);
        writeSavableArrayList(arrayList);
    }

    @Override
    public void writeSavableArrayListArray(ArrayList[] arrayListArr, String str, ArrayList[] arrayListArr2) throws IOException {
        if (arrayListArr == arrayListArr2) {
            return;
        }
        writeAlias(str, (byte) 101);
        writeSavableArrayListArray(arrayListArr);
    }

    @Override
    public void writeSavableArrayListArray2D(ArrayList[][] arrayListArr, String str, ArrayList[][] arrayListArr2) throws IOException {
        if (arrayListArr == arrayListArr2) {
            return;
        }
        writeAlias(str, (byte) 102);
        writeSavableArrayListArray2D(arrayListArr);
    }

    @Override
    public void writeSavableMap(Map<? extends Savable, ? extends Savable> map, String str, Map<? extends Savable, ? extends Savable> map2) throws IOException {
        if (map == map2) {
            return;
        }
        writeAlias(str, (byte) 105);
        writeSavableMap(map);
    }

    @Override
    public void writeStringSavableMap(Map<String, ? extends Savable> map, String str, Map<String, ? extends Savable> map2) throws IOException {
        if (map == map2) {
            return;
        }
        writeAlias(str, (byte) 106);
        writeStringSavableMap(map);
    }

    public void writeForBuffer(int i10) throws IOException {
        this.baos.write(new byte[]{(byte) i10, (byte) (i10 >> 8), (byte) (i10 >> 16), (byte) (i10 >> 24)});
    }

    @Override
    public void write(byte[] bArr, String str, byte[] bArr2) throws IOException {
        if (bArr == bArr2) {
            return;
        }
        writeAlias(str, (byte) 1);
        write(bArr);
    }

    public void writeByteBufferArrayList(ArrayList<ByteBuffer> arrayList) throws IOException {
        if (arrayList == null) {
            write(-1);
            return;
        }
        write(arrayList.size());
        Iterator<ByteBuffer> it = arrayList.iterator();
        while (it.hasNext()) {
            write(it.next());
        }
    }

    public void writeFloatBufferArrayList(ArrayList<FloatBuffer> arrayList) throws IOException {
        if (arrayList == null) {
            write(-1);
            return;
        }
        write(arrayList.size());
        Iterator<FloatBuffer> it = arrayList.iterator();
        while (it.hasNext()) {
            write(it.next());
        }
    }

    public void writeIntSavableMap(IntMap<? extends Savable> intMap) throws IOException {
        if (intMap == null) {
            write(-1);
            return;
        }
        write(intMap.size());
        int size = intMap.size();
        int[] iArr = new int[size];
        Savable[] savableArr = new Savable[size];
        Iterator<IntMap.Entry<? extends Savable>> it = intMap.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            IntMap.Entry<? extends Savable> next = it.next();
            iArr[i10] = next.getKey();
            savableArr[i10] = next.getValue();
            i10++;
        }
        write(iArr);
        write(savableArr);
    }

    public void writeSavableArrayList(ArrayList arrayList) throws IOException {
        if (arrayList == null) {
            write(-1);
            return;
        }
        write(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            write((Savable) it.next());
        }
    }

    public void writeSavableArrayListArray(ArrayList[] arrayListArr) throws IOException {
        if (arrayListArr == null) {
            write(-1);
            return;
        }
        write(arrayListArr.length);
        for (ArrayList arrayList : arrayListArr) {
            writeSavableArrayList(arrayList);
        }
    }

    public void writeSavableArrayListArray2D(ArrayList[][] arrayListArr) throws IOException {
        if (arrayListArr == null) {
            write(-1);
            return;
        }
        write(arrayListArr.length);
        for (ArrayList[] arrayListArr2 : arrayListArr) {
            writeSavableArrayListArray(arrayListArr2);
        }
    }

    public void writeSavableMap(Map<? extends Savable, ? extends Savable> map) throws IOException {
        if (map == null) {
            write(-1);
            return;
        }
        write(map.size());
        for (Savable savable : map.o()) {
            write(new Savable[]{savable, map.get(savable)});
        }
    }

    public void writeStringSavableMap(Map<String, ? extends Savable> map) throws IOException {
        if (map == null) {
            write(-1);
            return;
        }
        write(map.size());
        write((String[]) map.o().toArray(new String[0]));
        write((Savable[]) map.values().toArray(new Savable[0]));
    }

    public void writeForBuffer(float f10) throws IOException {
        writeForBuffer(Float.floatToIntBits(f10));
    }

    @Override
    public void write(byte[][] bArr, String str, byte[][] bArr2) throws IOException {
        if (bArr == bArr2) {
            return;
        }
        writeAlias(str, (byte) 2);
        write(bArr);
    }

    public void writeForBuffer(short s10) throws IOException {
        this.baos.write(new byte[]{(byte) s10, (byte) (s10 >> 8)});
    }

    @Override
    public void write(int i10, String str, int i11) throws IOException {
        if (i10 == i11) {
            return;
        }
        writeAlias(str, (byte) 10);
        write(i10);
    }

    @Override
    public void write(int[] iArr, String str, int[] iArr2) throws IOException {
        if (iArr == iArr2) {
            return;
        }
        writeAlias(str, (byte) 11);
        write(iArr);
    }

    @Override
    public void write(int[][] iArr, String str, int[][] iArr2) throws IOException {
        if (iArr == iArr2) {
            return;
        }
        writeAlias(str, (byte) 12);
        write(iArr);
    }

    @Override
    public void write(float f10, String str, float f11) throws IOException {
        if (f10 == f11) {
            return;
        }
        writeAlias(str, (byte) 20);
        write(f10);
    }

    @Override
    public void write(float[] fArr, String str, float[] fArr2) throws IOException {
        if (fArr == fArr2) {
            return;
        }
        writeAlias(str, (byte) 21);
        write(fArr);
    }

    @Override
    public void write(float[][] fArr, String str, float[][] fArr2) throws IOException {
        if (fArr == fArr2) {
            return;
        }
        writeAlias(str, (byte) 22);
        write(fArr);
    }

    @Override
    public void write(double d10, String str, double d11) throws IOException {
        if (d10 == d11) {
            return;
        }
        writeAlias(str, (byte) 30);
        write(d10);
    }

    @Override
    public void write(double[] dArr, String str, double[] dArr2) throws IOException {
        if (dArr == dArr2) {
            return;
        }
        writeAlias(str, (byte) 31);
        write(dArr);
    }

    @Override
    public void write(double[][] dArr, String str, double[][] dArr2) throws IOException {
        if (dArr == dArr2) {
            return;
        }
        writeAlias(str, (byte) 32);
        write(dArr);
    }

    @Override
    public void write(long j10, String str, long j11) throws IOException {
        if (j10 == j11) {
            return;
        }
        writeAlias(str, (byte) 40);
        write(j10);
    }

    @Override
    public void write(long[] jArr, String str, long[] jArr2) throws IOException {
        if (jArr == jArr2) {
            return;
        }
        writeAlias(str, (byte) 41);
        write(jArr);
    }

    @Override
    public void write(long[][] jArr, String str, long[][] jArr2) throws IOException {
        if (jArr == jArr2) {
            return;
        }
        writeAlias(str, (byte) 42);
        write(jArr);
    }

    @Override
    public void write(short s10, String str, short s11) throws IOException {
        if (s10 == s11) {
            return;
        }
        writeAlias(str, (byte) 50);
        write(s10);
    }

    @Override
    public void write(short[] sArr, String str, short[] sArr2) throws IOException {
        if (sArr == sArr2) {
            return;
        }
        writeAlias(str, (byte) 51);
        write(sArr);
    }

    @Override
    public void write(short[][] sArr, String str, short[][] sArr2) throws IOException {
        if (sArr == sArr2) {
            return;
        }
        writeAlias(str, (byte) 52);
        write(sArr);
    }

    @Override
    public void write(boolean z10, String str, boolean z11) throws IOException {
        if (z10 == z11) {
            return;
        }
        writeAlias(str, (byte) 60);
        write(z10);
    }

    @Override
    public void write(boolean[] zArr, String str, boolean[] zArr2) throws IOException {
        if (zArr == zArr2) {
            return;
        }
        writeAlias(str, (byte) 61);
        write(zArr);
    }

    @Override
    public void write(boolean[][] zArr, String str, boolean[][] zArr2) throws IOException {
        if (zArr == zArr2) {
            return;
        }
        writeAlias(str, (byte) 62);
        write(zArr);
    }

    @Override
    public void write(String str, String str2, String str3) throws IOException {
        if (str == null) {
            if (str3 == null) {
                return;
            }
        } else if (str.equals(str3)) {
            return;
        }
        writeAlias(str2, (byte) 70);
        write(str);
    }

    @Override
    public void write(String[] strArr, String str, String[] strArr2) throws IOException {
        if (strArr == strArr2) {
            return;
        }
        writeAlias(str, (byte) 71);
        write(strArr);
    }

    @Override
    public void write(String[][] strArr, String str, String[][] strArr2) throws IOException {
        if (strArr == strArr2) {
            return;
        }
        writeAlias(str, (byte) 72);
        write(strArr);
    }

    @Override
    public void write(BitSet bitSet, String str, BitSet bitSet2) throws IOException {
        if (bitSet == bitSet2) {
            return;
        }
        writeAlias(str, (byte) 80);
        write(bitSet);
    }

    @Override
    public void write(Savable savable, String str, Savable savable2) throws IOException {
        if (savable == savable2) {
            return;
        }
        writeAlias(str, (byte) 90);
        write(savable);
    }

    @Override
    public void write(Savable[] savableArr, String str, Savable[] savableArr2) throws IOException {
        if (savableArr == savableArr2) {
            return;
        }
        writeAlias(str, (byte) 91);
        write(savableArr);
    }

    @Override
    public void write(Savable[][] savableArr, String str, Savable[][] savableArr2) throws IOException {
        if (savableArr == savableArr2) {
            return;
        }
        writeAlias(str, (byte) 92);
        write(savableArr);
    }

    @Override
    public void write(FloatBuffer floatBuffer, String str, FloatBuffer floatBuffer2) throws IOException {
        if (floatBuffer == floatBuffer2) {
            return;
        }
        writeAlias(str, (byte) 120);
        write(floatBuffer);
    }

    @Override
    public void write(IntBuffer intBuffer, String str, IntBuffer intBuffer2) throws IOException {
        if (intBuffer == intBuffer2) {
            return;
        }
        writeAlias(str, (byte) 121);
        write(intBuffer);
    }

    @Override
    public void write(ByteBuffer byteBuffer, String str, ByteBuffer byteBuffer2) throws IOException {
        if (byteBuffer == byteBuffer2) {
            return;
        }
        writeAlias(str, (byte) 122);
        write(byteBuffer);
    }

    @Override
    public void write(ShortBuffer shortBuffer, String str, ShortBuffer shortBuffer2) throws IOException {
        if (shortBuffer == shortBuffer2) {
            return;
        }
        writeAlias(str, (byte) 123);
        write(shortBuffer);
    }

    public void write(byte b10) throws IOException {
        this.baos.write(b10);
    }

    public void write(byte[] bArr) throws IOException {
        if (bArr == null) {
            write(-1);
        } else {
            write(bArr.length);
            this.baos.write(bArr);
        }
    }

    public void write(byte[][] bArr) throws IOException {
        if (bArr == null) {
            write(-1);
            return;
        }
        write(bArr.length);
        for (byte[] bArr2 : bArr) {
            write(bArr2);
        }
    }

    public void write(int i10) throws IOException {
        this.baos.write(deflate(ByteUtils.convertToBytes(i10)));
    }

    public void write(int[] iArr) throws IOException {
        if (iArr == null) {
            write(-1);
            return;
        }
        write(iArr.length);
        for (int i10 : iArr) {
            write(i10);
        }
    }

    public void write(int[][] iArr) throws IOException {
        if (iArr == null) {
            write(-1);
            return;
        }
        write(iArr.length);
        for (int[] iArr2 : iArr) {
            write(iArr2);
        }
    }

    public void write(float f10) throws IOException {
        this.baos.write(ByteUtils.convertToBytes(f10));
    }

    public void write(float[] fArr) throws IOException {
        if (fArr == null) {
            write(-1);
            return;
        }
        write(fArr.length);
        for (float f10 : fArr) {
            write(f10);
        }
    }

    public void write(float[][] fArr) throws IOException {
        if (fArr == null) {
            write(-1);
            return;
        }
        write(fArr.length);
        for (float[] fArr2 : fArr) {
            write(fArr2);
        }
    }

    public void write(double d10) throws IOException {
        this.baos.write(ByteUtils.convertToBytes(d10));
    }

    public void write(double[] dArr) throws IOException {
        if (dArr == null) {
            write(-1);
            return;
        }
        write(dArr.length);
        for (double d10 : dArr) {
            write(d10);
        }
    }

    public void write(double[][] dArr) throws IOException {
        if (dArr == null) {
            write(-1);
            return;
        }
        write(dArr.length);
        for (double[] dArr2 : dArr) {
            write(dArr2);
        }
    }

    public void write(long j10) throws IOException {
        this.baos.write(deflate(ByteUtils.convertToBytes(j10)));
    }

    public void write(long[] jArr) throws IOException {
        if (jArr == null) {
            write(-1);
            return;
        }
        write(jArr.length);
        for (long j10 : jArr) {
            write(j10);
        }
    }

    public void write(long[][] jArr) throws IOException {
        if (jArr == null) {
            write(-1);
            return;
        }
        write(jArr.length);
        for (long[] jArr2 : jArr) {
            write(jArr2);
        }
    }

    public void write(short s10) throws IOException {
        this.baos.write(ByteUtils.convertToBytes(s10));
    }

    public void write(short[] sArr) throws IOException {
        if (sArr == null) {
            write(-1);
            return;
        }
        write(sArr.length);
        for (short s10 : sArr) {
            write(s10);
        }
    }

    public void write(short[][] sArr) throws IOException {
        if (sArr == null) {
            write(-1);
            return;
        }
        write(sArr.length);
        for (short[] sArr2 : sArr) {
            write(sArr2);
        }
    }

    public void write(boolean z10) throws IOException {
        this.baos.write(ByteUtils.convertToBytes(z10));
    }

    public void write(boolean[] zArr) throws IOException {
        if (zArr == null) {
            write(-1);
            return;
        }
        write(zArr.length);
        for (boolean z10 : zArr) {
            write(z10);
        }
    }

    public void write(boolean[][] zArr) throws IOException {
        if (zArr == null) {
            write(-1);
            return;
        }
        write(zArr.length);
        for (boolean[] zArr2 : zArr) {
            write(zArr2);
        }
    }

    public void write(String str) throws IOException {
        if (str == null) {
            write(-1);
            return;
        }
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        write(bytes.length);
        this.baos.write(bytes);
    }

    public void write(String[] strArr) throws IOException {
        if (strArr == null) {
            write(-1);
            return;
        }
        write(strArr.length);
        for (String str : strArr) {
            write(str);
        }
    }

    public void write(String[][] strArr) throws IOException {
        if (strArr == null) {
            write(-1);
            return;
        }
        write(strArr.length);
        for (String[] strArr2 : strArr) {
            write(strArr2);
        }
    }

    public void write(BitSet bitSet) throws IOException {
        if (bitSet == null) {
            write(-1);
            return;
        }
        write(bitSet.size());
        int size = bitSet.size();
        for (int i10 = 0; i10 < size; i10++) {
            write(bitSet.get(i10));
        }
    }

    public void write(Savable savable) throws IOException {
        if (savable == null) {
            write(-1);
        } else {
            write(this.exporter.processBinarySavable(savable));
        }
    }

    public void write(Savable[] savableArr) throws IOException {
        if (savableArr == null) {
            write(-1);
            return;
        }
        write(savableArr.length);
        for (Savable savable : savableArr) {
            write(savable);
        }
    }

    public void write(Savable[][] savableArr) throws IOException {
        if (savableArr == null) {
            write(-1);
            return;
        }
        write(savableArr.length);
        for (Savable[] savableArr2 : savableArr) {
            write(savableArr2);
        }
    }

    public void write(FloatBuffer floatBuffer) throws IOException {
        if (floatBuffer == null) {
            write(-1);
            return;
        }
        floatBuffer.rewind();
        int limit = floatBuffer.limit();
        write(limit);
        for (int i10 = 0; i10 < limit; i10++) {
            writeForBuffer(floatBuffer.get());
        }
        floatBuffer.rewind();
    }

    public void write(IntBuffer intBuffer) throws IOException {
        if (intBuffer == null) {
            write(-1);
            return;
        }
        intBuffer.rewind();
        int limit = intBuffer.limit();
        write(limit);
        for (int i10 = 0; i10 < limit; i10++) {
            writeForBuffer(intBuffer.get());
        }
        intBuffer.rewind();
    }

    public void write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            write(-1);
            return;
        }
        byteBuffer.rewind();
        int limit = byteBuffer.limit();
        write(limit);
        for (int i10 = 0; i10 < limit; i10++) {
            writeForBuffer(byteBuffer.get());
        }
        byteBuffer.rewind();
    }

    public void write(ShortBuffer shortBuffer) throws IOException {
        if (shortBuffer == null) {
            write(-1);
            return;
        }
        shortBuffer.rewind();
        int limit = shortBuffer.limit();
        write(limit);
        for (int i10 = 0; i10 < limit; i10++) {
            writeForBuffer(shortBuffer.get());
        }
        shortBuffer.rewind();
    }

    @Override
    public void write(Enum r12, String str, Enum r32) throws IOException {
        if (r12 == r32 || r12 == null) {
            return;
        }
        write(r12.name(), str, (String) null);
    }
}
