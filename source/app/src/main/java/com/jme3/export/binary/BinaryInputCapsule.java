package com.jme3.export.binary;

import com.jme3.export.InputCapsule;
import com.jme3.export.Savable;
import com.jme3.export.SavableClassUtil;
import com.jme3.util.BufferUtils;
import com.jme3.util.IntMap;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

public final class BinaryInputCapsule implements InputCapsule {
    protected BinaryClassObject cObj;
    protected HashMap<Byte, Object> fieldData;
    protected BinaryImporter importer;
    protected int index = 0;
    protected Savable savable;

    public static class ID {

        public int f81576id;

        public ID(int i10) {
            this.f81576id = i10;
        }
    }

    public static class IntIDMap {
        public int[] keys;
        public ID[] values;

        private IntIDMap() {
        }
    }

    public static class StringIDMap {
        public String[] keys;
        public ID[] values;

        private StringIDMap() {
        }
    }

    public BinaryInputCapsule(BinaryImporter binaryImporter, Savable savable, BinaryClassObject binaryClassObject) {
        this.importer = binaryImporter;
        this.cObj = binaryClassObject;
        this.savable = savable;
    }

    private int checkedByteCount(int i10, int i11, byte[] bArr) throws IOException {
        checkedLength(i10);
        long j10 = i10 * i11;
        if (j10 <= 2147483647L) {
            int i12 = (int) j10;
            requireRemaining(bArr, i12);
            return i12;
        }
        throw new IOException("J3O byte size too large: " + j10);
    }

    private int checkedLength(int i10) throws IOException {
        if (i10 == -1 || i10 >= 0) {
            return i10;
        }
        throw new IOException("Invalid negative J3O length/count: " + i10);
    }

    public static byte[] inflateFrom(byte[] bArr, int i10) throws IOException {
        if (i10 < 0 || i10 >= bArr.length) {
            throw new IOException("Truncated J3O compressed number at payload offset " + i10);
        }
        byte b10 = bArr[i10];
        if (b10 == -1) {
            return ByteUtils.convertToBytes(-1);
        }
        if (b10 == -2) {
            return ByteUtils.convertToBytes(-2);
        }
        int i11 = 0;
        if (b10 == 0) {
            return new byte[0];
        }
        int i12 = b10 & 255;
        int i13 = i10 + 1 + i12;
        if (i13 < i10 || i13 > bArr.length) {
            throw new IOException("Truncated J3O compressed number at payload offset " + i10);
        }
        byte[] bArr2 = new byte[i12];
        while (i11 < i12) {
            int i14 = i11 + 1;
            bArr2[i11] = bArr[i14 + i10];
            i11 = i14;
        }
        return bArr2;
    }

    private IntMap<Savable> intSavableMapFromKV(int[] iArr, Savable[] savableArr) {
        if (iArr == null || savableArr == null) {
            return null;
        }
        IntMap<Savable> intMap = new IntMap<>(iArr.length);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            intMap.put(iArr[i10], savableArr[i10]);
        }
        return intMap;
    }

    private void requireRemaining(byte[] bArr, int i10) throws IOException {
        if (i10 >= 0) {
            int i11 = this.index;
            if (i11 + i10 >= i11 && i11 + i10 <= bArr.length) {
                return;
            }
        }
        throw new IOException("Truncated J3O payload at offset " + this.index);
    }

    private Savable[] resolveIDs(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        Savable[] savableArr = new Savable[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            ID id2 = (ID) objArr[i10];
            savableArr[i10] = id2 != null ? this.importer.readObject(id2.f81576id) : null;
        }
        return savableArr;
    }

    private ArrayList<Savable> savableArrayListFromArray(Savable[] savableArr) {
        if (savableArr == null) {
            return null;
        }
        ArrayList<Savable> arrayList = new ArrayList<>(savableArr.length);
        for (Savable savable : savableArr) {
            arrayList.add(savable);
        }
        return arrayList;
    }

    private Map<Savable, Savable> savableMapFrom2DArray(Savable[][] savableArr) {
        if (savableArr == null) {
            return null;
        }
        HashMap hashMap = new HashMap(savableArr.length);
        for (Savable[] savableArr2 : savableArr) {
            hashMap.put(savableArr2[0], savableArr2[1]);
        }
        return hashMap;
    }

    private Map<String, Savable> stringSavableMapFromKV(String[] strArr, Savable[] savableArr) {
        if (strArr == null || savableArr == null) {
            return null;
        }
        HashMap hashMap = new HashMap(strArr.length);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            hashMap.put(strArr[i10], savableArr[i10]);
        }
        return hashMap;
    }

    @Override
    public int getSavableVersion(Class<? extends Savable> cls) {
        return SavableClassUtil.getSavedSavableVersion(this.savable, cls, this.cObj.classHierarchyVersions, this.importer.getFormatVersion());
    }

    @Override
    public BitSet readBitSet(String str, BitSet bitSet) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? bitSet : (BitSet) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public boolean readBoolean(String str, boolean z10) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? z10 : ((Boolean) this.fieldData.get(Byte.valueOf(binaryClassField.alias))).booleanValue();
    }

    @Override
    public boolean[] readBooleanArray(String str, boolean[] zArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? zArr : (boolean[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public boolean[][] readBooleanArray2D(String str, boolean[][] zArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? zArr : (boolean[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public byte readByte(String str, byte b10) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? b10 : ((Byte) this.fieldData.get(Byte.valueOf(binaryClassField.alias))).byteValue();
    }

    @Override
    public byte[] readByteArray(String str, byte[] bArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? bArr : (byte[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public byte[][] readByteArray2D(String str, byte[][] bArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? bArr : (byte[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public ByteBuffer readByteBuffer(String str, ByteBuffer byteBuffer) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? byteBuffer : (ByteBuffer) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public ArrayList<ByteBuffer> readByteBufferArrayList(String str, ArrayList<ByteBuffer> arrayList) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? arrayList : (ArrayList) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    public byte readByteForBuffer(byte[] bArr) throws IOException {
        requireRemaining(bArr, 1);
        int i10 = this.index;
        byte b10 = bArr[i10];
        this.index = i10 + 1;
        return b10;
    }

    @Override
    public double readDouble(String str, double d10) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? d10 : ((Double) this.fieldData.get(Byte.valueOf(binaryClassField.alias))).doubleValue();
    }

    @Override
    public double[] readDoubleArray(String str, double[] dArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? dArr : (double[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public double[][] readDoubleArray2D(String str, double[][] dArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? dArr : (double[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public <T extends Enum<T>> T readEnum(String str, Class<T> cls, T t10) throws IOException {
        String readString = readString(str, t10 != null ? t10.name() : null);
        if (readString != null) {
            return (T) Enum.valueOf(cls, readString);
        }
        return null;
    }

    @Override
    public float readFloat(String str, float f10) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? f10 : ((Float) this.fieldData.get(Byte.valueOf(binaryClassField.alias))).floatValue();
    }

    @Override
    public float[] readFloatArray(String str, float[] fArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? fArr : (float[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public float[][] readFloatArray2D(String str, float[][] fArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? fArr : (float[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public FloatBuffer readFloatBuffer(String str, FloatBuffer floatBuffer) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? floatBuffer : (FloatBuffer) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public ArrayList<FloatBuffer> readFloatBufferArrayList(String str, ArrayList<FloatBuffer> arrayList) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? arrayList : (ArrayList) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    public float readFloatForBuffer(byte[] bArr) throws IOException {
        return Float.intBitsToFloat(readIntForBuffer(bArr));
    }

    @Override
    public int readInt(String str, int i10) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? i10 : ((Integer) this.fieldData.get(Byte.valueOf(binaryClassField.alias))).intValue();
    }

    @Override
    public int[] readIntArray(String str, int[] iArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? iArr : (int[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public int[][] readIntArray2D(String str, int[][] iArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? iArr : (int[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public IntBuffer readIntBuffer(String str, IntBuffer intBuffer) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? intBuffer : (IntBuffer) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    public int readIntForBuffer(byte[] bArr) throws IOException {
        requireRemaining(bArr, 4);
        int i10 = this.index;
        int i11 = ((bArr[i10 + 3] & 255) << 24) + ((bArr[i10 + 2] & 255) << 16) + ((bArr[i10 + 1] & 255) << 8) + (bArr[i10] & 255);
        this.index = i10 + 4;
        return i11;
    }

    @Override
    public IntMap<? extends Savable> readIntSavableMap(String str, IntMap<? extends Savable> intMap) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return intMap;
        }
        Object obj = this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (obj instanceof IntIDMap) {
            IntIDMap intIDMap = (IntIDMap) obj;
            obj = intSavableMapFromKV(intIDMap.keys, resolveIDs(intIDMap.values));
            this.fieldData.put(Byte.valueOf(binaryClassField.alias), obj);
        }
        return (IntMap) obj;
    }

    @Override
    public long readLong(String str, long j10) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? j10 : ((Long) this.fieldData.get(Byte.valueOf(binaryClassField.alias))).longValue();
    }

    @Override
    public long[] readLongArray(String str, long[] jArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? jArr : (long[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public long[][] readLongArray2D(String str, long[][] jArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? jArr : (long[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public Savable readSavable(String str, Savable savable) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return savable;
        }
        Object obj = this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof ID)) {
            return savable;
        }
        Savable readObject = this.importer.readObject(((ID) obj).f81576id);
        this.fieldData.put(Byte.valueOf(binaryClassField.alias), readObject);
        return readObject;
    }

    @Override
    public Savable[] readSavableArray(String str, Savable[] savableArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return savableArr;
        }
        Object[] objArr = (Object[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (!(objArr instanceof ID[])) {
            return savableArr;
        }
        Savable[] resolveIDs = resolveIDs(objArr);
        this.fieldData.put(Byte.valueOf(binaryClassField.alias), resolveIDs);
        return resolveIDs;
    }

    @Override
    public Savable[][] readSavableArray2D(String str, Savable[][] savableArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return savableArr;
        }
        Object[][] objArr = (Object[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (objArr instanceof ID[][]) {
            Savable[][] savableArr2 = new Savable[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object[] objArr2 = objArr[i10];
                if (objArr2 != null) {
                    savableArr2[i10] = resolveIDs(objArr2);
                } else {
                    savableArr2[i10] = null;
                }
            }
            this.fieldData.put(Byte.valueOf(binaryClassField.alias), savableArr2);
            objArr = savableArr2;
        }
        return (Savable[][]) objArr;
    }

    public Savable[][][] readSavableArray3D(String str, Savable[][][] savableArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField != null && this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            Object[][][] objArr = (Object[][][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
            if (objArr instanceof ID[][][]) {
                savableArr = new Savable[objArr.length][];
                for (int i10 = 0; i10 < objArr.length; i10++) {
                    Object[][] objArr2 = objArr[i10];
                    if (objArr2 != null) {
                        savableArr[i10] = new Savable[objArr2.length];
                        int i11 = 0;
                        while (true) {
                            Object[][] objArr3 = objArr[i10];
                            if (i11 < objArr3.length) {
                                savableArr[i10][i11] = resolveIDs(objArr3[i11]);
                                i11++;
                            }
                        }
                    } else {
                        savableArr[i10] = null;
                    }
                }
                this.fieldData.put(Byte.valueOf(binaryClassField.alias), savableArr);
            }
        }
        return savableArr;
    }

    @Override
    public ArrayList readSavableArrayList(String str, ArrayList arrayList) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return arrayList;
        }
        Object obj = this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (obj instanceof ID[]) {
            obj = savableArrayListFromArray(readSavableArray(str, null));
            this.fieldData.put(Byte.valueOf(binaryClassField.alias), obj);
        }
        return (ArrayList) obj;
    }

    @Override
    public ArrayList[] readSavableArrayListArray(String str, ArrayList[] arrayListArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return arrayListArr;
        }
        Object obj = this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (obj instanceof ID[][]) {
            Savable[][] readSavableArray2D = readSavableArray2D(str, null);
            if (readSavableArray2D != null) {
                arrayListArr = new ArrayList[readSavableArray2D.length];
                for (int i10 = 0; i10 < readSavableArray2D.length; i10++) {
                    arrayListArr[i10] = savableArrayListFromArray(readSavableArray2D[i10]);
                }
            }
            this.fieldData.put(Byte.valueOf(binaryClassField.alias), arrayListArr);
            obj = arrayListArr;
        }
        return (ArrayList[]) obj;
    }

    @Override
    public ArrayList[][] readSavableArrayListArray2D(String str, ArrayList[][] arrayListArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return arrayListArr;
        }
        Object obj = this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (obj instanceof ID[][][]) {
            Savable[][][] readSavableArray3D = readSavableArray3D(str, null);
            if (readSavableArray3D != null && readSavableArray3D.length > 0) {
                arrayListArr = new ArrayList[readSavableArray3D.length];
                for (int i10 = 0; i10 < readSavableArray3D.length; i10++) {
                    arrayListArr[i10] = new ArrayList[readSavableArray3D[i10].length];
                    int i11 = 0;
                    while (true) {
                        Savable[][] savableArr = readSavableArray3D[i10];
                        if (i11 < savableArr.length) {
                            arrayListArr[i10][i11] = savableArrayListFromArray(savableArr[i11]);
                            i11++;
                        }
                    }
                }
            }
            this.fieldData.put(Byte.valueOf(binaryClassField.alias), arrayListArr);
            obj = arrayListArr;
        }
        return (ArrayList[][]) obj;
    }

    @Override
    public Map<? extends Savable, ? extends Savable> readSavableMap(String str, Map<? extends Savable, ? extends Savable> map) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return map;
        }
        Object obj = this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (obj instanceof ID[][]) {
            obj = savableMapFrom2DArray(readSavableArray2D(str, null));
            this.fieldData.put(Byte.valueOf(binaryClassField.alias), obj);
        }
        return (Map) obj;
    }

    @Override
    public short readShort(String str, short s10) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? s10 : ((Short) this.fieldData.get(Byte.valueOf(binaryClassField.alias))).shortValue();
    }

    @Override
    public short[] readShortArray(String str, short[] sArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? sArr : (short[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public short[][] readShortArray2D(String str, short[][] sArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? sArr : (short[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public ShortBuffer readShortBuffer(String str, ShortBuffer shortBuffer) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? shortBuffer : (ShortBuffer) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    public short readShortForBuffer(byte[] bArr) throws IOException {
        requireRemaining(bArr, 2);
        int i10 = this.index;
        short s10 = (short) ((bArr[i10] & 255) + ((bArr[i10 + 1] & 255) << 8));
        this.index = i10 + 2;
        return s10;
    }

    @Override
    public String readString(String str, String str2) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? str2 : (String) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public String[] readStringArray(String str, String[] strArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? strArr : (String[]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public String[][] readStringArray2D(String str, String[][] strArr) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        return (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) ? strArr : (String[][]) this.fieldData.get(Byte.valueOf(binaryClassField.alias));
    }

    @Override
    public Map<String, ? extends Savable> readStringSavableMap(String str, Map<String, ? extends Savable> map) throws IOException {
        BinaryClassField binaryClassField = this.cObj.nameFields.get(str);
        if (binaryClassField == null || !this.fieldData.containsKey(Byte.valueOf(binaryClassField.alias))) {
            return map;
        }
        Object obj = this.fieldData.get(Byte.valueOf(binaryClassField.alias));
        if (obj instanceof StringIDMap) {
            StringIDMap stringIDMap = (StringIDMap) obj;
            obj = stringSavableMapFromKV(stringIDMap.keys, resolveIDs(stringIDMap.values));
            this.fieldData.put(Byte.valueOf(binaryClassField.alias), obj);
        }
        return (Map) obj;
    }

    public void setContent(byte[] bArr, int i10, int i11) throws IOException {
        Object valueOf;
        this.fieldData = new HashMap<>();
        this.index = i10;
        while (true) {
            int i12 = this.index;
            if (i12 >= i11) {
                return;
            }
            byte b10 = bArr[i12];
            this.index = i12 + 1;
            BinaryClassField binaryClassField = this.cObj.aliasFields.get(Byte.valueOf(b10));
            if (binaryClassField == null) {
                throw new IOException("Unknown J3O field alias: " + (b10 & 255));
            }
            switch (binaryClassField.type) {
                case 0:
                    valueOf = Byte.valueOf(readByte(bArr));
                    break;
                case 1:
                    valueOf = readByteArray(bArr);
                    break;
                case 2:
                    valueOf = readByteArray2D(bArr);
                    break;
                case 10:
                    valueOf = Integer.valueOf(readInt(bArr));
                    break;
                case 11:
                    valueOf = readIntArray(bArr);
                    break;
                case 12:
                    valueOf = readIntArray2D(bArr);
                    break;
                case 20:
                    valueOf = Float.valueOf(readFloat(bArr));
                    break;
                case 21:
                    valueOf = readFloatArray(bArr);
                    break;
                case 22:
                    valueOf = readFloatArray2D(bArr);
                    break;
                case 30:
                    valueOf = Double.valueOf(readDouble(bArr));
                    break;
                case 31:
                    valueOf = readDoubleArray(bArr);
                    break;
                case 32:
                    valueOf = readDoubleArray2D(bArr);
                    break;
                case 40:
                    valueOf = Long.valueOf(readLong(bArr));
                    break;
                case 41:
                    valueOf = readLongArray(bArr);
                    break;
                case 42:
                    valueOf = readLongArray2D(bArr);
                    break;
                case 50:
                    valueOf = Short.valueOf(readShort(bArr));
                    break;
                case 51:
                    valueOf = readShortArray(bArr);
                    break;
                case 52:
                    valueOf = readShortArray2D(bArr);
                    break;
                case 60:
                    valueOf = Boolean.valueOf(readBoolean(bArr));
                    break;
                case 61:
                    valueOf = readBooleanArray(bArr);
                    break;
                case 62:
                    valueOf = readBooleanArray2D(bArr);
                    break;
                case 70:
                    valueOf = readString(bArr);
                    break;
                case 71:
                    valueOf = readStringArray(bArr);
                    break;
                case 72:
                    valueOf = readStringArray2D(bArr);
                    break;
                case 80:
                    valueOf = readBitSet(bArr);
                    break;
                case 90:
                    valueOf = readSavable(bArr);
                    break;
                case 91:
                    valueOf = readSavableArray(bArr);
                    break;
                case 92:
                    valueOf = readSavableArray2D(bArr);
                    break;
                case 100:
                    valueOf = readSavableArray(bArr);
                    break;
                case 101:
                    valueOf = readSavableArray2D(bArr);
                    break;
                case 102:
                    valueOf = readSavableArray3D(bArr);
                    break;
                case 105:
                    valueOf = readSavableMap(bArr);
                    break;
                case 106:
                    valueOf = readStringSavableMap(bArr);
                    break;
                case 107:
                    valueOf = readIntSavableMap(bArr);
                    break;
                case 110:
                    valueOf = readFloatBufferArrayList(bArr);
                    break;
                case 111:
                    valueOf = readByteBufferArrayList(bArr);
                    break;
                case 120:
                    valueOf = readFloatBuffer(bArr);
                    break;
                case 121:
                    valueOf = readIntBuffer(bArr);
                    break;
                case 122:
                    valueOf = readByteBuffer(bArr);
                    break;
                case 123:
                    valueOf = readShortBuffer(bArr);
                    break;
                default:
                    throw new IOException("Unknown J3O field type: " + ((int) binaryClassField.type));
            }
            this.fieldData.put(Byte.valueOf(b10), valueOf);
        }
    }

    public BitSet readBitSet(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        requireRemaining(bArr, checkedLength);
        BitSet bitSet = new BitSet(checkedLength);
        for (int i10 = 0; i10 < checkedLength; i10++) {
            bitSet.set(i10, readBoolean(bArr));
        }
        return bitSet;
    }

    public boolean readBoolean(byte[] bArr) throws IOException {
        requireRemaining(bArr, 1);
        boolean convertBooleanFromBytes = ByteUtils.convertBooleanFromBytes(bArr, this.index);
        this.index++;
        return convertBooleanFromBytes;
    }

    public boolean[] readBooleanArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        checkedByteCount(checkedLength, 1, bArr);
        boolean[] zArr = new boolean[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            zArr[i10] = readBoolean(bArr);
        }
        return zArr;
    }

    public boolean[][] readBooleanArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        boolean[][] zArr = new boolean[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            zArr[i10] = readBooleanArray(bArr);
        }
        return zArr;
    }

    public byte readByte(byte[] bArr) throws IOException {
        requireRemaining(bArr, 1);
        int i10 = this.index;
        byte b10 = bArr[i10];
        this.index = i10 + 1;
        return b10;
    }

    public byte[] readByteArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        requireRemaining(bArr, checkedLength);
        byte[] bArr2 = new byte[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            bArr2[i10] = readByte(bArr);
        }
        return bArr2;
    }

    public byte[][] readByteArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        byte[][] bArr2 = new byte[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            bArr2[i10] = readByteArray(bArr);
        }
        return bArr2;
    }

    public ByteBuffer readByteBuffer(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        if (BinaryImporter.canUseFastBuffers()) {
            requireRemaining(bArr, checkedLength);
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(checkedLength);
            createByteBuffer.put(bArr, this.index, checkedLength).rewind();
            this.index += checkedLength;
            return createByteBuffer;
        }
        ByteBuffer createByteBuffer2 = BufferUtils.createByteBuffer(checkedLength);
        for (int i10 = 0; i10 < checkedLength; i10++) {
            createByteBuffer2.put(readByteForBuffer(bArr));
        }
        createByteBuffer2.rewind();
        return createByteBuffer2;
    }

    public ArrayList<ByteBuffer> readByteBufferArrayList(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        ArrayList<ByteBuffer> arrayList = new ArrayList<>(checkedLength);
        for (int i10 = 0; i10 < checkedLength; i10++) {
            arrayList.add(readByteBuffer(bArr));
        }
        return arrayList;
    }

    public double readDouble(byte[] bArr) throws IOException {
        requireRemaining(bArr, 8);
        double convertDoubleFromBytes = ByteUtils.convertDoubleFromBytes(bArr, this.index);
        this.index += 8;
        return convertDoubleFromBytes;
    }

    public double[] readDoubleArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        checkedByteCount(checkedLength, 8, bArr);
        double[] dArr = new double[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            dArr[i10] = readDouble(bArr);
        }
        return dArr;
    }

    public double[][] readDoubleArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        double[][] dArr = new double[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            dArr[i10] = readDoubleArray(bArr);
        }
        return dArr;
    }

    public float readFloat(byte[] bArr) throws IOException {
        requireRemaining(bArr, 4);
        float convertFloatFromBytes = ByteUtils.convertFloatFromBytes(bArr, this.index);
        this.index += 4;
        return convertFloatFromBytes;
    }

    public float[] readFloatArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        checkedByteCount(checkedLength, 4, bArr);
        float[] fArr = new float[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            fArr[i10] = readFloat(bArr);
        }
        return fArr;
    }

    public float[][] readFloatArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        float[][] fArr = new float[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            fArr[i10] = readFloatArray(bArr);
        }
        return fArr;
    }

    public FloatBuffer readFloatBuffer(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        if (BinaryImporter.canUseFastBuffers()) {
            int checkedByteCount = checkedByteCount(checkedLength, 4, bArr);
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(checkedByteCount);
            createByteBuffer.put(bArr, this.index, checkedByteCount).rewind();
            this.index += checkedByteCount;
            return createByteBuffer.asFloatBuffer();
        }
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(checkedLength);
        for (int i10 = 0; i10 < checkedLength; i10++) {
            createFloatBuffer.put(readFloatForBuffer(bArr));
        }
        createFloatBuffer.rewind();
        return createFloatBuffer;
    }

    public ArrayList<FloatBuffer> readFloatBufferArrayList(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        ArrayList<FloatBuffer> arrayList = new ArrayList<>(checkedLength);
        for (int i10 = 0; i10 < checkedLength; i10++) {
            arrayList.add(readFloatBuffer(bArr));
        }
        return arrayList;
    }

    public int readInt(byte[] bArr) throws IOException {
        byte[] inflateFrom = inflateFrom(bArr, this.index);
        this.index += inflateFrom.length + 1;
        if (inflateFrom.length <= 4) {
            int convertIntFromBytes = ByteUtils.convertIntFromBytes(ByteUtils.rightAlignBytes(inflateFrom, 4));
            if (convertIntFromBytes == -1 || convertIntFromBytes == -2) {
                this.index -= 4;
            }
            return convertIntFromBytes;
        }
        throw new IOException("Invalid J3O int byte length: " + inflateFrom.length);
    }

    public int[] readIntArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        requireRemaining(bArr, checkedLength);
        int[] iArr = new int[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            iArr[i10] = readInt(bArr);
        }
        return iArr;
    }

    public int[][] readIntArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        int[][] iArr = new int[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            iArr[i10] = readIntArray(bArr);
        }
        return iArr;
    }

    public IntBuffer readIntBuffer(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        if (BinaryImporter.canUseFastBuffers()) {
            int checkedByteCount = checkedByteCount(checkedLength, 4, bArr);
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(checkedByteCount);
            createByteBuffer.put(bArr, this.index, checkedByteCount).rewind();
            this.index += checkedByteCount;
            return createByteBuffer.asIntBuffer();
        }
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(checkedLength);
        for (int i10 = 0; i10 < checkedLength; i10++) {
            createIntBuffer.put(readIntForBuffer(bArr));
        }
        createIntBuffer.rewind();
        return createIntBuffer;
    }

    public long readLong(byte[] bArr) throws IOException {
        byte[] inflateFrom = inflateFrom(bArr, this.index);
        this.index += inflateFrom.length + 1;
        if (inflateFrom.length <= 8) {
            return ByteUtils.convertLongFromBytes(ByteUtils.rightAlignBytes(inflateFrom, 8));
        }
        throw new IOException("Invalid J3O long byte length: " + inflateFrom.length);
    }

    public long[] readLongArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        requireRemaining(bArr, checkedLength);
        long[] jArr = new long[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            jArr[i10] = readLong(bArr);
        }
        return jArr;
    }

    public long[][] readLongArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        long[][] jArr = new long[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            jArr[i10] = readLongArray(bArr);
        }
        return jArr;
    }

    public short readShort(byte[] bArr) throws IOException {
        requireRemaining(bArr, 2);
        short convertShortFromBytes = ByteUtils.convertShortFromBytes(bArr, this.index);
        this.index += 2;
        return convertShortFromBytes;
    }

    public short[] readShortArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        checkedByteCount(checkedLength, 2, bArr);
        short[] sArr = new short[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            sArr[i10] = readShort(bArr);
        }
        return sArr;
    }

    public short[][] readShortArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        short[][] sArr = new short[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            sArr[i10] = readShortArray(bArr);
        }
        return sArr;
    }

    public ShortBuffer readShortBuffer(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        if (BinaryImporter.canUseFastBuffers()) {
            int checkedByteCount = checkedByteCount(checkedLength, 2, bArr);
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(checkedByteCount);
            createByteBuffer.put(bArr, this.index, checkedByteCount).rewind();
            this.index += checkedByteCount;
            return createByteBuffer.asShortBuffer();
        }
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(checkedLength);
        for (int i10 = 0; i10 < checkedLength; i10++) {
            createShortBuffer.put(readShortForBuffer(bArr));
        }
        createShortBuffer.rewind();
        return createShortBuffer;
    }

    public String readString(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        requireRemaining(bArr, checkedLength);
        byte[] bArr2 = new byte[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            int i11 = this.index;
            this.index = i11 + 1;
            bArr2[i10] = bArr[i11];
        }
        return new String(bArr2, StandardCharsets.UTF_8);
    }

    public String[] readStringArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        requireRemaining(bArr, checkedLength);
        String[] strArr = new String[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            strArr[i10] = readString(bArr);
        }
        return strArr;
    }

    public String[][] readStringArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        String[][] strArr = new String[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            strArr[i10] = readStringArray(bArr);
        }
        return strArr;
    }

    public ID readSavable(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        return new ID(readInt);
    }

    public ID[] readSavableArray(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        requireRemaining(bArr, checkedLength);
        ID[] idArr = new ID[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            idArr[i10] = readSavable(bArr);
        }
        return idArr;
    }

    public ID[][] readSavableMap(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        ID[][] idArr = new ID[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            idArr[i10] = readSavableArray(bArr);
        }
        return idArr;
    }

    public IntIDMap readIntSavableMap(byte[] bArr) throws IOException {
        if (checkedLength(readInt(bArr)) == -1) {
            return null;
        }
        int[] readIntArray = readIntArray(bArr);
        ID[] readSavableArray = readSavableArray(bArr);
        IntIDMap intIDMap = new IntIDMap();
        intIDMap.keys = readIntArray;
        intIDMap.values = readSavableArray;
        return intIDMap;
    }

    public StringIDMap readStringSavableMap(byte[] bArr) throws IOException {
        if (checkedLength(readInt(bArr)) == -1) {
            return null;
        }
        String[] readStringArray = readStringArray(bArr);
        ID[] readSavableArray = readSavableArray(bArr);
        StringIDMap stringIDMap = new StringIDMap();
        stringIDMap.keys = readStringArray;
        stringIDMap.values = readSavableArray;
        return stringIDMap;
    }

    public ID[][] readSavableArray2D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        ID[][] idArr = new ID[checkedLength];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            idArr[i10] = readSavableArray(bArr);
        }
        return idArr;
    }

    public ID[][][] readSavableArray3D(byte[] bArr) throws IOException {
        int checkedLength = checkedLength(readInt(bArr));
        if (checkedLength == -1) {
            return null;
        }
        ID[][][] idArr = new ID[checkedLength][];
        for (int i10 = 0; i10 < checkedLength; i10++) {
            idArr[i10] = readSavableArray2D(bArr);
        }
        return idArr;
    }
}
