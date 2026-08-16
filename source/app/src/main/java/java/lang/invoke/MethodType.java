package java.lang.invoke;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.constant.ClassDesc;
import java.lang.constant.Constable;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.TypeDescriptor;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Supplier;
import jdk.internal.util.ReferenceKey;
import jdk.internal.util.ReferencedKeySet;
import jdk.internal.vm.annotation.Stable;
import org.openjdk.tools.doclint.DocLint;
import sun.invoke.util.BytecodeDescriptor;
import sun.invoke.util.VerifyType;
import sun.invoke.util.Wrapper;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/MethodType.class
 */
public final class MethodType implements Constable, TypeDescriptor.OfMethod<Class<?>, MethodType>, Serializable {
    private static final long serialVersionUID = 292;

    @Stable
    private final Class<?> rtype;

    @Stable
    private final Class<?>[] ptypes;

    @Stable
    private MethodTypeForm form;

    @Stable
    private Object wrapAlt;

    @Stable
    private Invokers invokers;

    @Stable
    private String methodDescriptor;
    static final int MAX_JVM_ARITY = 255;
    static final int MAX_MH_ARITY = 254;
    static final int MAX_MH_INVOKER_ARITY = 253;
    static final ReferencedKeySet<MethodType> internTable;
    static final Class<?>[] NO_PTYPES;

    @Stable
    private static final MethodType[] objectOnlyTypes;

    @Stable
    private static final Class<?>[] METHOD_HANDLE_ARRAY;
    private static final ObjectStreamField[] serialPersistentFields;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !MethodType.class.desiredAssertionStatus();
        internTable = ReferencedKeySet.create(false, new Supplier<Map<ReferenceKey<MethodType>, ReferenceKey<MethodType>>>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Map<ReferenceKey<MethodType>, ReferenceKey<MethodType>> get() {
                return new ConcurrentHashMap(512);
            }
        });
        NO_PTYPES = new Class[0];
        objectOnlyTypes = new MethodType[20];
        METHOD_HANDLE_ARRAY = new Class[]{MethodHandle.class};
        serialPersistentFields = new ObjectStreamField[0];
    }

    private MethodType(Class<?> rtype, Class<?>[] ptypes) {
        this.rtype = rtype;
        this.ptypes = ptypes;
    }

    public MethodTypeForm form() {
        return this.form;
    }

    public Class<?> rtype() {
        return this.rtype;
    }

    public Class<?>[] ptypes() {
        return this.ptypes;
    }

    void setForm(MethodTypeForm f10) {
        this.form = f10;
    }

    private static int checkPtypes(Class<?>[] ptypes) {
        int slots = 0;
        for (Class<?> ptype : ptypes) {
            Objects.requireNonNull(ptype);
            if (ptype == Void.TYPE) {
                throw MethodHandleStatics.newIllegalArgumentException("parameter type cannot be void");
            }
            if (ptype == Double.TYPE || ptype == Long.TYPE) {
                slots++;
            }
        }
        checkSlotCount(ptypes.length + slots);
        return slots;
    }

    public static void checkSlotCount(int count) {
        if ((count & 255) != count) {
            throw MethodHandleStatics.newIllegalArgumentException("bad parameter count " + count);
        }
    }

    private static IndexOutOfBoundsException newIndexOutOfBoundsException(Object num) {
        if (num instanceof Integer) {
            num = "bad index: " + num;
        }
        return new IndexOutOfBoundsException(num.toString());
    }

    public static MethodType methodType(Class<?> rtype, Class<?>[] ptypes) {
        return methodType(rtype, ptypes, false);
    }

    public static MethodType methodType(Class<?> rtype, List<Class<?>> ptypes) {
        return methodType(rtype, listToArray(ptypes), false);
    }

    private static Class<?>[] listToArray(List<Class<?>> ptypes) {
        checkSlotCount(ptypes.size());
        return (Class[]) ptypes.toArray(NO_PTYPES);
    }

    public static MethodType methodType(Class<?> rtype, Class<?> ptype0, Class<?>... ptypes) {
        int len = ptypes.length;
        if (rtype == Object.class && ptype0 == Object.class) {
            if (len == 0) {
                return genericMethodType(1, false);
            }
            if (isAllObject(ptypes, len - 1)) {
                Class<?> lastParam = ptypes[len - 1];
                if (lastParam == Object.class) {
                    return genericMethodType(len + 1, false);
                }
                if (lastParam == Object[].class) {
                    return genericMethodType(len, true);
                }
            }
        }
        Class<?>[] ptypes1 = new Class[1 + len];
        ptypes1[0] = ptype0;
        System.arraycopy(ptypes, 0, ptypes1, 1, len);
        return makeImpl(rtype, ptypes1, true);
    }

    public static MethodType methodType(Class<?> rtype) {
        if (rtype == Object.class) {
            return genericMethodType(0, false);
        }
        return makeImpl(rtype, NO_PTYPES, true);
    }

    public static MethodType methodType(Class<?> rtype, Class<?> ptype0) {
        if (rtype == Object.class) {
            if (ptype0 == Object.class) {
                return genericMethodType(1, false);
            }
            if (ptype0 == Object[].class) {
                return genericMethodType(0, true);
            }
        }
        return makeImpl(rtype, new Class[]{ptype0}, true);
    }

    public static MethodType methodType(Class<?> rtype, MethodType ptypes) {
        return methodType(rtype, ptypes.ptypes, true);
    }

    private static boolean isAllObject(Class<?>[] ptypes, int to) {
        for (int i10 = 0; i10 < to; i10++) {
            if (ptypes[i10] != Object.class) {
                return false;
            }
        }
        return true;
    }

    public static MethodType methodType(Class<?> rtype, Class<?>[] ptypes, boolean trusted) {
        if (rtype == Object.class) {
            int last = ptypes.length - 1;
            if (last < 0) {
                return genericMethodType(0, false);
            }
            if (isAllObject(ptypes, last)) {
                Class<?> lastParam = ptypes[last];
                if (lastParam == Object.class) {
                    return genericMethodType(last + 1, false);
                }
                if (lastParam == Object[].class) {
                    return genericMethodType(last, true);
                }
            }
        }
        return makeImpl(rtype, ptypes, trusted);
    }

    private static MethodType makeImpl(Class<?> rtype, Class<?>[] ptypes, boolean trusted) {
        MethodType mt;
        if (ptypes.length == 0) {
            ptypes = NO_PTYPES;
            trusted = true;
        }
        MethodType primordialMT = new MethodType(rtype, ptypes);
        MethodType mt2 = (MethodType) internTable.get(primordialMT);
        if (mt2 != null) {
            return mt2;
        }
        Objects.requireNonNull(rtype);
        if (trusted) {
            checkPtypes(ptypes);
            mt = primordialMT;
        } else {
            Class<?>[] ptypes2 = (Class[]) Arrays.copyOf(ptypes, ptypes.length);
            checkPtypes(ptypes2);
            mt = new MethodType(rtype, ptypes2);
        }
        mt.form = MethodTypeForm.findForm(mt);
        return (MethodType) internTable.intern(mt);
    }

    public static MethodType genericMethodType(int objectArgCount, boolean finalArray) {
        MethodType mt;
        checkSlotCount(objectArgCount);
        int ivarargs = !finalArray ? 0 : 1;
        int ootIndex = (objectArgCount * 2) + ivarargs;
        if (ootIndex < objectOnlyTypes.length && (mt = objectOnlyTypes[ootIndex]) != null) {
            return mt;
        }
        Class<?>[] ptypes = new Class[objectArgCount + ivarargs];
        Arrays.fill(ptypes, Object.class);
        if (ivarargs != 0) {
            ptypes[objectArgCount] = Object[].class;
        }
        MethodType mt2 = makeImpl(Object.class, ptypes, true);
        if (ootIndex < objectOnlyTypes.length) {
            objectOnlyTypes[ootIndex] = mt2;
        }
        return mt2;
    }

    public static MethodType genericMethodType(int objectArgCount) {
        return genericMethodType(objectArgCount, false);
    }

    @Override
    public MethodType changeParameterType(int num, Class<?> nptype) {
        if (parameterType(num) == nptype) {
            return this;
        }
        Class<?>[] nptypes = (Class[]) this.ptypes.clone();
        nptypes[num] = nptype;
        return makeImpl(this.rtype, nptypes, true);
    }

    @Override
    public MethodType insertParameterTypes(int num, Class<?>... ptypesToInsert) {
        int len = this.ptypes.length;
        if (num < 0 || num > len) {
            throw newIndexOutOfBoundsException(Integer.valueOf(num));
        }
        int ins = checkPtypes(ptypesToInsert);
        checkSlotCount(parameterSlotCount() + ptypesToInsert.length + ins);
        int ilen = ptypesToInsert.length;
        if (ilen == 0) {
            return this;
        }
        Class<?>[] nptypes = new Class[len + ilen];
        if (num > 0) {
            System.arraycopy(this.ptypes, 0, nptypes, 0, num);
        }
        System.arraycopy(ptypesToInsert, 0, nptypes, num, ilen);
        if (num < len) {
            System.arraycopy(this.ptypes, num, nptypes, num + ilen, len - num);
        }
        return makeImpl(this.rtype, nptypes, true);
    }

    public MethodType appendParameterTypes(Class<?>... ptypesToInsert) {
        return insertParameterTypes(parameterCount(), ptypesToInsert);
    }

    public MethodType insertParameterTypes(int num, List<Class<?>> ptypesToInsert) {
        return insertParameterTypes(num, listToArray(ptypesToInsert));
    }

    public MethodType appendParameterTypes(List<Class<?>> ptypesToInsert) {
        return insertParameterTypes(parameterCount(), ptypesToInsert);
    }

    public MethodType replaceParameterTypes(int start, int end, Class<?>... ptypesToInsert) {
        if (start == end) {
            return insertParameterTypes(start, ptypesToInsert);
        }
        int len = this.ptypes.length;
        if (0 > start || start > end || end > len) {
            throw newIndexOutOfBoundsException("start=" + start + " end=" + end);
        }
        int ilen = ptypesToInsert.length;
        if (ilen == 0) {
            return dropParameterTypes(start, end);
        }
        return dropParameterTypes(start, end).insertParameterTypes(start, ptypesToInsert);
    }

    public MethodType asSpreaderType(Class<?> arrayType, int pos, int arrayLength) {
        if (!$assertionsDisabled && parameterCount() < arrayLength) {
            throw new AssertionError();
        }
        if (arrayLength == 0) {
            return this;
        }
        if (arrayType == Object[].class) {
            if (isGeneric()) {
                return this;
            }
            if (pos == 0) {
                MethodType res = genericMethodType(arrayLength);
                if (this.rtype != Object.class) {
                    res = res.changeReturnType(this.rtype);
                }
                return res;
            }
        }
        Class<?> elemType = arrayType.getComponentType();
        if (!$assertionsDisabled && elemType == null) {
            throw new AssertionError();
        }
        for (int i10 = pos; i10 < pos + arrayLength; i10++) {
            if (this.ptypes[i10] != elemType) {
                Class<?>[] fixedPtypes = (Class[]) this.ptypes.clone();
                Arrays.fill(fixedPtypes, i10, pos + arrayLength, elemType);
                return methodType(this.rtype, fixedPtypes);
            }
        }
        return this;
    }

    public Class<?> leadingReferenceParameter() {
        if (this.ptypes.length != 0) {
            Class<?> ptype = this.ptypes[0];
            if (!ptype.isPrimitive()) {
                return ptype;
            }
        }
        throw MethodHandleStatics.newIllegalArgumentException("no leading reference parameter");
    }

    public MethodType asCollectorType(Class<?> arrayType, int pos, int arrayLength) {
        MethodType res;
        if (!$assertionsDisabled && parameterCount() < 1) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && pos >= this.ptypes.length) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !this.ptypes[pos].isAssignableFrom(arrayType)) {
            throw new AssertionError();
        }
        if (arrayType == Object[].class) {
            res = genericMethodType(arrayLength);
            if (this.rtype != Object.class) {
                res = res.changeReturnType(this.rtype);
            }
        } else {
            Class<?> elemType = arrayType.getComponentType();
            if (!$assertionsDisabled && elemType == null) {
                throw new AssertionError();
            }
            res = methodType(this.rtype, (List<Class<?>>) Collections.nCopies(arrayLength, elemType));
        }
        if (this.ptypes.length == 1) {
            return res;
        }
        if (pos < this.ptypes.length - 1) {
            res = res.insertParameterTypes(arrayLength, (Class<?>[]) Arrays.copyOfRange(this.ptypes, pos + 1, this.ptypes.length));
        }
        return res.insertParameterTypes(0, (Class<?>[]) Arrays.copyOf(this.ptypes, pos));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public MethodType dropParameterTypes(int start, int end) {
        Class<?>[] nptypes;
        int len = this.ptypes.length;
        if (0 > start || start > end || end > len) {
            throw newIndexOutOfBoundsException("start=" + start + " end=" + end);
        }
        if (start == end) {
            return this;
        }
        if (start == 0) {
            if (end == len) {
                nptypes = NO_PTYPES;
            } else {
                nptypes = (Class[]) Arrays.copyOfRange(this.ptypes, end, len);
            }
        } else if (end == len) {
            nptypes = (Class[]) Arrays.copyOfRange(this.ptypes, 0, start);
        } else {
            int tail = len - end;
            nptypes = (Class[]) Arrays.copyOfRange(this.ptypes, 0, start + tail);
            System.arraycopy(this.ptypes, end, nptypes, start, tail);
        }
        return methodType(this.rtype, nptypes, true);
    }

    @Override
    public MethodType changeReturnType(Class<?> nrtype) {
        return returnType() == nrtype ? this : methodType(nrtype, this.ptypes, true);
    }

    public boolean hasPrimitives() {
        return this.form.hasPrimitives();
    }

    public boolean hasWrappers() {
        return unwrap() != this;
    }

    public MethodType erase() {
        return this.form.erasedType();
    }

    public MethodType basicType() {
        return this.form.basicType();
    }

    public MethodType invokerType() {
        return insertParameterTypes(0, METHOD_HANDLE_ARRAY);
    }

    public MethodType generic() {
        return genericMethodType(parameterCount());
    }

    public boolean isGeneric() {
        return this == erase() && !hasPrimitives();
    }

    public MethodType wrap() {
        return hasPrimitives() ? wrapWithPrims(this) : this;
    }

    public MethodType unwrap() {
        MethodType noprims = !hasPrimitives() ? this : wrapWithPrims(this);
        return unwrapWithNoPrims(noprims);
    }

    private static MethodType wrapWithPrims(MethodType pt) {
        if (!$assertionsDisabled && !pt.hasPrimitives()) {
            throw new AssertionError();
        }
        MethodType wt = (MethodType) pt.wrapAlt;
        if (wt == null) {
            wt = MethodTypeForm.canonicalize(pt, 2);
            if (!$assertionsDisabled && wt == null) {
                throw new AssertionError();
            }
            pt.wrapAlt = wt;
        }
        return wt;
    }

    private static MethodType unwrapWithNoPrims(MethodType wt) {
        if (!$assertionsDisabled && wt.hasPrimitives()) {
            throw new AssertionError();
        }
        MethodType uwt = (MethodType) wt.wrapAlt;
        if (uwt == null) {
            uwt = MethodTypeForm.canonicalize(wt, 3);
            if (uwt == null) {
                uwt = wt;
            }
            wt.wrapAlt = uwt;
        }
        return uwt;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Class<?> parameterType(int num) {
        return this.ptypes[num];
    }

    @Override
    public int parameterCount() {
        return this.ptypes.length;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Class<?> returnType() {
        return this.rtype;
    }

    @Override
    public List<Class<?>> parameterList() {
        return List.of(this.ptypes);
    }

    public Class<?> lastParameterType() {
        int len = this.ptypes.length;
        return len == 0 ? Void.TYPE : this.ptypes[len - 1];
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Class<?>[] parameterArray() {
        return (Class[]) this.ptypes.clone();
    }

    public boolean equals(Object x10) {
        if (this == x10) {
            return true;
        }
        if (x10 instanceof MethodType) {
            MethodType mt = (MethodType) x10;
            return equals(mt);
        }
        return false;
    }

    private boolean equals(MethodType that) {
        return this.rtype == that.rtype && Arrays.equals(this.ptypes, that.ptypes);
    }

    public int hashCode() {
        int hashCode = 31 + this.rtype.hashCode();
        for (Class<?> ptype : this.ptypes) {
            hashCode = (31 * hashCode) + ptype.hashCode();
        }
        return hashCode;
    }

    public String toString() {
        StringJoiner sj2 = new StringJoiner(DocLint.SEPARATOR, "(", ")" + this.rtype.getSimpleName());
        for (int i10 = 0; i10 < this.ptypes.length; i10++) {
            sj2.add(this.ptypes[i10].getSimpleName());
        }
        return sj2.toString();
    }

    public boolean effectivelyIdenticalParameters(int skipPos, List<Class<?>> fullList) {
        int myLen = this.ptypes.length;
        int fullLen = fullList.size();
        if (skipPos > myLen || myLen - skipPos > fullLen) {
            return false;
        }
        List<Class<?>> myList = Arrays.asList(this.ptypes);
        if (skipPos != 0) {
            myList = myList.subList(skipPos, myLen);
            myLen -= skipPos;
        }
        if (fullLen == myLen) {
            return myList.equals(fullList);
        }
        return myList.equals(fullList.subList(0, myLen));
    }

    public boolean isViewableAs(MethodType newType, boolean keepInterfaces) {
        if (!VerifyType.isNullConversion(returnType(), newType.returnType(), keepInterfaces)) {
            return false;
        }
        if ((this.form == newType.form && this.form.erasedType == this) || this.ptypes == newType.ptypes) {
            return true;
        }
        int argc = parameterCount();
        if (argc != newType.parameterCount()) {
            return false;
        }
        for (int i10 = 0; i10 < argc; i10++) {
            if (!VerifyType.isNullConversion(newType.parameterType(i10), parameterType(i10), keepInterfaces)) {
                return false;
            }
        }
        return true;
    }

    public boolean isConvertibleTo(MethodType newType) {
        MethodTypeForm oldForm = form();
        MethodTypeForm newForm = newType.form();
        if (oldForm == newForm) {
            return true;
        }
        if (!canConvert(returnType(), newType.returnType())) {
            return false;
        }
        Class<?>[] srcTypes = newType.ptypes;
        Class<?>[] dstTypes = this.ptypes;
        if (srcTypes == dstTypes) {
            return true;
        }
        int argc = srcTypes.length;
        if (argc != dstTypes.length) {
            return false;
        }
        if (argc <= 1) {
            if (argc == 1 && !canConvert(srcTypes[0], dstTypes[0])) {
                return false;
            }
            return true;
        }
        if ((!oldForm.hasPrimitives() && oldForm.erasedType == this) || (!newForm.hasPrimitives() && newForm.erasedType == newType)) {
            if ($assertionsDisabled || canConvertParameters(srcTypes, dstTypes)) {
                return true;
            }
            throw new AssertionError();
        }
        return canConvertParameters(srcTypes, dstTypes);
    }

    public boolean explicitCastEquivalentToAsType(MethodType newType) {
        if (this == newType) {
            return true;
        }
        if (!explicitCastEquivalentToAsType(this.rtype, newType.rtype)) {
            return false;
        }
        Class<?>[] srcTypes = newType.ptypes;
        Class<?>[] dstTypes = this.ptypes;
        if (dstTypes == srcTypes) {
            return true;
        }
        if (!$assertionsDisabled && dstTypes.length != srcTypes.length) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < dstTypes.length; i10++) {
            if (!explicitCastEquivalentToAsType(srcTypes[i10], dstTypes[i10])) {
                return false;
            }
        }
        return true;
    }

    private static boolean explicitCastEquivalentToAsType(Class<?> src, Class<?> dst) {
        if (src == dst || dst == Object.class || dst == Void.TYPE) {
            return true;
        }
        if (src.isPrimitive()) {
            return canConvert(src, dst);
        }
        if (dst.isPrimitive()) {
            return false;
        }
        return !dst.isInterface() || dst.isAssignableFrom(src);
    }

    private boolean canConvertParameters(Class<?>[] srcTypes, Class<?>[] dstTypes) {
        for (int i10 = 0; i10 < srcTypes.length; i10++) {
            if (!canConvert(srcTypes[i10], dstTypes[i10])) {
                return false;
            }
        }
        return true;
    }

    public static boolean canConvert(Class<?> src, Class<?> dst) {
        if (src == dst || src == Object.class || dst == Object.class) {
            return true;
        }
        if (src.isPrimitive()) {
            if (src == Void.TYPE) {
                return true;
            }
            Wrapper sw = Wrapper.forPrimitiveType(src);
            if (dst.isPrimitive()) {
                return Wrapper.forPrimitiveType(dst).isConvertibleFrom(sw);
            }
            return dst.isAssignableFrom(sw.wrapperType());
        }
        if (!dst.isPrimitive() || dst == Void.TYPE) {
            return true;
        }
        Wrapper dw = Wrapper.forPrimitiveType(dst);
        if (src.isAssignableFrom(dw.wrapperType())) {
            return true;
        }
        if (Wrapper.isWrapperType(src) && dw.isConvertibleFrom(Wrapper.forWrapperType(src))) {
            return true;
        }
        return false;
    }

    public int parameterSlotCount() {
        return this.form.parameterSlotCount();
    }

    public Invokers invokers() {
        Invokers inv = this.invokers;
        if (inv != null) {
            return inv;
        }
        Invokers inv2 = new Invokers(this);
        this.invokers = inv2;
        return inv2;
    }

    public static MethodType fromMethodDescriptorString(String descriptor, ClassLoader loader) throws IllegalArgumentException, TypeNotPresentException {
        return fromDescriptor(descriptor, loader == null ? ClassLoader.getSystemClassLoader() : loader);
    }

    public static MethodType fromDescriptor(String descriptor, ClassLoader loader) throws IllegalArgumentException, TypeNotPresentException {
        if (!descriptor.startsWith("(") || descriptor.indexOf(41) < 0 || descriptor.indexOf(46) >= 0) {
            throw MethodHandleStatics.newIllegalArgumentException("not a method descriptor: " + descriptor);
        }
        List<Class<?>> types = BytecodeDescriptor.parseMethod(descriptor, loader);
        Class<?> rtype = types.remove(types.size() - 1);
        Class<?>[] ptypes = listToArray(types);
        return methodType(rtype, ptypes, true);
    }

    public String toMethodDescriptorString() {
        String desc = this.methodDescriptor;
        if (desc == null) {
            desc = BytecodeDescriptor.unparseMethod(this.rtype, this.ptypes);
            this.methodDescriptor = desc;
        }
        return desc;
    }

    @Override
    public String descriptorString() {
        return toMethodDescriptorString();
    }

    static String toFieldDescriptorString(Class<?> cls) {
        return BytecodeDescriptor.unparse(cls);
    }

    @Override
    public Optional<MethodTypeDesc> describeConstable() {
        Optional<ClassDesc> retDesc = returnType().describeConstable();
        if (retDesc.isEmpty()) {
            return Optional.empty();
        }
        if (parameterCount() == 0) {
            return Optional.of(MethodTypeDesc.of(retDesc.get()));
        }
        ClassDesc[] params = new ClassDesc[parameterCount()];
        for (int i10 = 0; i10 < params.length; i10++) {
            Optional<ClassDesc> paramDesc = parameterType(i10).describeConstable();
            if (paramDesc.isEmpty()) {
                return Optional.empty();
            }
            params[i10] = paramDesc.get();
        }
        return Optional.of(MethodTypeDesc.of(retDesc.get(), params));
    }

    private void writeObject(ObjectOutputStream s10) throws IOException {
        s10.defaultWriteObject();
        s10.writeObject(returnType());
        s10.writeObject(parameterArray());
    }

    private void readObject(ObjectInputStream s10) throws IOException, ClassNotFoundException {
        MethodHandleStatics.UNSAFE.putReference(this, OffsetHolder.rtypeOffset, Void.TYPE);
        MethodHandleStatics.UNSAFE.putReference(this, OffsetHolder.ptypesOffset, NO_PTYPES);
        s10.defaultReadObject();
        Class<?> returnType = (Class) s10.readObject();
        Class<?>[] parameterArray = (Class[]) s10.readObject();
        this.wrapAlt = new MethodType[]{methodType(returnType, parameterArray)};
    }

    private static class OffsetHolder {
        static final long rtypeOffset = MethodHandleStatics.UNSAFE.objectFieldOffset(MethodType.class, "rtype");
        static final long ptypesOffset = MethodHandleStatics.UNSAFE.objectFieldOffset(MethodType.class, "ptypes");

        private OffsetHolder() {
        }
    }

    private Object readResolve() {
        MethodType mt = ((MethodType[]) this.wrapAlt)[0];
        this.wrapAlt = null;
        return mt;
    }

    private static void assemblySetup() {
        internTable.prepareForAOTCache();
    }
}
