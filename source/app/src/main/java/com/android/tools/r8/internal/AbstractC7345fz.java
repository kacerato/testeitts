package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Logger;

public abstract class AbstractC7345fz extends I0 {
    private InterfaceC7512gz builderParent;
    private boolean isClean;
    private C7178ez meAsParent;
    private C9002pv0 unknownFields;

    public AbstractC7345fz() {
        this(null);
    }

    public TreeMap a() {
        TreeMap treeMap = new TreeMap();
        List unmodifiableList = Collections.unmodifiableList(Arrays.asList(internalGetFieldAccessorTable().f52993a.f39344g));
        int i10 = 0;
        while (i10 < unmodifiableList.size()) {
            C5685Ol c5685Ol = (C5685Ol) unmodifiableList.get(i10);
            C5917Sl c5917Sl = c5685Ol.f43025k;
            if (c5917Sl != null) {
                i10 += c5917Sl.f44307g - 1;
                if (hasOneof(c5917Sl)) {
                    c5685Ol = getOneofFieldDescriptor(c5917Sl);
                    treeMap.put(c5685Ol, getField(c5685Ol));
                    i10++;
                } else {
                    i10++;
                }
            } else {
                if (c5685Ol.k()) {
                    List list = (List) getField(c5685Ol);
                    if (!list.isEmpty()) {
                        treeMap.put(c5685Ol, list);
                    }
                } else {
                    if (!hasField(c5685Ol)) {
                    }
                    treeMap.put(c5685Ol, getField(c5685Ol));
                }
                i10++;
            }
        }
        return treeMap;
    }

    @Override
    public AbstractC7345fz addRepeatedField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).b(this, obj);
        return this;
    }

    public AbstractC7345fz m1183clear() {
        this.unknownFields = C9002pv0.f51665c;
        onChanged();
        return this;
    }

    public AbstractC7345fz clearField(C5685Ol c5685Ol) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).d(this);
        return this;
    }

    public AbstractC7345fz m1184clearOneof(C5917Sl c5917Sl) {
        AbstractC10181wz.access$1100(C9847uz.a(internalGetFieldAccessorTable(), c5917Sl).f49852d, this, new Object[0]);
        return this;
    }

    public AbstractC7345fz m1188clone() {
        AbstractC7345fz abstractC7345fz = (AbstractC7345fz) getDefaultInstanceForType().m1180newBuilderForType();
        abstractC7345fz.mergeFrom(m1181buildPartial());
        return abstractC7345fz;
    }

    @Override
    public void dispose() {
        this.builderParent = null;
    }

    @Override
    public Map<C5685Ol, Object> getAllFields() {
        return Collections.unmodifiableMap(a());
    }

    @Override
    public Object getField(C5685Ol c5685Ol) {
        Object c10 = C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).c(this);
        return c5685Ol.k() ? Collections.unmodifiableList((List) c10) : c10;
    }

    public InterfaceC7095eW getFieldBuilder(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).e(this);
    }

    public C5685Ol getOneofFieldDescriptor(C5917Sl c5917Sl) {
        C8178kz a10 = C9847uz.a(internalGetFieldAccessorTable(), c5917Sl);
        C5685Ol c5685Ol = a10.f49853e;
        if (c5685Ol != null) {
            if (hasField(c5685Ol)) {
                return a10.f49853e;
            }
            return null;
        }
        int i10 = 0;
        int number = ((QI) AbstractC10181wz.access$1100(a10.f49851c, this, new Object[0])).getNumber();
        if (number > 0) {
            C5685Ol[] c5685OlArr = a10.f49849a.f39345h;
            int length = c5685OlArr.length;
            EnumC6000Tx0[] enumC6000Tx0Arr = C5685Ol.f43015n;
            Logger logger = AbstractC6033Ul.f44855a;
            int i11 = length - 1;
            while (i10 <= i11) {
                int i12 = (i10 + i11) / 2;
                C5685Ol c5685Ol2 = c5685OlArr[i12];
                int i13 = c5685Ol2.f43017c.f39995d;
                if (number < i13) {
                    i11 = i12 - 1;
                } else {
                    if (number <= i13) {
                        return c5685Ol2;
                    }
                    i10 = i12 + 1;
                }
            }
        }
        return null;
    }

    public InterfaceC7512gz getParentForChildren() {
        if (this.meAsParent == null) {
            this.meAsParent = new C7178ez(this);
        }
        return this.meAsParent;
    }

    public Object getRepeatedField(C5685Ol c5685Ol, int i10) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).b(this, i10);
    }

    public InterfaceC7095eW getRepeatedFieldBuilder(C5685Ol c5685Ol, int i10) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, i10);
    }

    public int getRepeatedFieldCount(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).b(this);
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    @Override
    public boolean hasField(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this);
    }

    public boolean hasOneof(C5917Sl c5917Sl) {
        C8178kz a10 = C9847uz.a(internalGetFieldAccessorTable(), c5917Sl);
        C5685Ol c5685Ol = a10.f49853e;
        return c5685Ol != null ? hasField(c5685Ol) : ((QI) AbstractC10181wz.access$1100(a10.f49851c, this, new Object[0])).getNumber() != 0;
    }

    public abstract C9847uz internalGetFieldAccessorTable();

    public NU internalGetMapField(int i10) {
        throw new RuntimeException("No map fields found in ".concat(getClass().getName()));
    }

    public NU internalGetMutableMapField(int i10) {
        throw new RuntimeException("No map fields found in ".concat(getClass().getName()));
    }

    public boolean isClean() {
        return this.isClean;
    }

    @Override
    public void markClean() {
        this.isClean = true;
    }

    @Override
    public AbstractC7345fz m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        C9002pv0 c9002pv02 = this.unknownFields;
        C9002pv0 c9002pv03 = C9002pv0.f51665c;
        return setUnknownFields(new C8167kv0().a(c9002pv02).a(c9002pv0).build());
    }

    @Override
    public InterfaceC7095eW newBuilderForField(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a();
    }

    public void onBuilt() {
        if (this.builderParent != null) {
            markClean();
        }
    }

    public final void onChanged() {
        InterfaceC7512gz interfaceC7512gz;
        if (!this.isClean || (interfaceC7512gz = this.builderParent) == null) {
            return;
        }
        interfaceC7512gz.a();
        this.isClean = false;
    }

    @Override
    public AbstractC7345fz setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    public AbstractC7345fz setRepeatedField(C5685Ol c5685Ol, int i10, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, i10, obj);
        return this;
    }

    public AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        this.unknownFields = c9002pv0;
        onChanged();
        return this;
    }

    public AbstractC7345fz setUnknownFieldsProto3(C9002pv0 c9002pv0) {
        this.unknownFields = c9002pv0;
        onChanged();
        return this;
    }

    public AbstractC7345fz(InterfaceC7512gz interfaceC7512gz) {
        this.unknownFields = C9002pv0.f51665c;
        this.builderParent = interfaceC7512gz;
    }
}
