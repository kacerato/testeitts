package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Logger;

public abstract class AbstractC10181wz extends K0 implements Serializable {
    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    protected C9002pv0 unknownFields;

    public AbstractC10181wz() {
        this.unknownFields = C9002pv0.f51665c;
    }

    public TreeMap a(boolean z10) {
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
                    if (z10 || c5685Ol.f43022h.f42689b != EnumC5569Ml.f42384h) {
                        treeMap.put(c5685Ol, getField(c5685Ol));
                    } else {
                        treeMap.put(c5685Ol, getFieldRaw(c5685Ol));
                    }
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
                    if (z10) {
                    }
                    treeMap.put(c5685Ol, getField(c5685Ol));
                }
                i10++;
            }
        }
        return treeMap;
    }

    public static Method access$1000(Class cls, String str, Class[] clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e10);
        }
    }

    public static Object access$1100(Method method, Object obj, Object[] objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static AbstractC9334rv access$500(AbstractC9501sv abstractC9501sv) {
        throw null;
    }

    public static boolean canUseUnsafe() {
        return AbstractC6671bw0.f46897e && AbstractC6671bw0.f46896d;
    }

    public static int computeStringSize(int i10, Object obj) {
        if (!(obj instanceof String)) {
            return AbstractC5322Ie.a(i10, (AbstractC8373m8) obj);
        }
        return AbstractC5322Ie.a((String) obj) + AbstractC5322Ie.b(i10);
    }

    public static int computeStringSizeNoTag(Object obj) {
        if (obj instanceof String) {
            return AbstractC5322Ie.a((String) obj);
        }
        Logger logger = AbstractC5322Ie.f41156a;
        int size = ((AbstractC8373m8) obj).size();
        return AbstractC5322Ie.c(size) + size;
    }

    public static NI emptyBooleanList() {
        return Q6.f43449e;
    }

    public static OI emptyDoubleList() {
        return C7327ft.f48130e;
    }

    public static SI emptyFloatList() {
        return C4956Bx.f39044e;
    }

    public static TI emptyIntList() {
        return DH.f39484e;
    }

    public static WI emptyLongList() {
        return C7592hU.f48563e;
    }

    public static void enableAlwaysUseFieldBuildersForTesting() {
        setAlwaysUseFieldBuildersForTesting(true);
    }

    public static boolean isStringEmpty(Object obj) {
        return obj instanceof String ? ((String) obj).isEmpty() : ((AbstractC8373m8) obj).size() == 0;
    }

    public static TI mutableCopy(TI ti2) {
        DH dh2 = (DH) ti2;
        int i10 = dh2.f39486d;
        return dh2.l(i10 == 0 ? 10 : i10 * 2);
    }

    public static NI newBooleanList() {
        return new Q6();
    }

    public static OI newDoubleList() {
        return new C7327ft();
    }

    public static SI newFloatList() {
        return new C4956Bx();
    }

    public static TI newIntList() {
        return new DH();
    }

    public static WI newLongList() {
        return new C7592hU();
    }

    public static <M extends InterfaceC7262fW> M parseDelimitedWithIOException(InterfaceC10535z50 interfaceC10535z50, InputStream inputStream) throws IOException {
        try {
            return (M) interfaceC10535z50.parseDelimitedFrom(inputStream);
        } catch (MJ e10) {
            throw e10.a();
        }
    }

    public static <M extends InterfaceC7262fW> M parseWithIOException(InterfaceC10535z50 interfaceC10535z50, InputStream inputStream) throws IOException {
        try {
            return (M) interfaceC10535z50.parseFrom(inputStream);
        } catch (MJ e10) {
            throw e10.a();
        }
    }

    public static <V> void serializeBooleanMapTo(AbstractC5322Ie abstractC5322Ie, NU nu, MU mu, int i10) throws IOException {
        throw null;
    }

    public static <V> void serializeIntegerMapTo(AbstractC5322Ie abstractC5322Ie, NU nu, MU mu, int i10) throws IOException {
        throw null;
    }

    public static <V> void serializeLongMapTo(AbstractC5322Ie abstractC5322Ie, NU nu, MU mu, int i10) throws IOException {
        throw null;
    }

    public static <V> void serializeStringMapTo(AbstractC5322Ie abstractC5322Ie, NU nu, MU mu, int i10) throws IOException {
        throw null;
    }

    public static void setAlwaysUseFieldBuildersForTesting(boolean z10) {
        alwaysUseFieldBuilders = z10;
    }

    public static void writeString(AbstractC5322Ie abstractC5322Ie, int i10, Object obj) throws IOException {
        if (obj instanceof String) {
            abstractC5322Ie.a(i10, (String) obj);
        } else {
            abstractC5322Ie.b(i10, (AbstractC8373m8) obj);
        }
    }

    public static void writeStringNoTag(AbstractC5322Ie abstractC5322Ie, Object obj) throws IOException {
        if (obj instanceof String) {
            abstractC5322Ie.b((String) obj);
        } else {
            abstractC5322Ie.a((AbstractC8373m8) obj);
        }
    }

    public Map<C5685Ol, Object> getAllFields() {
        return Collections.unmodifiableMap(a(false));
    }

    public Map<C5685Ol, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(a(true));
    }

    @Override
    public C4990Cl getDescriptorForType() {
        return internalGetFieldAccessorTable().f52993a;
    }

    public Object getField(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).d(this);
    }

    public Object getFieldRaw(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this);
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
        int number = ((QI) access$1100(a10.f49850b, this, new Object[0])).getNumber();
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

    public Object getRepeatedField(C5685Ol c5685Ol, int i10) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(i10, this);
    }

    public int getRepeatedFieldCount(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).c(this);
    }

    public boolean hasField(C5685Ol c5685Ol) {
        return C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).b(this);
    }

    public boolean hasOneof(C5917Sl c5917Sl) {
        C8178kz a10 = C9847uz.a(internalGetFieldAccessorTable(), c5917Sl);
        C5685Ol c5685Ol = a10.f49853e;
        return c5685Ol != null ? hasField(c5685Ol) : ((QI) access$1100(a10.f49850b, this, new Object[0])).getNumber() != 0;
    }

    public abstract C9847uz internalGetFieldAccessorTable();

    public NU internalGetMapField(int i10) {
        throw new RuntimeException("No map fields found in ".concat(getClass().getName()));
    }

    public void makeExtensionsImmutable() {
    }

    public void mergeFromAndMakeImmutableInternal(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) throws MJ {
        C5890Sa0 c5890Sa0 = C5890Sa0.f44235c;
        c5890Sa0.getClass();
        Class<?> cls = getClass();
        Charset charset = YI.f45964a;
        if (((InterfaceC7638hl0) c5890Sa0.f44237b.get(cls)) == null) {
            JU ju = c5890Sa0.f44236a;
            ju.getClass();
            Class cls2 = AbstractC7804il0.f49049a;
            if (!AbstractC6059Uy.class.isAssignableFrom(cls) && cls2 != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
            }
            ju.f41404a.a(cls);
            throw null;
        }
        try {
            if (abstractC4916Be.f38962b != null) {
                throw null;
            }
            new C4974Ce(abstractC4916Be);
            throw null;
        } catch (MJ e10) {
            e10.f42272b = this;
            throw e10;
        } catch (IOException e11) {
            MJ mj2 = new MJ(e11);
            mj2.f42272b = this;
            throw mj2;
        }
    }

    @Override
    public InterfaceC7095eW newBuilderForType(J0 j02) {
        return newBuilderForType((InterfaceC7512gz) new C7011dz(j02));
    }

    public abstract InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz);

    public boolean parseUnknownField(AbstractC4916Be abstractC4916Be, C8167kv0 c8167kv0, C10670zv c10670zv, int i10) throws IOException {
        abstractC4916Be.getClass();
        return c8167kv0.a(i10, abstractC4916Be);
    }

    public boolean parseUnknownFieldProto3(AbstractC4916Be abstractC4916Be, C8167kv0 c8167kv0, C10670zv c10670zv, int i10) throws IOException {
        return parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, i10);
    }

    public Object writeReplace() throws ObjectStreamException {
        return new C6230Xy(this);
    }

    public static <M extends InterfaceC7262fW> M parseDelimitedWithIOException(InterfaceC10535z50 interfaceC10535z50, InputStream inputStream, C10670zv c10670zv) throws IOException {
        try {
            return (M) interfaceC10535z50.parseDelimitedFrom(inputStream, c10670zv);
        } catch (MJ e10) {
            throw e10.a();
        }
    }

    public static <M extends InterfaceC7262fW> M parseWithIOException(InterfaceC10535z50 interfaceC10535z50, InputStream inputStream, C10670zv c10670zv) throws IOException {
        try {
            return (M) interfaceC10535z50.parseFrom(inputStream, c10670zv);
        } catch (MJ e10) {
            throw e10.a();
        }
    }

    public AbstractC10181wz(AbstractC7345fz abstractC7345fz) {
        this.unknownFields = abstractC7345fz.getUnknownFields();
    }

    public static WI mutableCopy(WI wi2) {
        C7592hU c7592hU = (C7592hU) wi2;
        int i10 = c7592hU.f48565d;
        return c7592hU.k(i10 == 0 ? 10 : i10 * 2);
    }

    public static <M extends InterfaceC7262fW> M parseWithIOException(InterfaceC10535z50 interfaceC10535z50, AbstractC4916Be abstractC4916Be) throws IOException {
        try {
            return (M) interfaceC10535z50.parseFrom(abstractC4916Be);
        } catch (MJ e10) {
            throw e10.a();
        }
    }

    public static SI mutableCopy(SI si2) {
        C4956Bx c4956Bx = (C4956Bx) si2;
        int i10 = c4956Bx.f39046d;
        return c4956Bx.j(i10 == 0 ? 10 : i10 * 2);
    }

    public static <M extends InterfaceC7262fW> M parseWithIOException(InterfaceC10535z50 interfaceC10535z50, AbstractC4916Be abstractC4916Be, C10670zv c10670zv) throws IOException {
        try {
            return (M) interfaceC10535z50.parseFrom(abstractC4916Be, c10670zv);
        } catch (MJ e10) {
            throw e10.a();
        }
    }

    public static OI mutableCopy(OI oi2) {
        C7327ft c7327ft = (C7327ft) oi2;
        int i10 = c7327ft.f48132d;
        return c7327ft.j(i10 == 0 ? 10 : i10 * 2);
    }

    public static NI mutableCopy(NI ni2) {
        Q6 q62 = (Q6) ni2;
        int i10 = q62.f43451d;
        return q62.j(i10 == 0 ? 10 : i10 * 2);
    }
}
