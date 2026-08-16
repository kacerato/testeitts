package com.android.dx.cf.direct;

import com.android.dx.cf.attrib.RawAttribute;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstString;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;

public class AttributeFactory {
    public static final int CTX_CLASS = 0;
    public static final int CTX_CODE = 3;
    public static final int CTX_COUNT = 4;
    public static final int CTX_FIELD = 1;
    public static final int CTX_METHOD = 2;

    public final Attribute parse(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        String str;
        if (directClassFile == null) {
            throw new NullPointerException("cf == null");
        }
        if (i10 < 0 || i10 >= 4) {
            throw new IllegalArgumentException("bad context");
        }
        CstString cstString = null;
        try {
            ByteArray bytes = directClassFile.getBytes();
            ConstantPool constantPool = directClassFile.getConstantPool();
            int unsignedShort = bytes.getUnsignedShort(i11);
            int i12 = i11 + 2;
            int i13 = bytes.getInt(i12);
            CstString cstString2 = (CstString) constantPool.get(unsignedShort);
            if (parseObserver != null) {
                try {
                    parseObserver.parsed(bytes, i11, 2, "name: " + cstString2.toHuman());
                    parseObserver.parsed(bytes, i12, 4, "length: " + Hex.u4(i13));
                } catch (ParseException e10) {
                    e = e10;
                    cstString = cstString2;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("...while parsing ");
                    if (cstString != null) {
                        str = cstString.toHuman() + " ";
                    } else {
                        str = "";
                    }
                    sb2.append(str);
                    sb2.append("attribute at offset ");
                    sb2.append(Hex.u4(i11));
                    e.addContext(sb2.toString());
                    throw e;
                }
            }
            return parse0(directClassFile, i10, cstString2.getString(), i11 + 6, i13, parseObserver);
        } catch (ParseException e11) {
            e = e11;
        }
    }

    public Attribute parse0(DirectClassFile directClassFile, int i10, String str, int i11, int i12, ParseObserver parseObserver) {
        ByteArray bytes = directClassFile.getBytes();
        RawAttribute rawAttribute = new RawAttribute(str, bytes, i11, i12, directClassFile.getConstantPool());
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i11, i12, "attribute data");
        }
        return rawAttribute;
    }
}
