package java.lang.invoke;

import java.lang.ref.SoftReference;
import sun.invoke.util.Wrapper;

public final class MethodTypeForm {
    final short parameterSlotCount;
    final short primitiveCount;
    final MethodType erasedType;
    final MethodType basicType;
    private final SoftReference<MethodHandle>[] methodHandles;
    static final int MH_BASIC_INV = 0;
    static final int MH_NF_INV = 1;
    static final int MH_UNINIT_CS = 2;
    static final int MH_LIMIT = 3;
    private final SoftReference<LambdaForm>[] lambdaForms;
    private SoftReference<MemberName> interpretEntry;
    static final int LF_INVVIRTUAL = 0;
    static final int LF_INVSTATIC = 1;
    static final int LF_INVSPECIAL = 2;
    static final int LF_NEWINVSPECIAL = 3;
    static final int LF_INVINTERFACE = 4;
    static final int LF_INVSTATIC_INIT = 5;
    static final int LF_REBIND = 7;
    static final int LF_DELEGATE = 8;
    static final int LF_DELEGATE_BLOCK_INLINING = 9;
    static final int LF_EX_LINKER = 10;
    static final int LF_EX_INVOKER = 11;
    static final int LF_GEN_LINKER = 12;
    static final int LF_GEN_INVOKER = 13;
    static final int LF_CS_LINKER = 14;
    static final int LF_MH_LINKER = 15;
    static final int LF_GWC = 16;
    static final int LF_GWT = 17;
    static final int LF_TF = 18;
    static final int LF_LOOP = 19;
    static final int LF_INVSPECIAL_IFC = 20;
    static final int LF_INVNATIVE = 21;
    static final int LF_VH_EX_INVOKER = 22;
    static final int LF_VH_GEN_INVOKER = 23;
    static final int LF_VH_GEN_LINKER = 24;
    static final int LF_COLLECTOR = 25;
    static final int LF_LIMIT = 26;
    public static final int ERASE = 1;
    public static final int WRAP = 2;
    public static final int UNWRAP = 3;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !MethodTypeForm.class.desiredAssertionStatus();
    }

    public MethodType erasedType() {
        return this.erasedType;
    }

    public MethodType basicType() {
        return this.basicType;
    }

    public MethodHandle cachedMethodHandle(int which) {
        SoftReference<MethodHandle> entry = this.methodHandles[which];
        if (entry != null) {
            return entry.get();
        }
        return null;
    }

    public synchronized MethodHandle setCachedMethodHandle(int which, MethodHandle mh2) {
        MethodHandle prev = cachedMethodHandle(which);
        if (prev != null) {
            return prev;
        }
        this.methodHandles[which] = new SoftReference<>(mh2);
        return mh2;
    }

    public LambdaForm cachedLambdaForm(int which) {
        SoftReference<LambdaForm> entry = this.lambdaForms[which];
        if (entry != null) {
            return entry.get();
        }
        return null;
    }

    public synchronized LambdaForm setCachedLambdaForm(int which, LambdaForm form) {
        LambdaForm prev = cachedLambdaForm(which);
        if (prev != null) {
            return prev;
        }
        this.lambdaForms[which] = new SoftReference<>(form);
        return form;
    }

    public MemberName cachedInterpretEntry() {
        if (this.interpretEntry == null) {
            return null;
        }
        return this.interpretEntry.get();
    }

    public synchronized MemberName setCachedInterpretEntry(MemberName mn2) {
        MemberName prev = cachedInterpretEntry();
        if (prev != null) {
            return prev;
        }
        this.interpretEntry = new SoftReference<>(mn2);
        return mn2;
    }

    protected MethodTypeForm(MethodType erasedType) {
        this.erasedType = erasedType;
        Class<?>[] ptypes = erasedType.ptypes();
        int pslotCount = ptypes.length;
        short primitiveCount = 0;
        short longArgCount = 0;
        Class<?>[] basicPtypes = ptypes;
        for (int i10 = 0; i10 < ptypes.length; i10++) {
            Class<?> ptype = ptypes[i10];
            if (ptype != Object.class) {
                primitiveCount = (short) (primitiveCount + 1);
                Wrapper w10 = Wrapper.forPrimitiveType(ptype);
                longArgCount = w10.isDoubleWord() ? (short) (longArgCount + 1) : longArgCount;
                if (w10.isSubwordOrInt() && ptype != Integer.TYPE) {
                    basicPtypes = basicPtypes == ptypes ? (Class[]) basicPtypes.clone() : basicPtypes;
                    basicPtypes[i10] = Integer.TYPE;
                }
            }
        }
        int pslotCount2 = pslotCount + longArgCount;
        Class<?> returnType = erasedType.returnType();
        Class<?> basicReturnType = returnType;
        if (returnType != Object.class) {
            primitiveCount = (short) (primitiveCount + 1);
            if (Wrapper.forPrimitiveType(returnType).isSubwordOrInt() && returnType != Integer.TYPE) {
                basicReturnType = Integer.TYPE;
            }
        }
        if (ptypes == basicPtypes && basicReturnType == returnType) {
            this.basicType = erasedType;
            if (pslotCount2 >= 256) {
                throw MethodHandleStatics.newIllegalArgumentException("too many arguments");
            }
            this.primitiveCount = primitiveCount;
            this.parameterSlotCount = (short) pslotCount2;
            this.lambdaForms = new SoftReference[26];
            this.methodHandles = new SoftReference[3];
            return;
        }
        this.basicType = MethodType.methodType(basicReturnType, basicPtypes, true);
        MethodTypeForm that = this.basicType.form();
        if (!$assertionsDisabled && this == that) {
            throw new AssertionError();
        }
        this.parameterSlotCount = that.parameterSlotCount;
        this.primitiveCount = that.primitiveCount;
        this.methodHandles = null;
        this.lambdaForms = null;
    }

    public int parameterCount() {
        return this.erasedType.parameterCount();
    }

    public int parameterSlotCount() {
        return this.parameterSlotCount;
    }

    public boolean hasPrimitives() {
        return this.primitiveCount != 0;
    }

    public static MethodTypeForm findForm(MethodType mt) {
        MethodType erased = canonicalize(mt, 1);
        if (erased == null) {
            return new MethodTypeForm(mt);
        }
        return erased.form();
    }

    public static MethodType canonicalize(MethodType mt, int how) {
        Class<?>[] ptypes = mt.ptypes();
        Class<?>[] ptypesCanonical = canonicalizeAll(ptypes, how);
        Class<?> rtype = mt.returnType();
        Class<?> rtypeCanonical = canonicalize(rtype, how);
        if (ptypesCanonical == null && rtypeCanonical == null) {
            return null;
        }
        if (rtypeCanonical == null) {
            rtypeCanonical = rtype;
        }
        if (ptypesCanonical == null) {
            ptypesCanonical = ptypes;
        }
        return MethodType.methodType(rtypeCanonical, ptypesCanonical, true);
    }

    public static Class<?> canonicalize(Class<?> t10, int how) {
        if (t10 != Object.class) {
            if (!t10.isPrimitive()) {
                switch (how) {
                    case 1:
                        return Object.class;
                    case 3:
                        Class<?> ct = Wrapper.asPrimitiveType(t10);
                        if (ct != t10) {
                            return ct;
                        }
                        return null;
                    default:
                        return null;
                }
            }
            if (how == 2) {
                return Wrapper.asWrapperType(t10);
            }
            return null;
        }
        return null;
    }

    public static Class<?>[] canonicalizeAll(Class<?>[] ts, int how) {
        Class<?>[] cs = null;
        int imax = ts.length;
        for (int i10 = 0; i10 < imax; i10++) {
            Class<?> c10 = canonicalize(ts[i10], how);
            if (c10 != null && c10 != Void.TYPE) {
                if (cs == null) {
                    cs = (Class[]) ts.clone();
                }
                cs[i10] = c10;
            }
        }
        return cs;
    }

    public String toString() {
        return "Form" + ((Object) this.erasedType);
    }
}
