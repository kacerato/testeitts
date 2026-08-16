package com.ardor3d.util.export.binary;

import com.ardor3d.util.export.ByteUtils;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class BinaryOutputCapsule implements OutputCapsule {
    public static final int DEFAULT_OBJECT = -2;
    public static final int NULL_OBJECT = -1;
    protected ByteArrayOutputStream _baos = new ByteArrayOutputStream();
    protected byte[] _bytes;
    protected BinaryClassObject _cObj;
    protected BinaryExporter _exporter;
    public static byte[] NULL_BYTES = {-1};
    public static byte[] DEFAULT_BYTES = {-2};

    public BinaryOutputCapsule(BinaryExporter binaryExporter, BinaryClassObject binaryClassObject) {
        this._exporter = binaryExporter;
        this._cObj = binaryClassObject;
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
        byte[] bArr = ((BinaryOutputCapsule) obj)._bytes;
        byte[] bArr2 = this._bytes;
        if (bArr2.length != bArr.length) {
            return false;
        }
        return Arrays.equals(bArr2, bArr);
    }

    public void finish() {
        this._bytes = this._baos.toByteArray();
        this._baos = null;
    }

    public void generateAlias(String str, byte b10) {
        this._cObj._nameFields.put(str, new BinaryClassField(str, (byte) this._cObj._nameFields.size(), b10));
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
        if (this._cObj._nameFields.get(str) == null) {
            generateAlias(str, b10);
        }
        write(this._cObj._nameFields.get(str)._alias);
    }

    public void writeByteBufferArrayList(List<ByteBuffer> list) throws IOException {
        if (list == null) {
            write(-1);
            return;
        }
        write(list.size());
        Iterator<ByteBuffer> it = list.iterator();
        while (it.hasNext()) {
            write(it.next());
        }
    }

    @Override
    public void writeByteBufferList(List<ByteBuffer> list, String str, List<ByteBuffer> list2) throws IOException {
        if (list == list2) {
            return;
        }
        writeAlias(str, (byte) 111);
        writeByteBufferArrayList(list);
    }

    public void writeFloatBufferArrayList(List<FloatBuffer> list) throws IOException {
        if (list == null) {
            write(-1);
            return;
        }
        write(list.size());
        Iterator<FloatBuffer> it = list.iterator();
        while (it.hasNext()) {
            write(it.next());
        }
    }

    @Override
    public void writeFloatBufferList(List<FloatBuffer> list, String str, List<FloatBuffer> list2) throws IOException {
        if (list == list2) {
            return;
        }
        writeAlias(str, (byte) 110);
        writeFloatBufferArrayList(list);
    }

    public void writeSavableArrayList(List<? extends Savable> list) throws IOException {
        if (list == null) {
            write(-1);
            return;
        }
        write(list.size());
        Iterator<? extends Savable> it = list.iterator();
        while (it.hasNext()) {
            write(it.next());
        }
    }

    public void writeSavableArrayListArray(List<? extends Savable>[] listArr) throws IOException {
        if (listArr == null) {
            write(-1);
            return;
        }
        write(listArr.length);
        for (List<? extends Savable> list : listArr) {
            writeSavableArrayList(list);
        }
    }

    public void writeSavableArrayListArray2D(List<? extends Savable>[][] listArr) throws IOException {
        if (listArr == null) {
            write(-1);
            return;
        }
        write(listArr.length);
        for (List<? extends Savable>[] listArr2 : listArr) {
            writeSavableArrayListArray(listArr2);
        }
    }

    @Override
    public void writeSavableList(List<? extends Savable> list, String str, List<? extends Savable> list2) throws IOException {
        if (list == list2) {
            return;
        }
        writeAlias(str, (byte) 100);
        writeSavableArrayList(list);
    }

    @Override
    public void writeSavableListArray(List<? extends Savable>[] listArr, String str, List<? extends Savable>[] listArr2) throws IOException {
        if (listArr == listArr2) {
            return;
        }
        writeAlias(str, (byte) 101);
        writeSavableArrayListArray(listArr);
    }

    @Override
    public void writeSavableListArray2D(List<? extends Savable>[][] listArr, String str, List<? extends Savable>[][] listArr2) throws IOException {
        if (listArr == listArr2) {
            return;
        }
        writeAlias(str, (byte) 102);
        writeSavableArrayListArray2D(listArr);
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

    @Override
    public void write(byte[] bArr, String str, byte[] bArr2) throws IOException {
        if (bArr == bArr2) {
            return;
        }
        writeAlias(str, (byte) 1);
        write(bArr);
    }

    public void writeSavableMap(Map<? extends Savable, ? extends Savable> map) throws IOException {
        if (map == null) {
            write(-1);
            return;
        }
        write(map.size());
        for (Map.Entry<? extends Savable, ? extends Savable> entry : map.entrySet()) {
            write(new Savable[]{entry.getKey(), entry.getValue()});
        }
    }

    public void writeStringSavableMap(Map<String, ? extends Savable> map) throws IOException {
        if (map == null) {
            write(-1);
            return;
        }
        write(map.size());
        write((String[]) map.o().toArray(new String[map.o().size()]));
        write((Savable[]) map.values().toArray(new Savable[map.values().size()]));
    }

    @Override
    public void write(byte[][] bArr, String str, byte[][] bArr2) throws IOException {
        if (bArr == bArr2) {
            return;
        }
        writeAlias(str, (byte) 2);
        write(bArr);
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
        this._baos.write(b10);
    }

    public void write(byte[] bArr) throws IOException {
        if (bArr == null) {
            write(-1);
        } else {
            write(bArr.length);
            this._baos.write(bArr);
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
        this._baos.write(deflate(ByteUtils.convertToBytes(i10)));
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
        this._baos.write(ByteUtils.convertToBytes(f10));
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
        this._baos.write(ByteUtils.convertToBytes(d10));
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
        this._baos.write(deflate(ByteUtils.convertToBytes(j10)));
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
        this._baos.write(ByteUtils.convertToBytes(s10));
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
        this._baos.write(ByteUtils.convertToBytes(z10));
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
        byte[] bytes = str.getBytes("UTF8");
        write(bytes.length);
        this._baos.write(bytes);
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
            write(this._exporter.processBinarySavable(savable));
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
        FloatBuffer duplicate = floatBuffer.duplicate();
        int limit = duplicate.limit();
        write(limit);
        write(duplicate.isDirect());
        ByteBuffer order = ByteBuffer.allocate(limit * 4).order(ByteOrder.LITTLE_ENDIAN);
        duplicate.rewind();
        order.asFloatBuffer().put(duplicate);
        order.rewind();
        byte[] bArr = new byte[order.capacity()];
        order.get(bArr);
        this._baos.write(bArr);
    }

    public void write(IntBuffer intBuffer) throws IOException {
        if (intBuffer == null) {
            write(-1);
            return;
        }
        IntBuffer duplicate = intBuffer.duplicate();
        int limit = duplicate.limit();
        write(limit);
        write(duplicate.isDirect());
        ByteBuffer order = ByteBuffer.allocate(limit * 4).order(ByteOrder.LITTLE_ENDIAN);
        duplicate.rewind();
        order.asIntBuffer().put(duplicate);
        order.rewind();
        byte[] bArr = new byte[order.capacity()];
        order.get(bArr);
        this._baos.write(bArr);
    }

    public void write(ShortBuffer shortBuffer) throws IOException {
        if (shortBuffer == null) {
            write(-1);
            return;
        }
        ShortBuffer duplicate = shortBuffer.duplicate();
        int limit = duplicate.limit();
        write(limit);
        write(duplicate.isDirect());
        ByteBuffer order = ByteBuffer.allocate(limit * 2).order(ByteOrder.LITTLE_ENDIAN);
        duplicate.rewind();
        order.asShortBuffer().put(duplicate);
        order.rewind();
        byte[] bArr = new byte[order.capacity()];
        order.get(bArr);
        this._baos.write(bArr);
    }

    public void write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            write(-1);
            return;
        }
        ByteBuffer duplicate = byteBuffer.duplicate();
        int limit = duplicate.limit();
        write(limit);
        write(duplicate.isDirect());
        byte[] bArr = new byte[limit];
        duplicate.rewind();
        duplicate.get(bArr);
        this._baos.write(bArr);
    }

    @Override
    public void write(Enum<?> r12, String str, Enum<?> r32) throws IOException {
        if (r12 == r32) {
            return;
        }
        if (r12 == null) {
            write(-1);
        } else {
            write(r12.name(), str, (String) null);
        }
    }

    @Override
    public void write(Enum<?>[] enumArr, String str) throws IOException {
        if (enumArr == null) {
            write(-1);
            return;
        }
        String[] strArr = new String[enumArr.length];
        int length = enumArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            strArr[i11] = enumArr[i10].name();
            i10++;
            i11++;
        }
        write(strArr, str, (String[]) null);
    }
}
