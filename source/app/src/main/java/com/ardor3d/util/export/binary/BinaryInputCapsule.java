package com.ardor3d.util.export.binary;

import com.ardor3d.util.export.ByteUtils;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class BinaryInputCapsule implements InputCapsule {
    private static final int UTF8_2BYTE = 2;
    private static final int UTF8_3BYTE_1 = 3;
    private static final int UTF8_3BYTE_2 = 4;
    private static final int UTF8_ILLEGAL = 10;
    private static final int UTF8_START = 0;
    private static final Logger logger = Logger.getLogger(BinaryInputCapsule.class.getName());
    protected BinaryClassObject _cObj;
    protected HashMap<Byte, Object> _fieldData;
    protected BinaryImporter _importer;
    protected int _index = 0;

    public static class ID {

        public int f58743id;

        public ID(int i10) {
            this.f58743id = i10;
        }
    }

    public static class StringIDMap {
        public String[] keys;
        public ID[] values;

        private StringIDMap() {
        }
    }

    public BinaryInputCapsule(BinaryImporter binaryImporter, BinaryClassObject binaryClassObject) {
        this._importer = binaryImporter;
        this._cObj = binaryClassObject;
    }

    public static byte[] inflateFrom(byte[] bArr, int i10) {
        int i11 = bArr[i10];
        if (i11 == -1) {
            return ByteUtils.convertToBytes(-1);
        }
        if (i11 == -2) {
            return ByteUtils.convertToBytes(-2);
        }
        int i12 = 0;
        if (i11 == 0) {
            return new byte[0];
        }
        byte[] bArr2 = new byte[i11];
        while (i12 < i11) {
            int i13 = i12 + 1;
            bArr2[i12] = bArr[i13 + i10];
            i12 = i13;
        }
        return bArr2;
    }

    private Savable[] resolveIDs(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        Savable[] savableArr = new Savable[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            ID id2 = (ID) objArr[i10];
            savableArr[i10] = id2 != null ? this._importer.readObject(id2.f58743id) : null;
        }
        return savableArr;
    }

    private List<Savable> savableArrayListFromArray(Savable[] savableArr) {
        if (savableArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(savableArr.length);
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
    public BitSet readBitSet(String str, BitSet bitSet) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? bitSet : (BitSet) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public boolean readBoolean(String str, boolean z10) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? z10 : ((Boolean) this._fieldData.get(Byte.valueOf(binaryClassField._alias))).booleanValue();
    }

    @Override
    public boolean[] readBooleanArray(String str, boolean[] zArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? zArr : (boolean[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public boolean[][] readBooleanArray2D(String str, boolean[][] zArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? zArr : (boolean[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public byte readByte(String str, byte b10) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? b10 : ((Byte) this._fieldData.get(Byte.valueOf(binaryClassField._alias))).byteValue();
    }

    @Override
    public byte[] readByteArray(String str, byte[] bArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? bArr : (byte[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public byte[][] readByteArray2D(String str, byte[][] bArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? bArr : (byte[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public ByteBuffer readByteBuffer(String str, ByteBuffer byteBuffer) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? byteBuffer : (ByteBuffer) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    public List<ByteBuffer> readByteBufferArrayList(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(readByteBuffer(bArr));
        }
        return arrayList;
    }

    @Override
    public List<ByteBuffer> readByteBufferList(String str, List<ByteBuffer> list) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? list : (List) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public double readDouble(String str, double d10) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? d10 : ((Double) this._fieldData.get(Byte.valueOf(binaryClassField._alias))).doubleValue();
    }

    @Override
    public double[] readDoubleArray(String str, double[] dArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? dArr : (double[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public double[][] readDoubleArray2D(String str, double[][] dArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? dArr : (double[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public <T extends Enum<T>> T readEnum(String str, Class<T> cls, T t10) throws IOException {
        String readString = readString(str, t10 != null ? t10.name() : null);
        if (readString != null) {
            return (T) Enum.valueOf(cls, readString);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [T extends java.lang.Enum<T>[]] */
    /* JADX WARN: Type inference failed for: r8v1, types: [T extends java.lang.Enum<T>[]] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Enum[]] */
    @Override
    public <T extends Enum<T>> T[] readEnumArray(String str, Class<T> cls, T[] tArr) throws IOException {
        String[] readStringArray = readStringArray(str, null);
        if (readStringArray != null) {
            tArr = (T[]) ((Enum[]) Array.newInstance((Class<?>) cls, readStringArray.length));
            int length = readStringArray.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                tArr[i11] = Enum.valueOf(cls, readStringArray[i10]);
                i10++;
                i11++;
            }
        }
        return (T[]) tArr;
    }

    @Override
    public float readFloat(String str, float f10) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? f10 : ((Float) this._fieldData.get(Byte.valueOf(binaryClassField._alias))).floatValue();
    }

    @Override
    public float[] readFloatArray(String str, float[] fArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? fArr : (float[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public float[][] readFloatArray2D(String str, float[][] fArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? fArr : (float[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public FloatBuffer readFloatBuffer(String str, FloatBuffer floatBuffer) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? floatBuffer : (FloatBuffer) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    public List<FloatBuffer> readFloatBufferArrayList(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(readFloatBuffer(bArr));
        }
        return arrayList;
    }

    @Override
    public List<FloatBuffer> readFloatBufferList(String str, List<FloatBuffer> list) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? list : (List) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public int readInt(String str, int i10) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? i10 : ((Integer) this._fieldData.get(Byte.valueOf(binaryClassField._alias))).intValue();
    }

    @Override
    public int[] readIntArray(String str, int[] iArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? iArr : (int[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public int[][] readIntArray2D(String str, int[][] iArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? iArr : (int[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public IntBuffer readIntBuffer(String str, IntBuffer intBuffer) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? intBuffer : (IntBuffer) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public long readLong(String str, long j10) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? j10 : ((Long) this._fieldData.get(Byte.valueOf(binaryClassField._alias))).longValue();
    }

    @Override
    public long[] readLongArray(String str, long[] jArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? jArr : (long[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public long[][] readLongArray2D(String str, long[][] jArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? jArr : (long[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public Savable readSavable(String str, Savable savable) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return savable;
        }
        Object obj = this._fieldData.get(Byte.valueOf(binaryClassField._alias));
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof ID)) {
            return savable;
        }
        Savable readObject = this._importer.readObject(((ID) obj).f58743id);
        this._fieldData.put(Byte.valueOf(binaryClassField._alias), readObject);
        return readObject;
    }

    @Override
    public Savable[] readSavableArray(String str, Savable[] savableArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return savableArr;
        }
        Object[] objArr = (Object[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
        if (!(objArr instanceof ID[])) {
            return savableArr;
        }
        Savable[] resolveIDs = resolveIDs(objArr);
        this._fieldData.put(Byte.valueOf(binaryClassField._alias), resolveIDs);
        return resolveIDs;
    }

    @Override
    public Savable[][] readSavableArray2D(String str, Savable[][] savableArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return savableArr;
        }
        Object[][] objArr = (Object[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
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
            this._fieldData.put(Byte.valueOf(binaryClassField._alias), savableArr2);
            objArr = savableArr2;
        }
        return (Savable[][]) objArr;
    }

    public Savable[][][] readSavableArray3D(String str, Savable[][][] savableArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField != null && this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            Object[][][] objArr = (Object[][][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
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
                this._fieldData.put(Byte.valueOf(binaryClassField._alias), savableArr);
            }
        }
        return savableArr;
    }

    @Override
    public <E extends Savable> List<E> readSavableList(String str, List<E> list) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return list;
        }
        Object obj = this._fieldData.get(Byte.valueOf(binaryClassField._alias));
        if (obj instanceof ID[]) {
            obj = savableArrayListFromArray(readSavableArray(str, null));
            this._fieldData.put(Byte.valueOf(binaryClassField._alias), obj);
        }
        return (List) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List<E extends com.ardor3d.util.export.Savable>[]] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.ArrayList[]] */
    @Override
    public <E extends Savable> List<E>[] readSavableListArray(String str, List<E>[] listArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return listArr;
        }
        Object obj = this._fieldData.get(Byte.valueOf(binaryClassField._alias));
        if (obj instanceof ID[][]) {
            Savable[][] readSavableArray2D = readSavableArray2D(str, null);
            if (readSavableArray2D != null) {
                listArr = new ArrayList[readSavableArray2D.length];
                for (int i10 = 0; i10 < readSavableArray2D.length; i10++) {
                    listArr[i10] = savableArrayListFromArray(readSavableArray2D[i10]);
                }
            }
            this._fieldData.put(Byte.valueOf(binaryClassField._alias), listArr);
            obj = listArr;
        }
        return (List[]) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.List<E extends com.ardor3d.util.export.Savable>[][]] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.util.ArrayList[][]] */
    @Override
    public <E extends Savable> List<E>[][] readSavableListArray2D(String str, List<E>[][] listArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return listArr;
        }
        Object obj = this._fieldData.get(Byte.valueOf(binaryClassField._alias));
        if (obj instanceof ID[][][]) {
            Savable[][][] readSavableArray3D = readSavableArray3D(str, null);
            if (readSavableArray3D != null && readSavableArray3D.length > 0) {
                listArr = new ArrayList[readSavableArray3D.length];
                for (int i10 = 0; i10 < readSavableArray3D.length; i10++) {
                    listArr[i10] = new ArrayList[readSavableArray3D[i10].length];
                    int i11 = 0;
                    while (true) {
                        Savable[][] savableArr = readSavableArray3D[i10];
                        if (i11 < savableArr.length) {
                            listArr[i10][i11] = savableArrayListFromArray(savableArr[i11]);
                            i11++;
                        }
                    }
                }
            }
            this._fieldData.put(Byte.valueOf(binaryClassField._alias), listArr);
            obj = listArr;
        }
        return (List[][]) obj;
    }

    @Override
    public <K extends Savable, V extends Savable> Map<K, V> readSavableMap(String str, Map<K, V> map) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return map;
        }
        Object obj = this._fieldData.get(Byte.valueOf(binaryClassField._alias));
        if (obj instanceof ID[][]) {
            obj = savableMapFrom2DArray(readSavableArray2D(str, null));
            this._fieldData.put(Byte.valueOf(binaryClassField._alias), obj);
        }
        return (Map) obj;
    }

    @Override
    public short readShort(String str, short s10) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? s10 : ((Short) this._fieldData.get(Byte.valueOf(binaryClassField._alias))).shortValue();
    }

    @Override
    public short[] readShortArray(String str, short[] sArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? sArr : (short[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public short[][] readShortArray2D(String str, short[][] sArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? sArr : (short[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public ShortBuffer readShortBuffer(String str, ShortBuffer shortBuffer) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? shortBuffer : (ShortBuffer) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public String readString(String str, String str2) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? str2 : (String) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public String[] readStringArray(String str, String[] strArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? strArr : (String[]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public String[][] readStringArray2D(String str, String[][] strArr) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        return (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) ? strArr : (String[][]) this._fieldData.get(Byte.valueOf(binaryClassField._alias));
    }

    @Override
    public <V extends Savable> Map<String, V> readStringSavableMap(String str, Map<String, V> map) throws IOException {
        BinaryClassField binaryClassField = this._cObj._nameFields.get(str);
        if (binaryClassField == null || !this._fieldData.containsKey(Byte.valueOf(binaryClassField._alias))) {
            return map;
        }
        Object obj = this._fieldData.get(Byte.valueOf(binaryClassField._alias));
        if (obj instanceof StringIDMap) {
            StringIDMap stringIDMap = (StringIDMap) obj;
            obj = stringSavableMapFromKV(stringIDMap.keys, resolveIDs(stringIDMap.values));
            this._fieldData.put(Byte.valueOf(binaryClassField._alias), obj);
        }
        return (Map) obj;
    }

    public void setContent(byte[] bArr, int i10, int i11) {
        Object valueOf;
        this._fieldData = new HashMap<>();
        this._index = i10;
        while (true) {
            int i12 = this._index;
            if (i12 >= i11) {
                return;
            }
            byte b10 = bArr[i12];
            this._index = i12 + 1;
            try {
                switch (this._cObj._aliasFields.get(Byte.valueOf(b10))._type) {
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
                        continue;
                }
                this._fieldData.put(Byte.valueOf(b10), valueOf);
            } catch (IOException e10) {
                logger.logp(Level.SEVERE, getClass().toString(), "setContent(byte[] content)", "Exception", (Throwable) e10);
            }
        }
    }

    public BitSet readBitSet(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        BitSet bitSet = new BitSet(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            bitSet.set(i10, readBoolean(bArr));
        }
        return bitSet;
    }

    public boolean readBoolean(byte[] bArr) throws IOException {
        boolean convertBooleanFromBytes = ByteUtils.convertBooleanFromBytes(bArr, this._index);
        this._index++;
        return convertBooleanFromBytes;
    }

    public boolean[] readBooleanArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        boolean[] zArr = new boolean[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            zArr[i10] = readBoolean(bArr);
        }
        return zArr;
    }

    public boolean[][] readBooleanArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        boolean[][] zArr = new boolean[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            zArr[i10] = readBooleanArray(bArr);
        }
        return zArr;
    }

    public byte readByte(byte[] bArr) throws IOException {
        int i10 = this._index;
        byte b10 = bArr[i10];
        this._index = i10 + 1;
        return b10;
    }

    public byte[] readByteArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        byte[] bArr2 = new byte[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            bArr2[i10] = readByte(bArr);
        }
        return bArr2;
    }

    public byte[][] readByteArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        byte[][] bArr2 = new byte[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            bArr2[i10] = readByteArray(bArr);
        }
        return bArr2;
    }

    public ByteBuffer readByteBuffer(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        boolean readBoolean = readBoolean(bArr);
        ByteBuffer order = ByteBuffer.allocateDirect(readInt).order(ByteOrder.LITTLE_ENDIAN);
        order.put(bArr, this._index, readInt).rewind();
        this._index += readInt;
        ByteBuffer createByteBuffer = readBoolean ? BufferUtils.createByteBuffer(readInt) : BufferUtils.createByteBufferOnHeap(readInt);
        createByteBuffer.put(order);
        createByteBuffer.rewind();
        return createByteBuffer;
    }

    public double readDouble(byte[] bArr) throws IOException {
        double convertDoubleFromBytes = ByteUtils.convertDoubleFromBytes(bArr, this._index);
        this._index += 8;
        return convertDoubleFromBytes;
    }

    public double[] readDoubleArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        double[] dArr = new double[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            dArr[i10] = readDouble(bArr);
        }
        return dArr;
    }

    public double[][] readDoubleArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        double[][] dArr = new double[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            dArr[i10] = readDoubleArray(bArr);
        }
        return dArr;
    }

    public float readFloat(byte[] bArr) throws IOException {
        float convertFloatFromBytes = ByteUtils.convertFloatFromBytes(bArr, this._index);
        this._index += 4;
        return convertFloatFromBytes;
    }

    public float[] readFloatArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        float[] fArr = new float[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            fArr[i10] = readFloat(bArr);
        }
        return fArr;
    }

    public float[][] readFloatArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        float[][] fArr = new float[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            fArr[i10] = readFloatArray(bArr);
        }
        return fArr;
    }

    public FloatBuffer readFloatBuffer(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        boolean readBoolean = readBoolean(bArr);
        int i10 = readInt * 4;
        ByteBuffer order = ByteBuffer.allocateDirect(i10).order(ByteOrder.LITTLE_ENDIAN);
        order.put(bArr, this._index, i10).rewind();
        this._index += i10;
        FloatBuffer createFloatBuffer = readBoolean ? BufferUtils.createFloatBuffer(readInt) : BufferUtils.createFloatBufferOnHeap(readInt);
        createFloatBuffer.put(order.asFloatBuffer());
        createFloatBuffer.rewind();
        return createFloatBuffer;
    }

    public int readInt(byte[] bArr) throws IOException {
        byte[] inflateFrom = inflateFrom(bArr, this._index);
        this._index += inflateFrom.length + 1;
        int convertIntFromBytes = ByteUtils.convertIntFromBytes(ByteUtils.rightAlignBytes(inflateFrom, 4));
        if (convertIntFromBytes == -1 || convertIntFromBytes == -2) {
            this._index -= 4;
        }
        return convertIntFromBytes;
    }

    public int[] readIntArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        int[] iArr = new int[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            iArr[i10] = readInt(bArr);
        }
        return iArr;
    }

    public int[][] readIntArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        int[][] iArr = new int[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            iArr[i10] = readIntArray(bArr);
        }
        return iArr;
    }

    public IntBuffer readIntBuffer(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        boolean readBoolean = readBoolean(bArr);
        int i10 = readInt * 4;
        ByteBuffer order = ByteBuffer.allocateDirect(i10).order(ByteOrder.LITTLE_ENDIAN);
        order.put(bArr, this._index, i10).rewind();
        this._index += i10;
        IntBuffer createIntBuffer = readBoolean ? BufferUtils.createIntBuffer(readInt) : BufferUtils.createIntBufferOnHeap(readInt);
        createIntBuffer.put(order.asIntBuffer());
        createIntBuffer.rewind();
        return createIntBuffer;
    }

    public long readLong(byte[] bArr) throws IOException {
        byte[] inflateFrom = inflateFrom(bArr, this._index);
        this._index += inflateFrom.length + 1;
        return ByteUtils.convertLongFromBytes(ByteUtils.rightAlignBytes(inflateFrom, 8));
    }

    public long[] readLongArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        long[] jArr = new long[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            jArr[i10] = readLong(bArr);
        }
        return jArr;
    }

    public long[][] readLongArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        long[][] jArr = new long[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            jArr[i10] = readLongArray(bArr);
        }
        return jArr;
    }

    public short readShort(byte[] bArr) throws IOException {
        short convertShortFromBytes = ByteUtils.convertShortFromBytes(bArr, this._index);
        this._index += 2;
        return convertShortFromBytes;
    }

    public short[] readShortArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        short[] sArr = new short[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            sArr[i10] = readShort(bArr);
        }
        return sArr;
    }

    public short[][] readShortArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        short[][] sArr = new short[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            sArr[i10] = readShortArray(bArr);
        }
        return sArr;
    }

    public ShortBuffer readShortBuffer(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        boolean readBoolean = readBoolean(bArr);
        int i10 = readInt * 2;
        ByteBuffer order = ByteBuffer.allocateDirect(i10).order(ByteOrder.LITTLE_ENDIAN);
        order.put(bArr, this._index, i10).rewind();
        this._index += i10;
        ShortBuffer createShortBuffer = readBoolean ? BufferUtils.createShortBuffer(readInt) : BufferUtils.createShortBufferOnHeap(readInt);
        createShortBuffer.put(order.asShortBuffer());
        createShortBuffer.rewind();
        return createShortBuffer;
    }

    public String readString(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        byte[] bArr2 = new byte[readInt];
        char c10 = 0;
        for (int i10 = 0; i10 < readInt; i10++) {
            int i11 = this._index;
            this._index = i11 + 1;
            byte b10 = bArr[i11];
            bArr2[i10] = b10;
            int i12 = b10 & 255;
            if (c10 != 0) {
                if (c10 == 2 || c10 == 3 || c10 == 4) {
                    if ((b10 & 128) == 128) {
                        c10 = c10 == 3 ? (char) 4 : (char) 0;
                    }
                    c10 = '\n';
                }
            } else if (i12 >= 128) {
                if ((b10 & Opcodes.OPC_checkcast) == 192) {
                    c10 = 2;
                } else {
                    if ((b10 & 224) == 224) {
                        c10 = 3;
                    }
                    c10 = '\n';
                }
            }
        }
        try {
            if (c10 == 0) {
                return new String(bArr2, "UTF8");
            }
            logger.log(Level.WARNING, "Your export has been saved with an incorrect encoding for it's String fields which means it might not load correctly due to encoding issues.");
            return new String(bArr2, "ISO8859_1");
        } catch (UnsupportedEncodingException unused) {
            logger.log(Level.SEVERE, "Your export has been saved with an incorrect encoding or your version of Java is unable to decode the stored string. While your export may load correctly by falling back, using it on different platforms or java versions might lead to very strange inconsitenties. You should probably re-export your work.");
            return new String(bArr2);
        }
    }

    public String[] readStringArray(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        String[] strArr = new String[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            strArr[i10] = readString(bArr);
        }
        return strArr;
    }

    public String[][] readStringArray2D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        String[][] strArr = new String[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
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
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        ID[] idArr = new ID[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            idArr[i10] = readSavable(bArr);
        }
        return idArr;
    }

    public ID[][] readSavableMap(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        ID[][] idArr = new ID[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            idArr[i10] = readSavableArray(bArr);
        }
        return idArr;
    }

    public StringIDMap readStringSavableMap(byte[] bArr) throws IOException {
        if (readInt(bArr) == -1) {
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
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        ID[][] idArr = new ID[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            idArr[i10] = readSavableArray(bArr);
        }
        return idArr;
    }

    public ID[][][] readSavableArray3D(byte[] bArr) throws IOException {
        int readInt = readInt(bArr);
        if (readInt == -1) {
            return null;
        }
        ID[][][] idArr = new ID[readInt][];
        for (int i10 = 0; i10 < readInt; i10++) {
            idArr[i10] = readSavableArray2D(bArr);
        }
        return idArr;
    }
}
