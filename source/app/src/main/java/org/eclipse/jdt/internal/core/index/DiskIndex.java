package org.eclipse.jdt.internal.core.index;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.io.UTFDataFormatException;
import java.util.regex.Pattern;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.util.HashtableOfIntValues;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.SimpleWordSet;
import org.eclipse.jdt.internal.core.util.Util;
import w2.C15883c;

public class DiskIndex {
    private static int BUFFER_READ_SIZE = 2048;
    private static final int BUFFER_WRITE_SIZE = 2048;
    private static final int CHUNK_SIZE = 100;
    private static final int DEFAULT_BUFFER_SIZE = 2048;
    private static final int DELETED = -2;
    private static final int RE_INDEXED = -1;
    private static final String TMP_EXT = ".tmp";
    private int bufferEnd;
    private int bufferIndex;
    private int cacheUserCount;
    private char[] cachedCategoryName;
    private String[][] cachedChunks;
    private HashtableOfIntValues categoryEnds;
    private HashtableOfIntValues categoryOffsets;
    private HashtableOfObject categoryTables;
    private int[] chunkOffsets;
    private int documentReferenceSize;
    private int headerInfoOffset;
    IndexLocation indexLocation;
    private int numberOfChunks;
    char separator;
    private int sizeOfLastChunk;
    private int startOfCategoryTables;
    private byte[] streamBuffer;
    private int streamEnd;
    public static final String SIGNATURE = "INDEX VERSION 1.131";
    private static final char[] SIGNATURE_CHARS = SIGNATURE.toCharArray();
    public static boolean DEBUG = false;
    private static final SimpleSetOfCharArray INTERNED_CATEGORY_NAMES = new SimpleSetOfCharArray(20);

    public static class IntList {
        int[] elements;
        int size;

        public IntList(int[] iArr) {
            this.elements = iArr;
            this.size = iArr.length;
        }

        public void add(int i10) {
            int i11 = this.size;
            int[] iArr = this.elements;
            if (i11 == iArr.length) {
                int i12 = i11 * 3;
                if (i12 < 7) {
                    i12 = 7;
                }
                int[] iArr2 = new int[i12];
                this.elements = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i11);
            }
            int[] iArr3 = this.elements;
            int i13 = this.size;
            this.size = i13 + 1;
            iArr3[i13] = i10;
        }

        public int[] asArray() {
            int i10 = this.size;
            int[] iArr = new int[i10];
            System.arraycopy(this.elements, 0, iArr, 0, i10);
            return iArr;
        }
    }

    public DiskIndex() {
        this.separator = '/';
        this.headerInfoOffset = -1;
        this.numberOfChunks = -1;
        this.sizeOfLastChunk = -1;
        this.chunkOffsets = null;
        this.documentReferenceSize = -1;
        this.cacheUserCount = -1;
        this.cachedChunks = null;
        this.categoryTables = null;
        this.cachedCategoryName = null;
        this.categoryOffsets = null;
        this.categoryEnds = null;
    }

    private HashtableOfObject addQueryResult(HashtableOfObject hashtableOfObject, char[] cArr, Object obj, MemoryIndex memoryIndex, boolean z10) throws IOException {
        if (hashtableOfObject == null) {
            hashtableOfObject = new HashtableOfObject(13);
        }
        EntryResult entryResult = z10 ? (EntryResult) hashtableOfObject.get(cArr) : null;
        if (memoryIndex != null) {
            SimpleLookupTable simpleLookupTable = memoryIndex.docsToReferences;
            if (entryResult == null) {
                entryResult = new EntryResult(cArr, null);
            }
            for (int i10 : readDocumentNumbers(obj)) {
                String readDocumentName = readDocumentName(i10);
                if (!simpleLookupTable.containsKey(readDocumentName)) {
                    entryResult.addDocumentName(readDocumentName);
                }
            }
            if (!entryResult.isEmpty()) {
                hashtableOfObject.put(cArr, entryResult);
            }
        } else if (entryResult == null) {
            hashtableOfObject.putUnsafely(cArr, new EntryResult(cArr, obj));
        } else {
            entryResult.addDocumentTable(obj);
        }
        return hashtableOfObject;
    }

    private void cacheDocumentNames() throws IOException {
        this.cachedChunks = new String[this.numberOfChunks];
        InputStream inputStream = this.indexLocation.getInputStream();
        try {
            try {
                if (this.numberOfChunks > 5) {
                    BUFFER_READ_SIZE <<= 1;
                }
                inputStream.skip(this.chunkOffsets[0]);
                byte[] bArr = new byte[BUFFER_READ_SIZE];
                this.streamBuffer = bArr;
                this.bufferIndex = 0;
                this.bufferEnd = inputStream.read(bArr, 0, bArr.length);
                int i10 = 0;
                while (true) {
                    int i11 = this.numberOfChunks;
                    if (i10 >= i11) {
                        inputStream.close();
                        this.indexLocation.close();
                        this.streamBuffer = null;
                        BUFFER_READ_SIZE = 2048;
                        return;
                    }
                    int i12 = i10 == i11 + (-1) ? this.sizeOfLastChunk : 100;
                    String[] strArr = new String[i12];
                    this.cachedChunks[i10] = strArr;
                    readChunk(strArr, inputStream, 0, i12);
                    i10++;
                }
            } catch (IOException e10) {
                this.cachedChunks = null;
                throw e10;
            }
        } catch (Throwable th2) {
            inputStream.close();
            this.indexLocation.close();
            this.streamBuffer = null;
            BUFFER_READ_SIZE = 2048;
            throw th2;
        }
    }

    private String[] computeDocumentNames(String[] strArr, int[] iArr, SimpleLookupTable simpleLookupTable, MemoryIndex memoryIndex) {
        String[] strArr2;
        int length = strArr.length;
        SimpleLookupTable simpleLookupTable2 = memoryIndex.docsToReferences;
        Object[] objArr = simpleLookupTable2.keyTable;
        Object[] objArr2 = simpleLookupTable2.valueTable;
        int i10 = 0;
        if (length == 0) {
            int length2 = objArr2.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (objArr2[i11] != null) {
                    simpleLookupTable.put(objArr[i11], null);
                }
            }
            int i12 = simpleLookupTable.elementSize;
            String[] strArr3 = new String[i12];
            int i13 = 0;
            for (Object obj : simpleLookupTable.keyTable) {
                if (obj != null) {
                    strArr3[i13] = (String) obj;
                    i13++;
                }
            }
            Util.sort(strArr3);
            while (i10 < i12) {
                simpleLookupTable.put(strArr3[i10], Integer.valueOf(i10));
                i10++;
            }
            return strArr3;
        }
        for (int i14 = 0; i14 < length; i14++) {
            iArr[i14] = i14;
        }
        int length3 = objArr.length;
        int i15 = 0;
        for (int i16 = 0; i16 < length3; i16++) {
            String str = (String) objArr[i16];
            if (str != null) {
                int i17 = 0;
                while (true) {
                    if (i17 >= length) {
                        if (objArr2[i16] != null) {
                            simpleLookupTable.put(str, null);
                        }
                    } else if (!str.equals(strArr[i17])) {
                        i17++;
                    } else if (objArr2[i16] == null) {
                        iArr[i17] = -2;
                        i15++;
                    } else {
                        iArr[i17] = -1;
                    }
                }
            }
        }
        if (i15 > 0 || simpleLookupTable.elementSize > 0) {
            int i18 = (simpleLookupTable.elementSize + length) - i15;
            String[] strArr4 = new String[i18];
            int i19 = 0;
            for (int i20 = 0; i20 < length; i20++) {
                if (iArr[i20] >= -1) {
                    strArr4[i19] = strArr[i20];
                    i19++;
                }
            }
            for (Object obj2 : simpleLookupTable.keyTable) {
                if (obj2 != null) {
                    strArr4[i19] = (String) obj2;
                    i19++;
                }
            }
            Util.sort(strArr4);
            for (int i21 = 0; i21 < i18; i21++) {
                if (simpleLookupTable.containsKey(strArr4[i21])) {
                    simpleLookupTable.put(strArr4[i21], Integer.valueOf(i21));
                }
            }
            strArr2 = strArr4;
        } else {
            strArr2 = strArr;
        }
        int i22 = -1;
        while (i10 < length) {
            int i23 = iArr[i10];
            if (i23 != -2) {
                if (i23 != -1) {
                    i22++;
                    if (strArr2[i22].equals(strArr[i10])) {
                        iArr[i10] = i22;
                        i10++;
                    }
                } else {
                    i22++;
                    String str2 = strArr2[i22];
                    if (str2.equals(strArr[i10])) {
                        simpleLookupTable.put(str2, Integer.valueOf(i22));
                    }
                }
            }
            i10++;
        }
        return strArr2;
    }

    private void copyQueryResults(HashtableOfObject hashtableOfObject, int i10) {
        char[][] cArr = hashtableOfObject.keyTable;
        Object[] objArr = hashtableOfObject.valueTable;
        int length = cArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            char[] cArr2 = cArr[i11];
            if (cArr2 != null) {
                SimpleWordSet simpleWordSet = (SimpleWordSet) objArr[i11];
                HashtableOfObject hashtableOfObject2 = (HashtableOfObject) this.categoryTables.get(cArr2);
                if (hashtableOfObject2 == null) {
                    HashtableOfObject hashtableOfObject3 = this.categoryTables;
                    HashtableOfObject hashtableOfObject4 = new HashtableOfObject(simpleWordSet.elementSize);
                    hashtableOfObject3.put(cArr2, hashtableOfObject4);
                    hashtableOfObject2 = hashtableOfObject4;
                }
                for (char[] cArr3 : simpleWordSet.words) {
                    if (cArr3 != null) {
                        Object obj = hashtableOfObject2.get(cArr3);
                        if (obj == null) {
                            hashtableOfObject2.putUnsafely(cArr3, new int[]{i10});
                        } else if (obj instanceof IntList) {
                            ((IntList) obj).add(i10);
                        } else {
                            IntList intList = new IntList((int[]) obj);
                            intList.add(i10);
                            hashtableOfObject2.put(cArr3, intList);
                        }
                    }
                }
            }
        }
    }

    private void initializeFrom(DiskIndex diskIndex, File file) throws IOException {
        if (!file.exists() || file.delete()) {
            if (!file.createNewFile()) {
                if (DEBUG) {
                    System.out.println("initializeFrom - Failed to create temp index " + ((Object) this.indexLocation));
                }
                throw new IOException("Failed to create temp index " + ((Object) this.indexLocation));
            }
        } else if (DEBUG) {
            System.out.println("initializeFrom - Failed to delete temp index " + ((Object) this.indexLocation));
        }
        HashtableOfIntValues hashtableOfIntValues = diskIndex.categoryOffsets;
        int i10 = hashtableOfIntValues == null ? 8 : hashtableOfIntValues.elementSize;
        this.categoryOffsets = new HashtableOfIntValues(i10);
        this.categoryEnds = new HashtableOfIntValues(i10);
        this.categoryTables = new HashtableOfObject(i10);
        this.separator = diskIndex.separator;
    }

    private void mergeCategories(DiskIndex diskIndex, int[] iArr, FileOutputStream fileOutputStream) throws IOException {
        for (char[] cArr : diskIndex.categoryOffsets.keyTable) {
            if (cArr != null && !this.categoryTables.containsKey(cArr)) {
                this.categoryTables.put(cArr, null);
            }
        }
        for (char[] cArr2 : this.categoryTables.keyTable) {
            if (cArr2 != null) {
                mergeCategory(cArr2, diskIndex, iArr, fileOutputStream);
            }
        }
        this.categoryTables = null;
    }

    private void mergeCategory(char[] cArr, DiskIndex diskIndex, int[] iArr, FileOutputStream fileOutputStream) throws IOException {
        int[] iArr2;
        IntList intList;
        HashtableOfObject hashtableOfObject = (HashtableOfObject) this.categoryTables.get(cArr);
        if (hashtableOfObject == null) {
            hashtableOfObject = new HashtableOfObject(3);
        }
        HashtableOfObject readCategoryTable = diskIndex.readCategoryTable(cArr, true);
        if (readCategoryTable != null) {
            char[][] cArr2 = readCategoryTable.keyTable;
            Object[] objArr = readCategoryTable.valueTable;
            int length = cArr2.length;
            int i10 = 0;
            int i11 = 0;
            while (i11 < length) {
                char[] cArr3 = cArr2[i11];
                if (cArr3 != null) {
                    int[] iArr3 = (int[]) objArr[i11];
                    int length2 = iArr3.length;
                    int[] iArr4 = new int[length2];
                    int i12 = i10;
                    int i13 = i12;
                    while (i12 < length2) {
                        int i14 = iArr[iArr3[i12]];
                        if (i14 > -1) {
                            iArr4[i13] = i14;
                            i13++;
                        }
                        i12++;
                        i10 = 0;
                    }
                    if (i13 >= length2) {
                        iArr2 = iArr4;
                    } else if (i13 != 0) {
                        int[] iArr5 = new int[i13];
                        System.arraycopy(iArr4, i10, iArr5, i10, i13);
                        iArr2 = iArr5;
                    }
                    Object obj = hashtableOfObject.get(cArr3);
                    if (obj == null) {
                        hashtableOfObject.putUnsafely(cArr3, iArr2);
                    } else {
                        if (obj instanceof IntList) {
                            intList = (IntList) obj;
                        } else {
                            IntList intList2 = new IntList((int[]) obj);
                            hashtableOfObject.put(cArr3, intList2);
                            intList = intList2;
                        }
                        for (int i15 = i10; i15 < i13; i15++) {
                            intList.add(iArr2[i15]);
                        }
                    }
                }
                i11++;
                i10 = 0;
            }
            diskIndex.categoryTables.put(cArr, null);
        }
        writeCategoryTable(cArr, hashtableOfObject, fileOutputStream);
    }

    private synchronized String[] readAllDocumentNames() throws IOException {
        if (this.numberOfChunks <= 0) {
            return CharOperation.NO_STRINGS;
        }
        InputStream inputStream = this.indexLocation.getInputStream();
        try {
            int i10 = 0;
            inputStream.skip(this.chunkOffsets[0]);
            byte[] bArr = new byte[BUFFER_READ_SIZE];
            this.streamBuffer = bArr;
            this.bufferIndex = 0;
            this.bufferEnd = inputStream.read(bArr, 0, bArr.length);
            int i11 = this.numberOfChunks - 1;
            String[] strArr = new String[(i11 * 100) + this.sizeOfLastChunk];
            while (i10 < this.numberOfChunks) {
                readChunk(strArr, inputStream, i10 * 100, i10 < i11 ? 100 : this.sizeOfLastChunk);
                i10++;
            }
            return strArr;
        } finally {
            inputStream.close();
            this.indexLocation.close();
            this.streamBuffer = null;
        }
    }

    private synchronized HashtableOfObject readCategoryTable(char[] cArr, boolean z10) throws IOException {
        try {
            int i10 = this.categoryOffsets.get(cArr);
            if (i10 == Integer.MIN_VALUE) {
                return null;
            }
            HashtableOfObject hashtableOfObject = this.categoryTables;
            int i11 = 0;
            if (hashtableOfObject == null) {
                this.categoryTables = new HashtableOfObject(3);
            } else {
                HashtableOfObject hashtableOfObject2 = (HashtableOfObject) hashtableOfObject.get(cArr);
                if (hashtableOfObject2 != null) {
                    if (z10) {
                        Object[] objArr = hashtableOfObject2.valueTable;
                        int length = objArr.length;
                        while (i11 < length) {
                            Object obj = objArr[i11];
                            if (obj instanceof Integer) {
                                objArr[i11] = readDocumentNumbers(obj);
                            }
                            i11++;
                        }
                    }
                    return hashtableOfObject2;
                }
            }
            InputStream inputStream = this.indexLocation.getInputStream();
            this.streamBuffer = new byte[BUFFER_READ_SIZE];
            try {
                try {
                    inputStream.skip(i10);
                    this.bufferIndex = 0;
                    byte[] bArr = this.streamBuffer;
                    this.bufferEnd = inputStream.read(bArr, 0, bArr.length);
                    int readStreamInt = readStreamInt(inputStream);
                    if (readStreamInt < 0) {
                        try {
                            PrintStream printStream = System.err;
                            printStream.println("-------------------- DEBUG --------------------");
                            printStream.println("file = " + ((Object) this.indexLocation));
                            printStream.println("offset = " + i10);
                            printStream.println("size = " + readStreamInt);
                            printStream.println("--------------------   END   --------------------");
                        } catch (OutOfMemoryError e10) {
                            e10.printStackTrace();
                            PrintStream printStream2 = System.err;
                            printStream2.println("-------------------- DEBUG --------------------");
                            printStream2.println("file = " + ((Object) this.indexLocation));
                            printStream2.println("offset = " + i10);
                            printStream2.println("size = " + readStreamInt);
                            printStream2.println("--------------------   END   --------------------");
                            throw e10;
                        }
                    }
                    HashtableOfObject hashtableOfObject3 = new HashtableOfObject(readStreamInt);
                    int i12 = -1;
                    char[][] cArr2 = null;
                    int i13 = 0;
                    for (int i14 = 0; i14 < readStreamInt; i14++) {
                        char[] readStreamChars = readStreamChars(inputStream);
                        int readStreamInt2 = readStreamInt(inputStream);
                        if (readStreamInt2 <= 0) {
                            hashtableOfObject3.putUnsafely(readStreamChars, new int[]{-readStreamInt2});
                        } else if (readStreamInt2 < 256) {
                            hashtableOfObject3.putUnsafely(readStreamChars, readStreamDocumentArray(inputStream, readStreamInt2));
                        } else {
                            int readStreamInt3 = readStreamInt(inputStream);
                            if (z10) {
                                if (cArr2 == null) {
                                    cArr2 = new char[readStreamInt];
                                }
                                if (i13 == 0) {
                                    i12 = readStreamInt3;
                                }
                                cArr2[i13] = readStreamChars;
                                i13++;
                            }
                            hashtableOfObject3.putUnsafely(readStreamChars, Integer.valueOf(readStreamInt3));
                        }
                    }
                    this.categoryTables.put(INTERNED_CATEGORY_NAMES.get(cArr), hashtableOfObject3);
                    if (hashtableOfObject3.elementSize >= 20000) {
                        cArr = null;
                    }
                    this.cachedCategoryName = cArr;
                    if (cArr2 != null && i13 > 0) {
                        inputStream = this.indexLocation.getInputStream();
                        try {
                            try {
                                inputStream.skip(i12);
                                this.bufferIndex = 0;
                                byte[] bArr2 = this.streamBuffer;
                                this.bufferEnd = inputStream.read(bArr2, 0, bArr2.length);
                                while (i11 < i13) {
                                    hashtableOfObject3.put(cArr2[i11], readStreamDocumentArray(inputStream, readStreamInt(inputStream)));
                                    i11++;
                                }
                            } catch (IOException e11) {
                                this.streamBuffer = null;
                                throw e11;
                            }
                        } finally {
                            inputStream.close();
                            this.indexLocation.close();
                        }
                    }
                    this.streamBuffer = null;
                    return hashtableOfObject3;
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (IOException e12) {
                this.streamBuffer = null;
                throw e12;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    private void readChunk(String[] strArr, InputStream inputStream, int i10, int i11) throws IOException {
        String str = new String(readStreamChars(inputStream));
        int i12 = i10 + 1;
        strArr[i10] = str;
        int i13 = 1;
        while (i13 < i11) {
            if (inputStream != null && this.bufferIndex + 2 >= this.bufferEnd) {
                readStreamBuffer(inputStream);
            }
            byte[] bArr = this.streamBuffer;
            int i14 = this.bufferIndex;
            int i15 = i14 + 1;
            this.bufferIndex = i15;
            int i16 = bArr[i14] & 255;
            this.bufferIndex = i14 + 2;
            int i17 = bArr[i15] & 255;
            String str2 = new String(readStreamChars(inputStream));
            if (i16 > 0) {
                if (i17 > 0) {
                    int length = str.length();
                    str = String.valueOf(str.substring(0, i16)) + str2 + str.substring(length - i17, length);
                } else {
                    str = String.valueOf(str.substring(0, i16)) + str2;
                }
            } else if (i17 > 0) {
                int length2 = str.length();
                str = str2 + str.substring(length2 - i17, length2);
            } else {
                str = str2;
            }
            strArr[i12] = str;
            i13++;
            i12++;
        }
    }

    private void readHeaderInfo(InputStream inputStream) throws IOException {
        this.numberOfChunks = readStreamInt(inputStream);
        byte[] bArr = this.streamBuffer;
        int i10 = this.bufferIndex;
        int i11 = i10 + 1;
        this.bufferIndex = i11;
        this.sizeOfLastChunk = bArr[i10] & 255;
        int i12 = i10 + 2;
        this.bufferIndex = i12;
        this.documentReferenceSize = bArr[i11] & 255;
        this.bufferIndex = i10 + 3;
        this.separator = (char) (bArr[i12] & 255);
        long length = this.indexLocation.length();
        if (length != -1 && this.numberOfChunks > length) {
            if (DEBUG) {
                System.out.println("Index file is corrupted " + ((Object) this.indexLocation));
            }
            throw new IOException("Index file is corrupted " + ((Object) this.indexLocation));
        }
        this.chunkOffsets = new int[this.numberOfChunks];
        int i13 = 0;
        for (int i14 = 0; i14 < this.numberOfChunks; i14++) {
            this.chunkOffsets[i14] = readStreamInt(inputStream);
        }
        this.startOfCategoryTables = readStreamInt(inputStream);
        int readStreamInt = readStreamInt(inputStream);
        this.categoryOffsets = new HashtableOfIntValues(readStreamInt);
        this.categoryEnds = new HashtableOfIntValues(readStreamInt);
        if (length != -1 && readStreamInt > length) {
            if (DEBUG) {
                System.out.println("Index file is corrupted " + ((Object) this.indexLocation));
            }
            throw new IOException("Index file is corrupted " + ((Object) this.indexLocation));
        }
        char[] cArr = null;
        while (i13 < readStreamInt) {
            char[] cArr2 = INTERNED_CATEGORY_NAMES.get(readStreamChars(inputStream));
            int readStreamInt2 = readStreamInt(inputStream);
            this.categoryOffsets.put(cArr2, readStreamInt2);
            if (cArr != null) {
                this.categoryEnds.put(cArr, readStreamInt2);
            }
            i13++;
            cArr = cArr2;
        }
        if (cArr != null) {
            this.categoryEnds.put(cArr, this.headerInfoOffset);
        }
        this.categoryTables = new HashtableOfObject(3);
    }

    private void readStreamBuffer(InputStream inputStream) throws IOException {
        if (this.bufferEnd >= this.streamBuffer.length || inputStream.available() != 0) {
            int i10 = this.bufferEnd;
            int i11 = this.bufferIndex;
            int i12 = i10 - i11;
            if (i12 > 0) {
                byte[] bArr = this.streamBuffer;
                System.arraycopy(bArr, i11, bArr, 0, i12);
            }
            this.bufferEnd = i12 + inputStream.read(this.streamBuffer, i12, this.bufferIndex);
            this.bufferIndex = 0;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x005b. Please report as an issue. */
    private char[] readStreamChars(InputStream inputStream) throws IOException {
        int i10;
        if (inputStream != null && this.bufferIndex + 2 >= this.bufferEnd) {
            readStreamBuffer(inputStream);
        }
        byte[] bArr = this.streamBuffer;
        int i11 = this.bufferIndex;
        int i12 = i11 + 1;
        this.bufferIndex = i12;
        int i13 = (bArr[i11] & 255) << 8;
        this.bufferIndex = i11 + 2;
        int i14 = i13 + (bArr[i12] & 255);
        char[] cArr = new char[i14];
        int i15 = 0;
        while (i15 < i14) {
            int i16 = this.bufferEnd;
            int i17 = ((i16 - this.bufferIndex) / 3) + i15;
            if (i17 > i14 || inputStream == null || (i16 != this.streamBuffer.length && inputStream.available() == 0)) {
                i17 = i14;
            }
            while (i15 < i17) {
                byte[] bArr2 = this.streamBuffer;
                int i18 = this.bufferIndex;
                int i19 = i18 + 1;
                this.bufferIndex = i19;
                byte b10 = bArr2[i18];
                switch (b10 & 240) {
                    case 0:
                    case 16:
                    case 32:
                    case 48:
                    case 64:
                    case 80:
                    case 96:
                    case 112:
                        cArr[i15] = (char) b10;
                        i15++;
                    case 192:
                    case 208:
                        this.bufferIndex = i18 + 2;
                        char c10 = (char) bArr2[i19];
                        if ((c10 & '\u00c0') != 128) {
                            throw new UTFDataFormatException();
                        }
                        i10 = i15 + 1;
                        cArr[i15] = (char) ((c10 & '?') | ((char) ((b10 & 31) << 6)));
                        i15 = i10;
                    case 224:
                        int i20 = i18 + 2;
                        this.bufferIndex = i20;
                        char c11 = (char) bArr2[i19];
                        this.bufferIndex = i18 + 3;
                        char c12 = (char) bArr2[i20];
                        if ((c11 & c12 & 192) != 128) {
                            throw new UTFDataFormatException();
                        }
                        i10 = i15 + 1;
                        cArr[i15] = (char) ((c12 & '?') | ((char) (((char) ((b10 & 15) << 12)) | ((c11 & '?') << 6))));
                        i15 = i10;
                    default:
                        throw new UTFDataFormatException();
                }
            }
            if (i15 < i14 && inputStream != null) {
                readStreamBuffer(inputStream);
            }
        }
        return cArr;
    }

    private int[] readStreamDocumentArray(InputStream inputStream, int i10) throws IOException {
        int[] iArr = new int[i10];
        if (i10 == 0) {
            return iArr;
        }
        int i11 = this.documentReferenceSize;
        int i12 = 0;
        if (i11 == 1) {
            while (i12 < i10) {
                int i13 = (this.bufferEnd + i12) - this.bufferIndex;
                if (i13 > i10) {
                    i13 = i10;
                }
                while (i12 < i13) {
                    byte[] bArr = this.streamBuffer;
                    int i14 = this.bufferIndex;
                    this.bufferIndex = i14 + 1;
                    iArr[i12] = bArr[i14] & 255;
                    i12++;
                }
                if (i12 < i10 && inputStream != null) {
                    readStreamBuffer(inputStream);
                }
            }
        } else if (i11 != 2) {
            while (i12 < i10) {
                iArr[i12] = readStreamInt(inputStream);
                i12++;
            }
        } else {
            while (i12 < i10) {
                int i15 = ((this.bufferEnd - this.bufferIndex) / 2) + i12;
                if (i15 > i10) {
                    i15 = i10;
                }
                while (i12 < i15) {
                    byte[] bArr2 = this.streamBuffer;
                    int i16 = this.bufferIndex;
                    int i17 = i16 + 1;
                    this.bufferIndex = i17;
                    int i18 = (bArr2[i16] & 255) << 8;
                    this.bufferIndex = i16 + 2;
                    iArr[i12] = i18 + (bArr2[i17] & 255);
                    i12++;
                }
                if (i12 < i10 && inputStream != null) {
                    readStreamBuffer(inputStream);
                }
            }
        }
        return iArr;
    }

    private int readStreamInt(InputStream inputStream) throws IOException {
        if (this.bufferIndex + 4 >= this.bufferEnd) {
            readStreamBuffer(inputStream);
        }
        byte[] bArr = this.streamBuffer;
        int i10 = this.bufferIndex;
        int i11 = i10 + 1;
        this.bufferIndex = i11;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = i10 + 2;
        this.bufferIndex = i13;
        int i14 = i12 + ((bArr[i11] & 255) << 16);
        int i15 = i10 + 3;
        this.bufferIndex = i15;
        int i16 = i14 + ((bArr[i13] & 255) << 8);
        this.bufferIndex = i10 + 4;
        return i16 + (bArr[i15] & 255);
    }

    private void writeAllDocumentNames(String[] strArr, FileOutputStream fileOutputStream) throws IOException {
        int i10;
        if (strArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.streamBuffer = new byte[2048];
        int i11 = 0;
        this.bufferIndex = 0;
        this.streamEnd = 0;
        writeStreamChars(fileOutputStream, SIGNATURE_CHARS);
        this.headerInfoOffset = this.streamEnd;
        writeStreamInt(fileOutputStream, -1);
        int length = strArr.length;
        int i12 = length / 100;
        this.numberOfChunks = i12 + 1;
        int i13 = length % 100;
        this.sizeOfLastChunk = i13;
        int i14 = 100;
        if (i13 == 0) {
            this.numberOfChunks = i12;
            this.sizeOfLastChunk = 100;
        }
        int i15 = 1;
        this.documentReferenceSize = length <= 127 ? 1 : length <= 32767 ? 2 : 4;
        int i16 = this.numberOfChunks;
        this.chunkOffsets = new int[i16];
        int i17 = i16 - 1;
        int i18 = 0;
        while (i18 < this.numberOfChunks) {
            this.chunkOffsets[i18] = this.streamEnd;
            int i19 = i18 == i17 ? this.sizeOfLastChunk : i14;
            int i20 = i18 * 100;
            String str = strArr[i20];
            writeStreamChars(fileOutputStream, str.toCharArray());
            int i21 = i15;
            while (i21 < i19) {
                String str2 = strArr[i20 + i21];
                int length2 = str.length();
                int length3 = str2.length();
                int i22 = length2 < length3 ? length2 : length3;
                while (str.charAt(i11) == str2.charAt(i11) && i22 != (i11 = i11 + 1)) {
                }
                int i23 = i11 > 255 ? 255 : i11;
                int i24 = 0;
                do {
                    length2--;
                    length3--;
                    if (str.charAt(length2) != str2.charAt(length3)) {
                        break;
                    }
                    i24++;
                    if (length3 == i23) {
                        break;
                    }
                } while (length2 != 0);
                int i25 = i24 <= 255 ? i24 : 255;
                int i26 = this.bufferIndex;
                if (i26 + 2 >= 2048) {
                    i10 = 0;
                    fileOutputStream.write(this.streamBuffer, 0, i26);
                    this.bufferIndex = 0;
                } else {
                    i10 = 0;
                }
                byte[] bArr = this.streamBuffer;
                int i27 = this.bufferIndex;
                int i28 = i27 + 1;
                this.bufferIndex = i28;
                bArr[i27] = (byte) i23;
                this.bufferIndex = i27 + 2;
                bArr[i28] = (byte) i25;
                this.streamEnd += 2;
                int length4 = str2.length() - i25;
                writeStreamChars(fileOutputStream, i23 < length4 ? CharOperation.subarray(str2.toCharArray(), i23, length4) : CharOperation.NO_CHAR);
                i21++;
                i11 = i10;
                str = str2;
                i14 = 100;
                i15 = 1;
            }
            i18++;
        }
        this.startOfCategoryTables = this.streamEnd + i15;
    }

    private void writeCategories(FileOutputStream fileOutputStream) throws IOException {
        HashtableOfObject hashtableOfObject = this.categoryTables;
        char[][] cArr = hashtableOfObject.keyTable;
        Object[] objArr = hashtableOfObject.valueTable;
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            char[] cArr2 = cArr[i10];
            if (cArr2 != null) {
                writeCategoryTable(cArr2, (HashtableOfObject) objArr[i10], fileOutputStream);
            }
        }
        this.categoryTables = null;
    }

    private void writeCategoryTable(char[] cArr, HashtableOfObject hashtableOfObject, FileOutputStream fileOutputStream) throws IOException {
        Object[] objArr = hashtableOfObject.valueTable;
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = objArr[i10];
            if (obj != null) {
                if (obj instanceof IntList) {
                    obj = ((IntList) obj).asArray();
                    objArr[i10] = obj;
                }
                int[] iArr = (int[]) obj;
                if (iArr.length >= 256) {
                    objArr[i10] = Integer.valueOf(this.streamEnd);
                    writeDocumentNumbers(iArr, fileOutputStream);
                }
            }
        }
        this.categoryOffsets.put(cArr, this.streamEnd);
        this.categoryTables.put(cArr, null);
        writeStreamInt(fileOutputStream, hashtableOfObject.elementSize);
        char[][] cArr2 = hashtableOfObject.keyTable;
        int length2 = cArr2.length;
        for (int i11 = 0; i11 < length2; i11++) {
            Object obj2 = objArr[i11];
            if (obj2 != null) {
                writeStreamChars(fileOutputStream, cArr2[i11]);
                if (obj2 instanceof int[]) {
                    int[] iArr2 = (int[]) obj2;
                    if (iArr2.length == 1) {
                        writeStreamInt(fileOutputStream, -iArr2[0]);
                    } else {
                        writeDocumentNumbers(iArr2, fileOutputStream);
                    }
                } else {
                    writeStreamInt(fileOutputStream, 256);
                    writeStreamInt(fileOutputStream, ((Integer) obj2).intValue());
                }
            }
        }
    }

    private void writeDocumentNumbers(int[] iArr, FileOutputStream fileOutputStream) throws IOException {
        int length = iArr.length;
        writeStreamInt(fileOutputStream, length);
        Util.sort(iArr);
        int i10 = this.documentReferenceSize;
        if (i10 == 1) {
            int i11 = 0;
            while (true) {
                int i12 = this.bufferIndex;
                if ((i12 + length) - i11 < 2048) {
                    break;
                }
                int i13 = 2048 - i12;
                int i14 = 0;
                while (i14 < i13) {
                    byte[] bArr = this.streamBuffer;
                    int i15 = this.bufferIndex;
                    this.bufferIndex = i15 + 1;
                    bArr[i15] = (byte) iArr[i11];
                    i14++;
                    i11++;
                }
                fileOutputStream.write(this.streamBuffer, 0, this.bufferIndex);
                this.bufferIndex = 0;
            }
            while (i11 < length) {
                byte[] bArr2 = this.streamBuffer;
                int i16 = this.bufferIndex;
                this.bufferIndex = i16 + 1;
                bArr2[i16] = (byte) iArr[i11];
                i11++;
            }
            this.streamEnd += length;
            return;
        }
        if (i10 != 2) {
            for (int i17 : iArr) {
                writeStreamInt(fileOutputStream, i17);
            }
            return;
        }
        int i18 = 0;
        while (true) {
            int i19 = this.bufferIndex;
            if (((length - i18) * 2) + i19 < 2048) {
                break;
            }
            int i20 = (2048 - i19) / 2;
            for (int i21 = 0; i21 < i20; i21++) {
                byte[] bArr3 = this.streamBuffer;
                int i22 = this.bufferIndex;
                int i23 = i22 + 1;
                this.bufferIndex = i23;
                int i24 = iArr[i18];
                bArr3[i22] = (byte) (i24 >> 8);
                this.bufferIndex = i22 + 2;
                i18++;
                bArr3[i23] = (byte) i24;
            }
            fileOutputStream.write(this.streamBuffer, 0, this.bufferIndex);
            this.bufferIndex = 0;
        }
        while (i18 < length) {
            byte[] bArr4 = this.streamBuffer;
            int i25 = this.bufferIndex;
            int i26 = i25 + 1;
            this.bufferIndex = i26;
            int i27 = iArr[i18];
            bArr4[i25] = (byte) (i27 >> 8);
            this.bufferIndex = i25 + 2;
            i18++;
            bArr4[i26] = (byte) i27;
        }
        this.streamEnd += length * 2;
    }

    private void writeHeaderInfo(FileOutputStream fileOutputStream) throws IOException {
        writeStreamInt(fileOutputStream, this.numberOfChunks);
        int i10 = this.bufferIndex;
        if (i10 + 3 >= 2048) {
            fileOutputStream.write(this.streamBuffer, 0, i10);
            this.bufferIndex = 0;
        }
        byte[] bArr = this.streamBuffer;
        int i11 = this.bufferIndex;
        int i12 = i11 + 1;
        this.bufferIndex = i12;
        bArr[i11] = (byte) this.sizeOfLastChunk;
        int i13 = i11 + 2;
        this.bufferIndex = i13;
        bArr[i12] = (byte) this.documentReferenceSize;
        this.bufferIndex = i11 + 3;
        bArr[i13] = (byte) this.separator;
        this.streamEnd += 3;
        for (int i14 = 0; i14 < this.numberOfChunks; i14++) {
            writeStreamInt(fileOutputStream, this.chunkOffsets[i14]);
        }
        writeStreamInt(fileOutputStream, this.startOfCategoryTables);
        writeStreamInt(fileOutputStream, this.categoryOffsets.elementSize);
        HashtableOfIntValues hashtableOfIntValues = this.categoryOffsets;
        char[][] cArr = hashtableOfIntValues.keyTable;
        int[] iArr = hashtableOfIntValues.valueTable;
        int length = cArr.length;
        for (int i15 = 0; i15 < length; i15++) {
            char[] cArr2 = cArr[i15];
            if (cArr2 != null) {
                writeStreamChars(fileOutputStream, cArr2);
                writeStreamInt(fileOutputStream, iArr[i15]);
            }
        }
        int i16 = this.bufferIndex;
        if (i16 > 0) {
            fileOutputStream.write(this.streamBuffer, 0, i16);
            this.bufferIndex = 0;
        }
    }

    private void writeOffsetToHeader(int i10) throws IOException {
        if (i10 > 0) {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.indexLocation.getIndexFile(), "rw");
            try {
                randomAccessFile.seek(this.headerInfoOffset);
                randomAccessFile.writeInt(i10);
                this.headerInfoOffset = i10;
            } finally {
                randomAccessFile.close();
            }
        }
    }

    private void writeStreamChars(FileOutputStream fileOutputStream, char[] cArr) throws IOException {
        int i10 = this.bufferIndex;
        if (i10 + 2 >= 2048) {
            fileOutputStream.write(this.streamBuffer, 0, i10);
            this.bufferIndex = 0;
        }
        int length = cArr.length;
        byte[] bArr = this.streamBuffer;
        int i11 = this.bufferIndex;
        int i12 = i11 + 1;
        this.bufferIndex = i12;
        bArr[i11] = (byte) ((length >>> 8) & 255);
        int i13 = i11 + 2;
        this.bufferIndex = i13;
        bArr[i12] = (byte) (length & 255);
        this.streamEnd += 2;
        int i14 = length * 3;
        if (i14 <= 2048) {
            if (i14 + i13 > 2048) {
                fileOutputStream.write(bArr, 0, i13);
                this.bufferIndex = 0;
            }
            writeStreamChars(fileOutputStream, cArr, 0, length);
            return;
        }
        int i15 = 0;
        while (i15 < length) {
            fileOutputStream.write(this.streamBuffer, 0, this.bufferIndex);
            this.bufferIndex = 0;
            int i16 = length - i15;
            if (682 < i16) {
                i16 = 682;
            }
            int i17 = i16 + i15;
            writeStreamChars(fileOutputStream, cArr, i15, i17);
            i15 = i17;
        }
    }

    private void writeStreamInt(FileOutputStream fileOutputStream, int i10) throws IOException {
        int i11 = this.bufferIndex;
        if (i11 + 4 >= 2048) {
            fileOutputStream.write(this.streamBuffer, 0, i11);
            this.bufferIndex = 0;
        }
        byte[] bArr = this.streamBuffer;
        int i12 = this.bufferIndex;
        int i13 = i12 + 1;
        this.bufferIndex = i13;
        bArr[i12] = (byte) (i10 >> 24);
        int i14 = i12 + 2;
        this.bufferIndex = i14;
        bArr[i13] = (byte) (i10 >> 16);
        int i15 = i12 + 3;
        this.bufferIndex = i15;
        bArr[i14] = (byte) (i10 >> 8);
        this.bufferIndex = i12 + 4;
        bArr[i15] = (byte) i10;
        this.streamEnd += 4;
    }

    public SimpleSet addDocumentNames(String str, MemoryIndex memoryIndex) throws IOException {
        String[] readAllDocumentNames = readAllDocumentNames();
        SimpleSet simpleSet = new SimpleSet(readAllDocumentNames.length);
        int i10 = 0;
        if (str == null) {
            if (memoryIndex == null) {
                int length = readAllDocumentNames.length;
                while (i10 < length) {
                    simpleSet.add(readAllDocumentNames[i10]);
                    i10++;
                }
            } else {
                SimpleLookupTable simpleLookupTable = memoryIndex.docsToReferences;
                int length2 = readAllDocumentNames.length;
                while (i10 < length2) {
                    String str2 = readAllDocumentNames[i10];
                    if (!simpleLookupTable.containsKey(str2)) {
                        simpleSet.add(str2);
                    }
                    i10++;
                }
            }
        } else if (memoryIndex == null) {
            int length3 = readAllDocumentNames.length;
            for (int i11 = 0; i11 < length3; i11++) {
                if (readAllDocumentNames[i11].startsWith(str, 0)) {
                    simpleSet.add(readAllDocumentNames[i11]);
                }
            }
        } else {
            SimpleLookupTable simpleLookupTable2 = memoryIndex.docsToReferences;
            for (String str3 : readAllDocumentNames) {
                if (str3.startsWith(str, 0) && !simpleLookupTable2.containsKey(str3)) {
                    simpleSet.add(str3);
                }
            }
        }
        return simpleSet;
    }

    public HashtableOfObject addQueryResults(char[][] cArr, char[] cArr2, int i10, MemoryIndex memoryIndex) throws IOException {
        int i11;
        int i12;
        Object obj;
        int i13;
        int i14;
        int i15;
        int i16;
        Object[] objArr;
        int i17;
        HashtableOfObject hashtableOfObject = null;
        if (this.categoryOffsets == null) {
            return null;
        }
        if (cArr2 == null) {
            boolean z10 = false;
            for (char[] cArr3 : cArr) {
                HashtableOfObject readCategoryTable = readCategoryTable(cArr3, true);
                if (readCategoryTable != null) {
                    char[][] cArr4 = readCategoryTable.keyTable;
                    Object[] objArr2 = readCategoryTable.valueTable;
                    if (hashtableOfObject == null) {
                        hashtableOfObject = new HashtableOfObject(readCategoryTable.elementSize);
                    }
                    int length = cArr4.length;
                    int i18 = 0;
                    while (i18 < length) {
                        char[] cArr5 = cArr4[i18];
                        if (cArr5 != null) {
                            i17 = i18;
                            hashtableOfObject = addQueryResult(hashtableOfObject, cArr5, objArr2[i18], memoryIndex, z10);
                        } else {
                            i17 = i18;
                        }
                        i18 = i17 + 1;
                    }
                }
                z10 = hashtableOfObject != null;
            }
            if (hashtableOfObject != null && this.cachedChunks == null) {
                cacheDocumentNames();
            }
        } else if (i10 == 4) {
            Pattern compile = Pattern.compile(new String(cArr2));
            boolean z11 = false;
            for (char[] cArr6 : cArr) {
                HashtableOfObject readCategoryTable2 = readCategoryTable(cArr6, false);
                if (readCategoryTable2 != null) {
                    char[][] cArr7 = readCategoryTable2.keyTable;
                    Object[] objArr3 = readCategoryTable2.valueTable;
                    int length2 = cArr7.length;
                    int i19 = 0;
                    while (i19 < length2) {
                        char[] cArr8 = cArr7[i19];
                        if (cArr8 == null || !compile.matcher(new String(cArr8)).matches()) {
                            i11 = i19;
                            i12 = length2;
                        } else {
                            i11 = i19;
                            i12 = length2;
                            hashtableOfObject = addQueryResult(hashtableOfObject, cArr8, objArr3[i19], memoryIndex, z11);
                        }
                        i19 = i11 + 1;
                        length2 = i12;
                    }
                }
                z11 = hashtableOfObject != null;
            }
        } else if (i10 == 8) {
            boolean z12 = false;
            for (char[] cArr9 : cArr) {
                HashtableOfObject readCategoryTable3 = readCategoryTable(cArr9, false);
                if (readCategoryTable3 != null && (obj = readCategoryTable3.get(cArr2)) != null) {
                    hashtableOfObject = addQueryResult(hashtableOfObject, cArr2, obj, memoryIndex, z12);
                }
                z12 = hashtableOfObject != null;
            }
        } else if (i10 != 9) {
            boolean z13 = false;
            for (char[] cArr10 : cArr) {
                HashtableOfObject readCategoryTable4 = readCategoryTable(cArr10, false);
                if (readCategoryTable4 != null) {
                    char[][] cArr11 = readCategoryTable4.keyTable;
                    Object[] objArr4 = readCategoryTable4.valueTable;
                    int length3 = cArr11.length;
                    int i20 = 0;
                    while (i20 < length3) {
                        char[] cArr12 = cArr11[i20];
                        if (cArr12 == null || !Index.isMatch(cArr2, cArr12, i10)) {
                            i15 = i20;
                            i16 = length3;
                            objArr = objArr4;
                        } else {
                            i15 = i20;
                            i16 = length3;
                            objArr = objArr4;
                            hashtableOfObject = addQueryResult(hashtableOfObject, cArr12, objArr4[i20], memoryIndex, z13);
                        }
                        i20 = i15 + 1;
                        length3 = i16;
                        objArr4 = objArr;
                    }
                }
                z13 = hashtableOfObject != null;
            }
        } else {
            boolean z14 = false;
            for (char[] cArr13 : cArr) {
                HashtableOfObject readCategoryTable5 = readCategoryTable(cArr13, false);
                if (readCategoryTable5 != null) {
                    char[][] cArr14 = readCategoryTable5.keyTable;
                    Object[] objArr5 = readCategoryTable5.valueTable;
                    int length4 = cArr14.length;
                    int i21 = 0;
                    while (i21 < length4) {
                        char[] cArr15 = cArr14[i21];
                        if (cArr15 != null && cArr2[0] == cArr15[0] && CharOperation.prefixEquals(cArr2, cArr15)) {
                            i13 = i21;
                            i14 = length4;
                            hashtableOfObject = addQueryResult(hashtableOfObject, cArr15, objArr5[i21], memoryIndex, z14);
                        } else {
                            i13 = i21;
                            i14 = length4;
                        }
                        i21 = i13 + 1;
                        length4 = i14;
                    }
                }
                z14 = hashtableOfObject != null;
            }
        }
        return hashtableOfObject;
    }

    public void initialize(boolean z10) throws IOException {
        if (this.indexLocation.exists()) {
            if (z10) {
                InputStream inputStream = this.indexLocation.getInputStream();
                if (inputStream == null) {
                    throw new IOException("Failed to use the index file");
                }
                byte[] bArr = new byte[BUFFER_READ_SIZE];
                this.streamBuffer = bArr;
                this.bufferIndex = 0;
                this.bufferEnd = inputStream.read(bArr, 0, 128);
                try {
                    if (!CharOperation.equals(readStreamChars(inputStream), SIGNATURE_CHARS)) {
                        throw new IOException(Messages.exception_wrongFormat);
                    }
                    int readStreamInt = readStreamInt(inputStream);
                    this.headerInfoOffset = readStreamInt;
                    if (readStreamInt > 0) {
                        inputStream.skip(readStreamInt - this.bufferEnd);
                        this.bufferIndex = 0;
                        byte[] bArr2 = this.streamBuffer;
                        this.bufferEnd = inputStream.read(bArr2, 0, bArr2.length);
                        readHeaderInfo(inputStream);
                    }
                    return;
                } finally {
                    inputStream.close();
                    this.indexLocation.close();
                }
            }
            if (!this.indexLocation.delete()) {
                if (DEBUG) {
                    System.out.println("initialize - Failed to delete index " + ((Object) this.indexLocation));
                }
                throw new IOException("Failed to delete index " + ((Object) this.indexLocation));
            }
        }
        if (!this.indexLocation.createNewFile()) {
            if (DEBUG) {
                System.out.println("initialize - Failed to create new index " + ((Object) this.indexLocation));
            }
            throw new IOException("Failed to create new index " + ((Object) this.indexLocation));
        }
        FileOutputStream fileOutputStream = new FileOutputStream(this.indexLocation.getIndexFile(), false);
        try {
            this.streamBuffer = new byte[BUFFER_READ_SIZE];
            this.bufferIndex = 0;
            writeStreamChars(fileOutputStream, SIGNATURE_CHARS);
            writeStreamInt(fileOutputStream, -1);
            int i10 = this.bufferIndex;
            if (i10 > 0) {
                fileOutputStream.write(this.streamBuffer, 0, i10);
                this.bufferIndex = 0;
            }
        } finally {
            fileOutputStream.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DiskIndex mergeWith(MemoryIndex memoryIndex) throws IOException {
        String str;
        boolean z10;
        boolean z11;
        if (this.indexLocation == null) {
            throw new IOException("Pre-built index file not writeable");
        }
        String[] readAllDocumentNames = readAllDocumentNames();
        int length = readAllDocumentNames.length;
        int[] iArr = new int[length];
        SimpleLookupTable simpleLookupTable = new SimpleLookupTable(3);
        String[] computeDocumentNames = computeDocumentNames(readAllDocumentNames, iArr, simpleLookupTable, memoryIndex);
        if (computeDocumentNames.length == 0) {
            if (length == 0) {
                return this;
            }
            DiskIndex diskIndex = new DiskIndex(this.indexLocation);
            diskIndex.initialize(false);
            return diskIndex;
        }
        File indexFile = this.indexLocation.getIndexFile();
        String path = indexFile.getPath();
        if (path.endsWith(TMP_EXT)) {
            str = path.substring(0, path.length() - 4);
            z10 = true;
        } else {
            str = path + TMP_EXT;
            z10 = false;
        }
        DiskIndex diskIndex2 = new DiskIndex(new FileIndexLocation(new File(str)));
        File indexFile2 = diskIndex2.indexLocation.getIndexFile();
        try {
            diskIndex2.initializeFrom(this, indexFile2);
            FileOutputStream fileOutputStream = new FileOutputStream(indexFile2, false);
            try {
                diskIndex2.writeAllDocumentNames(computeDocumentNames, fileOutputStream);
                if (simpleLookupTable.elementSize > 0) {
                    Object[] objArr = simpleLookupTable.keyTable;
                    Object[] objArr2 = simpleLookupTable.valueTable;
                    int length2 = objArr.length;
                    for (int i10 = 0; i10 < length2; i10++) {
                        Object obj = objArr[i10];
                        if (obj != null) {
                            diskIndex2.copyQueryResults((HashtableOfObject) memoryIndex.docsToReferences.get(obj), ((Integer) objArr2[i10]).intValue());
                        }
                    }
                }
                if (length == 0) {
                    diskIndex2.writeCategories(fileOutputStream);
                } else {
                    diskIndex2.mergeCategories(this, iArr, fileOutputStream);
                }
                int i11 = diskIndex2.streamEnd;
                diskIndex2.writeHeaderInfo(fileOutputStream);
                fileOutputStream.close();
                this.streamBuffer = null;
                diskIndex2.writeOffsetToHeader(i11);
                if (indexFile.exists() && !indexFile.delete()) {
                    if (DEBUG) {
                        System.out.println("mergeWith - Failed to delete " + ((Object) this.indexLocation));
                    }
                    throw new IOException("Failed to delete index file " + ((Object) this.indexLocation));
                }
                if (!z10 && !indexFile2.renameTo(indexFile)) {
                    try {
                        Thread.sleep(2L);
                    } catch (InterruptedException unused) {
                    }
                    if (!indexFile2.renameTo(indexFile)) {
                        if (DEBUG) {
                            System.out.println("mergeWith - Failed to rename " + ((Object) this.indexLocation));
                        }
                        z11 = true;
                        if (!z11) {
                            diskIndex2.indexLocation = this.indexLocation;
                        }
                        return diskIndex2;
                    }
                }
                z11 = z10;
                if (!z11) {
                }
                return diskIndex2;
            } catch (Throwable th2) {
                fileOutputStream.close();
                this.streamBuffer = null;
                throw th2;
            }
        } catch (IOException e10) {
            if (indexFile2.exists() && !indexFile2.delete() && DEBUG) {
                System.out.println("mergeWith - Failed to delete temp index " + ((Object) diskIndex2.indexLocation));
            }
            throw e10;
        }
    }

    public synchronized String readDocumentName(int i10) throws IOException {
        int i11;
        String[] strArr;
        try {
            if (this.cachedChunks == null) {
                this.cachedChunks = new String[this.numberOfChunks];
            }
            i11 = i10 / 100;
            strArr = this.cachedChunks[i11];
        } catch (Throwable th2) {
            throw th2;
        }
        if (strArr == null) {
            boolean z10 = true;
            if (i11 != this.numberOfChunks - 1) {
                z10 = false;
            }
            int[] iArr = this.chunkOffsets;
            int i12 = iArr[i11];
            int i13 = (z10 ? this.startOfCategoryTables : iArr[i11 + 1]) - i12;
            if (i13 < 0) {
                throw new IllegalArgumentException();
            }
            this.streamBuffer = new byte[i13];
            this.bufferIndex = 0;
            InputStream inputStream = this.indexLocation.getInputStream();
            try {
                try {
                    inputStream.skip(i12);
                    if (inputStream.read(this.streamBuffer, 0, i13) != i13) {
                        throw new IOException();
                    }
                    int i14 = z10 ? this.sizeOfLastChunk : 100;
                    String[] strArr2 = new String[i14];
                    try {
                        readChunk(strArr2, null, 0, i14);
                        this.cachedChunks[i11] = strArr2;
                        strArr = strArr2;
                    } catch (IOException e10) {
                        this.streamBuffer = null;
                        throw e10;
                    }
                } catch (IOException e11) {
                    this.streamBuffer = null;
                    throw e11;
                }
            } finally {
                inputStream.close();
                this.indexLocation.close();
            }
            throw th2;
        }
        this.streamBuffer = null;
        return strArr[i10 - (i11 * 100)];
    }

    public synchronized int[] readDocumentNumbers(Object obj) throws IOException {
        if (obj instanceof int[]) {
            return (int[]) obj;
        }
        InputStream inputStream = this.indexLocation.getInputStream();
        try {
            inputStream.skip(((Integer) obj).intValue());
            byte[] bArr = new byte[BUFFER_READ_SIZE];
            this.streamBuffer = bArr;
            this.bufferIndex = 0;
            this.bufferEnd = inputStream.read(bArr, 0, bArr.length);
            return readStreamDocumentArray(inputStream, readStreamInt(inputStream));
        } finally {
            inputStream.close();
            this.indexLocation.close();
            this.streamBuffer = null;
        }
    }

    public synchronized void startQuery() {
        this.cacheUserCount++;
    }

    public synchronized void stopQuery() {
        try {
            int i10 = this.cacheUserCount - 1;
            this.cacheUserCount = i10;
            if (i10 < 0) {
                this.cacheUserCount = -1;
                this.cachedChunks = null;
                HashtableOfObject hashtableOfObject = this.categoryTables;
                if (hashtableOfObject != null) {
                    if (this.cachedCategoryName == null) {
                        this.categoryTables = null;
                    } else if (hashtableOfObject.elementSize > 1) {
                        HashtableOfObject hashtableOfObject2 = new HashtableOfObject(3);
                        char[] cArr = this.cachedCategoryName;
                        hashtableOfObject2.put(cArr, this.categoryTables.get(cArr));
                        this.categoryTables = hashtableOfObject2;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public DiskIndex(IndexLocation indexLocation) throws IOException {
        this();
        if (indexLocation != null) {
            this.indexLocation = indexLocation;
            return;
        }
        throw new IllegalArgumentException();
    }

    private void writeStreamChars(FileOutputStream fileOutputStream, char[] cArr, int i10, int i11) throws IOException {
        int i12 = this.bufferIndex;
        while (i10 < i11) {
            int i13 = i10 + 1;
            char c10 = cArr[i10];
            if ((c10 & C15883c.f126248N) == c10) {
                byte[] bArr = this.streamBuffer;
                int i14 = this.bufferIndex;
                this.bufferIndex = i14 + 1;
                bArr[i14] = (byte) c10;
            } else if ((c10 & '\u07ff') == c10) {
                byte b10 = (byte) (((byte) (((byte) (c10 >> 6)) & 31)) | Opcodes.OPC_checkcast);
                byte[] bArr2 = this.streamBuffer;
                int i15 = this.bufferIndex;
                int i16 = i15 + 1;
                this.bufferIndex = i16;
                bArr2[i15] = b10;
                this.bufferIndex = i15 + 2;
                bArr2[i16] = (byte) (((byte) (c10 & '?')) | 128);
            } else {
                byte[] bArr3 = this.streamBuffer;
                int i17 = this.bufferIndex;
                int i18 = i17 + 1;
                this.bufferIndex = i18;
                bArr3[i17] = (byte) (((byte) (((byte) (c10 >> '\f')) & 15)) | 224);
                byte b11 = (byte) (((byte) (((byte) (c10 >> 6)) & Opcodes.OPC_lstore_0)) | 128);
                int i19 = i17 + 2;
                this.bufferIndex = i19;
                bArr3[i18] = b11;
                this.bufferIndex = i17 + 3;
                bArr3[i19] = (byte) (((byte) (c10 & '?')) | 128);
            }
            i10 = i13;
        }
        this.streamEnd += this.bufferIndex - i12;
    }
}
