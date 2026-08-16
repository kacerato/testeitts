package com.android.dx.cf.direct;

import com.android.dx.cf.attrib.AttSourceFile;
import com.android.dx.cf.cst.ConstantPoolParser;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.ClassFile;
import com.android.dx.cf.iface.FieldList;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.StdConstantPool;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.bumptech.glide.load.engine.GlideException;

public class DirectClassFile implements ClassFile {
    private static final int CLASS_FILE_MAGIC = -889275714;
    private static final int CLASS_FILE_MAX_MAJOR_VERSION = 52;
    private static final int CLASS_FILE_MAX_MINOR_VERSION = 0;
    private static final int CLASS_FILE_MIN_MAJOR_VERSION = 45;
    private int accessFlags;
    private AttributeFactory attributeFactory;
    private StdAttributeList attributes;
    private final ByteArray bytes;
    private FieldList fields;
    private final String filePath;
    private TypeList interfaces;
    private MethodList methods;
    private ParseObserver observer;
    private StdConstantPool pool;
    private final boolean strictParse;
    private CstType superClass;
    private CstType thisClass;

    public static class DcfTypeList implements TypeList {
        private final ByteArray bytes;
        private final StdConstantPool pool;
        private final int size;

        public DcfTypeList(ByteArray byteArray, int i10, int i11, StdConstantPool stdConstantPool, ParseObserver parseObserver) {
            if (i11 < 0) {
                throw new IllegalArgumentException("size < 0");
            }
            ByteArray slice = byteArray.slice(i10, (i11 * 2) + i10);
            this.bytes = slice;
            this.size = i11;
            this.pool = stdConstantPool;
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = i12 * 2;
                try {
                    CstType cstType = (CstType) stdConstantPool.get(slice.getUnsignedShort(i13));
                    if (parseObserver != null) {
                        parseObserver.parsed(slice, i13, 2, GlideException.a.f59088e + ((Object) cstType));
                    }
                } catch (ClassCastException e10) {
                    throw new RuntimeException("bogus class cpi", e10);
                }
            }
        }

        @Override
        public Type getType(int i10) {
            return ((CstType) this.pool.get(this.bytes.getUnsignedShort(i10 * 2))).getClassType();
        }

        @Override
        public int getWordCount() {
            return this.size;
        }

        @Override
        public boolean isMutable() {
            return false;
        }

        @Override
        public int size() {
            return this.size;
        }

        @Override
        public TypeList withAddedType(Type type) {
            throw new UnsupportedOperationException("unsupported");
        }
    }

    public DirectClassFile(ByteArray byteArray, String str, boolean z10) {
        if (byteArray == null) {
            throw new NullPointerException("bytes == null");
        }
        if (str != null) {
            this.filePath = str;
            this.bytes = byteArray;
            this.strictParse = z10;
            this.accessFlags = -1;
            return;
        }
        throw new NullPointerException("filePath == null");
    }

    private boolean isGoodMagic(int i10) {
        return i10 == -889275714;
    }

    private boolean isGoodVersion(int i10, int i11) {
        if (i10 >= 0) {
            return i11 == 52 ? i10 <= 0 : i11 < 52 && i11 >= 45;
        }
        return false;
    }

    private void parse() {
        try {
            parse0();
        } catch (ParseException e10) {
            e10.addContext("...while parsing " + this.filePath);
            throw e10;
        } catch (RuntimeException e11) {
            ParseException parseException = new ParseException(e11);
            parseException.addContext("...while parsing " + this.filePath);
            throw parseException;
        }
    }

    private void parse0() {
        if (this.bytes.size() < 10) {
            throw new ParseException("severely truncated class file");
        }
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(this.bytes, 0, 0, "begin classfile");
            this.observer.parsed(this.bytes, 0, 4, "magic: " + Hex.u4(getMagic0()));
            this.observer.parsed(this.bytes, 4, 2, "minor_version: " + Hex.u2(getMinorVersion0()));
            this.observer.parsed(this.bytes, 6, 2, "major_version: " + Hex.u2(getMajorVersion0()));
        }
        if (this.strictParse) {
            if (!isGoodMagic(getMagic0())) {
                throw new ParseException("bad class file magic (" + Hex.u4(getMagic0()) + ")");
            }
            if (!isGoodVersion(getMinorVersion0(), getMajorVersion0())) {
                throw new ParseException("unsupported class file version " + getMajorVersion0() + "." + getMinorVersion0());
            }
        }
        ConstantPoolParser constantPoolParser = new ConstantPoolParser(this.bytes);
        constantPoolParser.setObserver(this.observer);
        StdConstantPool pool = constantPoolParser.getPool();
        this.pool = pool;
        pool.setImmutable();
        int endOffset = constantPoolParser.getEndOffset();
        int unsignedShort = this.bytes.getUnsignedShort(endOffset);
        int i10 = endOffset + 2;
        this.thisClass = (CstType) this.pool.get(this.bytes.getUnsignedShort(i10));
        int i11 = endOffset + 4;
        this.superClass = (CstType) this.pool.get0Ok(this.bytes.getUnsignedShort(i11));
        int i12 = endOffset + 6;
        int unsignedShort2 = this.bytes.getUnsignedShort(i12);
        ParseObserver parseObserver2 = this.observer;
        if (parseObserver2 != null) {
            parseObserver2.parsed(this.bytes, endOffset, 2, "access_flags: " + AccessFlags.classString(unsignedShort));
            this.observer.parsed(this.bytes, i10, 2, "this_class: " + ((Object) this.thisClass));
            this.observer.parsed(this.bytes, i11, 2, "super_class: " + stringOrNone(this.superClass));
            this.observer.parsed(this.bytes, i12, 2, "interfaces_count: " + Hex.u2(unsignedShort2));
            if (unsignedShort2 != 0) {
                this.observer.parsed(this.bytes, endOffset + 8, 0, "interfaces:");
            }
        }
        int i13 = endOffset + 8;
        this.interfaces = makeTypeList(i13, unsignedShort2);
        int i14 = i13 + (unsignedShort2 * 2);
        if (this.strictParse) {
            String className = this.thisClass.getClassType().getClassName();
            if (!this.filePath.endsWith(".class") || !this.filePath.startsWith(className) || this.filePath.length() != className.length() + 6) {
                throw new ParseException("class name (" + className + ") does not match path (" + this.filePath + ")");
            }
        }
        this.accessFlags = unsignedShort;
        FieldListParser fieldListParser = new FieldListParser(this, this.thisClass, i14, this.attributeFactory);
        fieldListParser.setObserver(this.observer);
        this.fields = fieldListParser.getList();
        MethodListParser methodListParser = new MethodListParser(this, this.thisClass, fieldListParser.getEndOffset(), this.attributeFactory);
        methodListParser.setObserver(this.observer);
        this.methods = methodListParser.getList();
        AttributeListParser attributeListParser = new AttributeListParser(this, 0, methodListParser.getEndOffset(), this.attributeFactory);
        attributeListParser.setObserver(this.observer);
        StdAttributeList list = attributeListParser.getList();
        this.attributes = list;
        list.setImmutable();
        int endOffset2 = attributeListParser.getEndOffset();
        if (endOffset2 != this.bytes.size()) {
            throw new ParseException("extra bytes at end of class file, at offset " + Hex.u4(endOffset2));
        }
        ParseObserver parseObserver3 = this.observer;
        if (parseObserver3 != null) {
            parseObserver3.parsed(this.bytes, endOffset2, 0, "end classfile");
        }
    }

    private void parseToEndIfNecessary() {
        if (this.attributes == null) {
            parse();
        }
    }

    private void parseToInterfacesIfNecessary() {
        if (this.accessFlags == -1) {
            parse();
        }
    }

    public static String stringOrNone(Object obj) {
        return obj == null ? "(none)" : obj.toString();
    }

    @Override
    public int getAccessFlags() {
        parseToInterfacesIfNecessary();
        return this.accessFlags;
    }

    @Override
    public AttributeList getAttributes() {
        parseToEndIfNecessary();
        return this.attributes;
    }

    public ByteArray getBytes() {
        return this.bytes;
    }

    @Override
    public ConstantPool getConstantPool() {
        parseToInterfacesIfNecessary();
        return this.pool;
    }

    @Override
    public FieldList getFields() {
        parseToEndIfNecessary();
        return this.fields;
    }

    public String getFilePath() {
        return this.filePath;
    }

    @Override
    public TypeList getInterfaces() {
        parseToInterfacesIfNecessary();
        return this.interfaces;
    }

    @Override
    public int getMagic() {
        parseToInterfacesIfNecessary();
        return getMagic0();
    }

    public int getMagic0() {
        return this.bytes.getInt(0);
    }

    @Override
    public int getMajorVersion() {
        parseToInterfacesIfNecessary();
        return getMajorVersion0();
    }

    public int getMajorVersion0() {
        return this.bytes.getUnsignedShort(6);
    }

    @Override
    public MethodList getMethods() {
        parseToEndIfNecessary();
        return this.methods;
    }

    @Override
    public int getMinorVersion() {
        parseToInterfacesIfNecessary();
        return getMinorVersion0();
    }

    public int getMinorVersion0() {
        return this.bytes.getUnsignedShort(4);
    }

    @Override
    public CstString getSourceFile() {
        Attribute findFirst = getAttributes().findFirst("SourceFile");
        if (findFirst instanceof AttSourceFile) {
            return ((AttSourceFile) findFirst).getSourceFile();
        }
        return null;
    }

    @Override
    public CstType getSuperclass() {
        parseToInterfacesIfNecessary();
        return this.superClass;
    }

    @Override
    public CstType getThisClass() {
        parseToInterfacesIfNecessary();
        return this.thisClass;
    }

    public TypeList makeTypeList(int i10, int i11) {
        if (i11 == 0) {
            return StdTypeList.EMPTY;
        }
        StdConstantPool stdConstantPool = this.pool;
        if (stdConstantPool != null) {
            return new DcfTypeList(this.bytes, i10, i11, stdConstantPool, this.observer);
        }
        throw new IllegalStateException("pool not yet initialized");
    }

    public void setAttributeFactory(AttributeFactory attributeFactory) {
        if (attributeFactory == null) {
            throw new NullPointerException("attributeFactory == null");
        }
        this.attributeFactory = attributeFactory;
    }

    public void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }

    public DirectClassFile(byte[] bArr, String str, boolean z10) {
        this(new ByteArray(bArr), str, z10);
    }
}
