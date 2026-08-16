package com.android.dx.cf.direct;

import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;

final class AttributeListParser {
    private final AttributeFactory attributeFactory;

    private final DirectClassFile f35084cf;
    private final int context;
    private int endOffset;
    private final StdAttributeList list;
    private ParseObserver observer;
    private final int offset;

    public AttributeListParser(DirectClassFile directClassFile, int i10, int i11, AttributeFactory attributeFactory) {
        if (directClassFile == null) {
            throw new NullPointerException("cf == null");
        }
        if (attributeFactory == null) {
            throw new NullPointerException("attributeFactory == null");
        }
        int unsignedShort = directClassFile.getBytes().getUnsignedShort(i11);
        this.f35084cf = directClassFile;
        this.context = i10;
        this.offset = i11;
        this.attributeFactory = attributeFactory;
        this.list = new StdAttributeList(unsignedShort);
        this.endOffset = -1;
    }

    private void parse() {
        int size = this.list.size();
        int i10 = this.offset + 2;
        ByteArray bytes = this.f35084cf.getBytes();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(bytes, this.offset, 2, "attributes_count: " + Hex.u2(size));
        }
        for (int i11 = 0; i11 < size; i11++) {
            try {
                ParseObserver parseObserver2 = this.observer;
                if (parseObserver2 != null) {
                    parseObserver2.parsed(bytes, i10, 0, "\nattributes[" + i11 + "]:\n");
                    this.observer.changeIndent(1);
                }
                Attribute parse = this.attributeFactory.parse(this.f35084cf, this.context, i10, this.observer);
                i10 += parse.byteLength();
                this.list.set(i11, parse);
                ParseObserver parseObserver3 = this.observer;
                if (parseObserver3 != null) {
                    parseObserver3.changeIndent(-1);
                    this.observer.parsed(bytes, i10, 0, "end attributes[" + i11 + "]\n");
                }
            } catch (ParseException e10) {
                e10.addContext("...while parsing attributes[" + i11 + "]");
                throw e10;
            } catch (RuntimeException e11) {
                ParseException parseException = new ParseException(e11);
                parseException.addContext("...while parsing attributes[" + i11 + "]");
                throw parseException;
            }
        }
        this.endOffset = i10;
    }

    private void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public StdAttributeList getList() {
        parseIfNecessary();
        return this.list;
    }

    public void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }
}
