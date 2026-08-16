package java.lang.invoke;

import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import jdk.internal.vm.annotation.DontInline;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Hidden;
import jdk.internal.vm.annotation.Stable;

public final class VarForm {
    final Class<?> implClass;

    @Stable
    final MethodType[] methodType_table;

    @Stable
    final MemberName[] memberName_table;

    @Stable
    MethodType[] methodType_V_table;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !VarForm.class.desiredAssertionStatus();
    }

    public VarForm(Class<?> implClass, Class<?> receiver, Class<?> value, Class<?>... intermediate) {
        this.methodType_table = new MethodType[VarHandle.AccessType.COUNT];
        this.memberName_table = new MemberName[VarHandle.AccessMode.COUNT];
        this.implClass = implClass;
        if (receiver == null) {
            initMethodTypes(value, intermediate);
            return;
        }
        Class<?>[] coordinates = new Class[intermediate.length + 1];
        coordinates[0] = receiver;
        System.arraycopy(intermediate, 0, coordinates, 1, intermediate.length);
        initMethodTypes(value, coordinates);
    }

    public VarForm(Class<?> implClass, VarForm methodTypeSource) {
        this.implClass = implClass;
        this.methodType_table = methodTypeSource.methodType_table;
        this.methodType_V_table = methodTypeSource.methodType_V_table;
        this.memberName_table = new MemberName[VarHandle.AccessMode.COUNT];
        if (!$assertionsDisabled && !assertMethodTypeTableInitialized()) {
            throw new AssertionError(implClass);
        }
    }

    public VarForm(Class<?> value, Class<?>[] coordinates) {
        this.methodType_table = new MethodType[VarHandle.AccessType.COUNT];
        this.memberName_table = null;
        this.implClass = null;
        initMethodTypes(value, coordinates);
    }

    void initMethodTypes(Class<?> value, Class<?>... coordinates) {
        Class<?> erasedValue = MethodTypeForm.canonicalize(value, 1);
        Class<?>[] erasedCoordinates = MethodTypeForm.canonicalizeAll(coordinates, 1);
        if (erasedValue != null) {
            value = erasedValue;
        }
        if (erasedCoordinates != null) {
            coordinates = erasedCoordinates;
        }
        MethodType type = MethodType.methodType(value, coordinates);
        this.methodType_table[VarHandle.AccessType.GET.ordinal()] = type;
        MethodType[] methodTypeArr = this.methodType_table;
        int ordinal = VarHandle.AccessType.GET_AND_UPDATE.ordinal();
        MethodType type2 = type.appendParameterTypes(value);
        methodTypeArr[ordinal] = type2;
        this.methodType_table[VarHandle.AccessType.SET.ordinal()] = type2.changeReturnType((Class<?>) Void.TYPE);
        MethodType[] methodTypeArr2 = this.methodType_table;
        int ordinal2 = VarHandle.AccessType.COMPARE_AND_EXCHANGE.ordinal();
        MethodType type3 = type2.appendParameterTypes(value);
        methodTypeArr2[ordinal2] = type3;
        this.methodType_table[VarHandle.AccessType.COMPARE_AND_SET.ordinal()] = type3.changeReturnType((Class<?>) Boolean.TYPE);
    }

    private boolean assertMethodTypeTableInitialized() {
        if (this.methodType_table == null) {
            return false;
        }
        for (int i10 = 0; i10 < VarHandle.AccessType.COUNT; i10++) {
            if (!$assertionsDisabled && this.methodType_table[i10] == null) {
                throw new AssertionError((Object) (((Object) this.implClass) + " " + ((Object) VarHandle.AccessType.values()[i10])));
            }
        }
        return true;
    }

    @ForceInline
    final MethodType getMethodType(int type) {
        return this.methodType_table[type];
    }

    @ForceInline
    @Hidden
    public final MemberName getMemberName(int mode) {
        MemberName mn2 = this.memberName_table[mode];
        if (mn2 == null) {
            mn2 = resolveMemberName(mode);
            if (mn2 == null) {
                throw new UnsupportedOperationException(VarHandle.AccessMode.valueFromOrdinal(mode).methodName());
            }
        }
        return mn2;
    }

    @ForceInline
    public final MemberName getMemberNameOrNull(int mode) {
        MemberName mn2 = this.memberName_table[mode];
        if (mn2 == null) {
            mn2 = resolveMemberName(mode);
        }
        return mn2;
    }

    @DontInline
    MemberName resolveMemberName(int mode) {
        VarHandle.AccessMode value = VarHandle.AccessMode.valueFromOrdinal(mode);
        String methodName = value.methodName();
        MethodType type = this.methodType_table[value.at.ordinal()].insertParameterTypes(0, VarHandle.class);
        if (!$assertionsDisabled && MethodHandleStatics.UNSAFE.shouldBeInitialized(this.implClass)) {
            throw new AssertionError(this.implClass);
        }
        MemberName[] memberNameArr = this.memberName_table;
        MemberName resolveOrNull = MethodHandles.Lookup.IMPL_LOOKUP.resolveOrNull((byte) 6, this.implClass, methodName, type);
        memberNameArr[mode] = resolveOrNull;
        return resolveOrNull;
    }

    @ForceInline
    final MethodType[] getMethodType_V_init() {
        MethodType[] table = new MethodType[VarHandle.AccessType.values().length];
        for (int i10 = 0; i10 < this.methodType_table.length; i10++) {
            MethodType mt = this.methodType_table[i10];
            table[i10] = mt.changeReturnType((Class<?>) Void.TYPE);
        }
        this.methodType_V_table = table;
        return table;
    }

    @ForceInline
    public final MethodType getMethodType_V(int type) {
        MethodType[] table = this.methodType_V_table;
        if (table == null) {
            table = getMethodType_V_init();
        }
        return table[type];
    }
}
