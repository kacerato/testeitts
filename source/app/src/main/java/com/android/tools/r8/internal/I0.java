package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public abstract class I0 extends N0 implements InterfaceC7095eW {
    public static C7000dv0 newUninitializedMessageException(InterfaceC7262fW interfaceC7262fW) {
        ArrayList arrayList = new ArrayList();
        AbstractC9263rW.a(interfaceC7262fW, "", arrayList);
        return new C7000dv0(arrayList);
    }

    public void dispose() {
        throw new IllegalStateException("Should be overridden by subclasses.");
    }

    public List<String> findInitializationErrors() {
        ArrayList arrayList = new ArrayList();
        AbstractC9263rW.a(this, "", arrayList);
        return arrayList;
    }

    public String getInitializationErrorString() {
        List<String> findInitializationErrors = findInitializationErrors();
        StringBuilder sb2 = new StringBuilder();
        for (String str : findInitializationErrors) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public void markClean() {
        throw new IllegalStateException("Should be overridden by subclasses.");
    }

    public boolean mergeDelimitedFrom(InputStream inputStream, C10670zv c10670zv) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            return false;
        }
        m699mergeFrom((InputStream) new M0(AbstractC4916Be.a(read, inputStream), inputStream), c10670zv);
        return true;
    }

    public I0 m713mergeFrom(InputStream inputStream) throws IOException {
        AbstractC4916Be c10452ye;
        if (inputStream == null) {
            byte[] bArr = YI.f45967d;
            c10452ye = AbstractC4916Be.a(bArr, 0, bArr.length, false);
        } else {
            c10452ye = new C10452ye(inputStream);
        }
        m710mergeFrom(c10452ye);
        c10452ye.a(0);
        return this;
    }

    public abstract I0 m1189mergeUnknownFields(C9002pv0 c9002pv0);

    public String toString() {
        Logger logger = AbstractC5003Cr0.f39372a;
        C4887Ar0 c4887Ar0 = C4887Ar0.f38725b;
        c4887Ar0.getClass();
        try {
            StringBuilder sb2 = new StringBuilder();
            c4887Ar0.a(this, new C4945Br0(sb2));
            return sb2.toString();
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public I0 internalMergeFrom(P0 p02) {
        return mergeFrom((InterfaceC7262fW) p02);
    }

    public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
        return mergeDelimitedFrom(inputStream, C10670zv.a());
    }

    public I0 m714mergeFrom(InputStream inputStream, C10670zv c10670zv) throws IOException {
        AbstractC4916Be c10452ye;
        if (inputStream == null) {
            byte[] bArr = YI.f45967d;
            c10452ye = AbstractC4916Be.a(bArr, 0, bArr.length, false);
        } else {
            c10452ye = new C10452ye(inputStream);
        }
        mergeFrom(c10452ye, c10670zv);
        c10452ye.a(0);
        return this;
    }

    @Override
    public I0 m710mergeFrom(AbstractC4916Be abstractC4916Be) throws IOException {
        return mergeFrom(abstractC4916Be, (C10670zv) C10002vv.f53373e);
    }

    public I0 m715mergeFrom(byte[] bArr) throws MJ {
        return (I0) m716mergeFrom(bArr, 0, bArr.length);
    }

    public I0 m718mergeFrom(byte[] bArr, C10670zv c10670zv) throws MJ {
        return (I0) m717mergeFrom(bArr, 0, bArr.length, c10670zv);
    }

    public I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        return mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
    }

    public I0 mergeFrom(InterfaceC7262fW interfaceC7262fW, Map<C5685Ol, Object> map) {
        if (interfaceC7262fW.getDescriptorForType() == getDescriptorForType()) {
            for (Map.Entry<C5685Ol, Object> entry : map.entrySet()) {
                C5685Ol key = entry.getKey();
                if (key.k()) {
                    Iterator it = ((List) entry.getValue()).iterator();
                    while (it.hasNext()) {
                        addRepeatedField(key, it.next());
                    }
                } else if (key.f43022h.f42689b == EnumC5569Ml.f42387k) {
                    InterfaceC7262fW interfaceC7262fW2 = (InterfaceC7262fW) getField(key);
                    if (interfaceC7262fW2 == interfaceC7262fW2.getDefaultInstanceForType()) {
                        setField(key, entry.getValue());
                    } else {
                        setField(key, interfaceC7262fW2.m1180newBuilderForType().mergeFrom(interfaceC7262fW2).mergeFrom((InterfaceC7262fW) entry.getValue()).build());
                    }
                } else {
                    setField(key, entry.getValue());
                }
            }
            m1189mergeUnknownFields(interfaceC7262fW.getUnknownFields());
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
    }

    @Override
    public I0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        int s10;
        abstractC4916Be.getClass();
        C9002pv0 unknownFields = getUnknownFields();
        C9002pv0 c9002pv0 = C9002pv0.f51665c;
        C8167kv0 a10 = new C8167kv0().a(unknownFields);
        do {
            s10 = abstractC4916Be.s();
            if (s10 == 0) {
                break;
            }
        } while (AbstractC9263rW.a(abstractC4916Be, a10, c10670zv, getDescriptorForType(), new C8763oW(this), s10));
        setUnknownFields(a10.build());
        return this;
    }

    @Override
    public I0 m711mergeFrom(AbstractC8373m8 abstractC8373m8) throws MJ {
        return (I0) super.m711mergeFrom(abstractC8373m8);
    }

    @Override
    public I0 m712mergeFrom(AbstractC8373m8 abstractC8373m8, C10670zv c10670zv) throws MJ {
        return (I0) super.m712mergeFrom(abstractC8373m8, c10670zv);
    }

    @Override
    public I0 m716mergeFrom(byte[] bArr, int i10, int i11) throws MJ {
        return (I0) super.m716mergeFrom(bArr, i10, i11);
    }

    @Override
    public I0 m717mergeFrom(byte[] bArr, int i10, int i11, C10670zv c10670zv) throws MJ {
        return (I0) super.m717mergeFrom(bArr, i10, i11, c10670zv);
    }
}
