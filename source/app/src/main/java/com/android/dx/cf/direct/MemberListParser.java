package com.android.dx.cf.direct;

import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;

public abstract class MemberListParser {
    private final AttributeFactory attributeFactory;

    private final DirectClassFile f35085cf;
    private final CstType definer;
    private int endOffset;
    private ParseObserver observer;
    private final int offset;

    public MemberListParser(DirectClassFile directClassFile, CstType cstType, int i10, AttributeFactory attributeFactory) {
        if (directClassFile == null) {
            throw new NullPointerException("cf == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("offset < 0");
        }
        if (attributeFactory == null) {
            throw new NullPointerException("attributeFactory == null");
        }
        this.f35085cf = directClassFile;
        this.definer = cstType;
        this.offset = i10;
        this.attributeFactory = attributeFactory;
        this.endOffset = -1;
    }

    private void parse() {
        int i10;
        int i11;
        ConstantPool constantPool;
        char c10;
        int attributeContext = getAttributeContext();
        int count = getCount();
        int i12 = this.offset + 2;
        ByteArray bytes = this.f35085cf.getBytes();
        ConstantPool constantPool2 = this.f35085cf.getConstantPool();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(bytes, this.offset, 2, humanName() + "s_count: " + Hex.u2(count));
        }
        int i13 = 0;
        while (i13 < count) {
            try {
                int unsignedShort = bytes.getUnsignedShort(i12);
                int i14 = i12 + 2;
                int unsignedShort2 = bytes.getUnsignedShort(i14);
                int i15 = i12 + 4;
                int unsignedShort3 = bytes.getUnsignedShort(i15);
                CstString cstString = (CstString) constantPool2.get(unsignedShort2);
                CstString cstString2 = (CstString) constantPool2.get(unsignedShort3);
                ParseObserver parseObserver2 = this.observer;
                if (parseObserver2 != null) {
                    i11 = count;
                    constantPool = constantPool2;
                    parseObserver2.startParsingMember(bytes, i12, cstString.getString(), cstString2.getString());
                    this.observer.parsed(bytes, i12, 0, "\n" + humanName() + "s[" + i13 + "]:\n");
                    this.observer.changeIndent(1);
                    ParseObserver parseObserver3 = this.observer;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("access_flags: ");
                    sb2.append(humanAccessFlags(unsignedShort));
                    parseObserver3.parsed(bytes, i12, 2, sb2.toString());
                    this.observer.parsed(bytes, i14, 2, "name: " + cstString.toHuman());
                    c10 = 2;
                    this.observer.parsed(bytes, i15, 2, "descriptor: " + cstString2.toHuman());
                } else {
                    i11 = count;
                    constantPool = constantPool2;
                    c10 = 2;
                }
                AttributeListParser attributeListParser = new AttributeListParser(this.f35085cf, attributeContext, i12 + 6, this.attributeFactory);
                attributeListParser.setObserver(this.observer);
                i12 = attributeListParser.getEndOffset();
                StdAttributeList list = attributeListParser.getList();
                list.setImmutable();
                Member member = set(i13, unsignedShort, new CstNat(cstString, cstString2), list);
                ParseObserver parseObserver4 = this.observer;
                if (parseObserver4 != null) {
                    parseObserver4.changeIndent(-1);
                    this.observer.parsed(bytes, i12, 0, "end " + humanName() + "s[" + i13 + "]\n");
                    i10 = i13;
                    try {
                        this.observer.endParsingMember(bytes, i12, cstString.getString(), cstString2.getString(), member);
                    } catch (ParseException e10) {
                        e = e10;
                        e.addContext("...while parsing " + humanName() + "s[" + i10 + "]");
                        throw e;
                    } catch (RuntimeException e11) {
                        e = e11;
                        ParseException parseException = new ParseException(e);
                        parseException.addContext("...while parsing " + humanName() + "s[" + i10 + "]");
                        throw parseException;
                    }
                } else {
                    i10 = i13;
                }
                i13 = i10 + 1;
                count = i11;
                constantPool2 = constantPool;
            } catch (ParseException e12) {
                e = e12;
                i10 = i13;
            } catch (RuntimeException e13) {
                e = e13;
                i10 = i13;
            }
        }
        this.endOffset = i12;
    }

    public abstract int getAttributeContext();

    public final int getCount() {
        return this.f35085cf.getBytes().getUnsignedShort(this.offset);
    }

    public final CstType getDefiner() {
        return this.definer;
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public abstract String humanAccessFlags(int i10);

    public abstract String humanName();

    public final void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    public abstract Member set(int i10, int i11, CstNat cstNat, AttributeList attributeList);

    public final void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }
}
