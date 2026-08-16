package com.android.apksig.internal.jar;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.jar.Attributes;

public class ManifestParser {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private byte[] mBufferedLine;
    private int mEndOffset;
    private final byte[] mManifest;
    private int mOffset;

    public static class Attribute {
        private final String mName;
        private final String mValue;

        public Attribute(String str, String str2) {
            this.mName = str;
            this.mValue = str2;
        }

        public String getName() {
            return this.mName;
        }

        public String getValue() {
            return this.mValue;
        }
    }

    public static class Section {
        private final List<Attribute> mAttributes;
        private final String mName;
        private final int mSizeBytes;
        private final int mStartOffset;

        public Section(int i10, int i11, List<Attribute> list) {
            String str;
            this.mStartOffset = i10;
            this.mSizeBytes = i11;
            if (!list.isEmpty()) {
                Attribute attribute = list.get(0);
                if ("Name".equalsIgnoreCase(attribute.getName())) {
                    str = attribute.getValue();
                    this.mName = str;
                    this.mAttributes = Collections.unmodifiableList(new ArrayList(list));
                }
            }
            str = null;
            this.mName = str;
            this.mAttributes = Collections.unmodifiableList(new ArrayList(list));
        }

        public String getAttributeValue(Attributes.Name name) {
            return getAttributeValue(name.toString());
        }

        public List<Attribute> getAttributes() {
            return this.mAttributes;
        }

        public String getName() {
            return this.mName;
        }

        public int getSizeBytes() {
            return this.mSizeBytes;
        }

        public int getStartOffset() {
            return this.mStartOffset;
        }

        public String getAttributeValue(String str) {
            for (Attribute attribute : this.mAttributes) {
                if (attribute.getName().equalsIgnoreCase(str)) {
                    return attribute.getValue();
                }
            }
            return null;
        }
    }

    public ManifestParser(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    private static byte[] concat(byte[] bArr, byte[] bArr2, int i10, int i11) {
        byte[] bArr3 = new byte[bArr.length + i11];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, i10, bArr3, bArr.length, i11);
        return bArr3;
    }

    private static Attribute parseAttr(String str) {
        int indexOf = str.indexOf(": ");
        return indexOf == -1 ? new Attribute(str, "") : new Attribute(str.substring(0, indexOf), str.substring(indexOf + 2));
    }

    private String readAttribute() {
        byte[] readAttributeBytes = readAttributeBytes();
        if (readAttributeBytes == null) {
            return null;
        }
        return readAttributeBytes.length == 0 ? "" : new String(readAttributeBytes, StandardCharsets.UTF_8);
    }

    private byte[] readAttributeBytes() {
        byte[] bArr = this.mBufferedLine;
        if (bArr != null && bArr.length == 0) {
            this.mBufferedLine = null;
            return EMPTY_BYTE_ARRAY;
        }
        byte[] readLine = readLine();
        if (readLine == null) {
            byte[] bArr2 = this.mBufferedLine;
            if (bArr2 == null) {
                return null;
            }
            this.mBufferedLine = null;
            return bArr2;
        }
        if (readLine.length == 0) {
            byte[] bArr3 = this.mBufferedLine;
            if (bArr3 == null) {
                return EMPTY_BYTE_ARRAY;
            }
            this.mBufferedLine = EMPTY_BYTE_ARRAY;
            return bArr3;
        }
        byte[] bArr4 = this.mBufferedLine;
        if (bArr4 != null) {
            if (readLine.length == 0 || readLine[0] != 32) {
                this.mBufferedLine = readLine;
                return bArr4;
            }
            this.mBufferedLine = null;
            readLine = concat(bArr4, readLine, 1, readLine.length - 1);
        }
        while (true) {
            byte[] readLine2 = readLine();
            if (readLine2 == null) {
                return readLine;
            }
            if (readLine2.length == 0) {
                this.mBufferedLine = EMPTY_BYTE_ARRAY;
                return readLine;
            }
            if (readLine2[0] != 32) {
                this.mBufferedLine = readLine2;
                return readLine;
            }
            readLine = concat(readLine, readLine2, 1, readLine2.length - 1);
        }
    }

    private byte[] readLine() {
        int i10;
        int i11;
        int i12 = this.mOffset;
        if (i12 >= this.mEndOffset) {
            return null;
        }
        int i13 = i12;
        while (true) {
            i10 = this.mEndOffset;
            if (i13 >= i10) {
                i13 = -1;
                i11 = -1;
                break;
            }
            byte[] bArr = this.mManifest;
            byte b10 = bArr[i13];
            if (b10 == 13) {
                i11 = i13 + 1;
                if (i11 < i10 && bArr[i11] == 10) {
                    i11 = i13 + 2;
                }
            } else {
                if (b10 == 10) {
                    i11 = i13 + 1;
                    break;
                }
                i13++;
            }
        }
        if (i13 == -1) {
            i13 = i10;
        } else {
            i10 = i11;
        }
        this.mOffset = i10;
        return i13 == i12 ? EMPTY_BYTE_ARRAY : Arrays.copyOfRange(this.mManifest, i12, i13);
    }

    public List<Section> readAllSections() {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Section readSection = readSection();
            if (readSection == null) {
                return arrayList;
            }
            arrayList.add(readSection);
        }
    }

    public Section readSection() {
        int i10;
        String readAttribute;
        do {
            i10 = this.mOffset;
            readAttribute = readAttribute();
            if (readAttribute == null) {
                return null;
            }
        } while (readAttribute.length() == 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(parseAttr(readAttribute));
        while (true) {
            String readAttribute2 = readAttribute();
            if (readAttribute2 == null || readAttribute2.length() == 0) {
                break;
            }
            arrayList.add(parseAttr(readAttribute2));
        }
        return new Section(i10, this.mOffset - i10, arrayList);
    }

    public ManifestParser(byte[] bArr, int i10, int i11) {
        this.mManifest = bArr;
        this.mOffset = i10;
        this.mEndOffset = i10 + i11;
    }
}
