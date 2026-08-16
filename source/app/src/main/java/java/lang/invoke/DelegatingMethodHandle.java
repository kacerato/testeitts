package java.lang.invoke;

import java.lang.invoke.LambdaForm;
import java.util.Arrays;
import java.util.Objects;

public abstract class DelegatingMethodHandle extends MethodHandle {
    static final LambdaForm.NamedFunction NF_getTarget;
    static final boolean $assertionsDisabled;

    public abstract MethodHandle getTarget();

    @Override
    abstract MethodHandle asTypeUncached(MethodType methodType);

    static {
        $assertionsDisabled = !DelegatingMethodHandle.class.desiredAssertionStatus();
        try {
            MemberName member = new MemberName((Class<?>) DelegatingMethodHandle.class, "getTarget", MethodType.methodType(MethodHandle.class), (byte) 5);
            NF_getTarget = new LambdaForm.NamedFunction(MemberName.getFactory().resolveOrFail((byte) 5, member, DelegatingMethodHandle.class, -1, NoSuchMethodException.class));
            MethodHandleStatics.UNSAFE.ensureClassInitialized(Holder.class);
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    protected DelegatingMethodHandle(MethodHandle target) {
        this(target.type(), target);
    }

    public DelegatingMethodHandle(MethodType type, MethodHandle target) {
        super(type, chooseDelegatingForm(target));
    }

    public DelegatingMethodHandle(MethodType type, LambdaForm form) {
        super(type, form);
    }

    @Override
    public MemberName internalMemberName() {
        return getTarget().internalMemberName();
    }

    @Override
    public boolean isCrackable() {
        MemberName member = internalMemberName();
        return member != null && (member.isResolved() || member.isMethodHandleInvoke() || member.isVarHandleMethodInvoke());
    }

    @Override
    public MethodHandle viewAsType(MethodType newType, boolean strict) {
        return getTarget().viewAsType(newType, strict);
    }

    @Override
    public boolean isInvokeSpecial() {
        return getTarget().isInvokeSpecial();
    }

    @Override
    public Class<?> internalCallerClass() {
        return getTarget().internalCallerClass();
    }

    @Override
    MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
        throw MethodHandleStatics.newIllegalArgumentException("do not use this");
    }

    @Override
    public String internalProperties() {
        return "\n& Class=" + getClass().getSimpleName() + "\n& Target=" + getTarget().debugString();
    }

    @Override
    public BoundMethodHandle rebind() {
        return getTarget().rebind();
    }

    private static LambdaForm chooseDelegatingForm(MethodHandle target) {
        if (target instanceof SimpleMethodHandle) {
            return target.internalForm();
        }
        return makeReinvokerForm(target, 8, DelegatingMethodHandle.class, NF_getTarget);
    }

    public static LambdaForm makeReinvokerForm(MethodHandle target, int whichCache, Object constraint, LambdaForm.NamedFunction getTargetFn) {
        return makeReinvokerForm(target, whichCache, constraint, true, getTargetFn, null);
    }

    public static LambdaForm makeReinvokerForm(MethodHandle target, int whichCache, Object constraint, boolean forceInline, LambdaForm.NamedFunction getTargetFn, LambdaForm.NamedFunction preActionFn) {
        int i10;
        int i11;
        LambdaForm form;
        MethodType mtype = target.type().basicType();
        LambdaForm.Kind kind = whichKind(whichCache);
        boolean customized = whichCache < 0 || mtype.parameterSlotCount() > 253;
        boolean hasPreAction = preActionFn != null;
        if (!customized && (form = mtype.form().cachedLambdaForm(whichCache)) != null) {
            return form;
        }
        int ARG_LIMIT = 1 + mtype.parameterCount();
        int nameCursor = ARG_LIMIT;
        if (hasPreAction) {
            i10 = nameCursor;
            nameCursor++;
        } else {
            i10 = -1;
        }
        int PRE_ACTION = i10;
        if (customized) {
            i11 = -1;
        } else {
            i11 = nameCursor;
            nameCursor++;
        }
        int NEXT_MH = i11;
        int REINVOKE = nameCursor;
        int nameCursor2 = nameCursor + 1;
        LambdaForm.Name[] names = LambdaForm.invokeArguments(nameCursor2 - ARG_LIMIT, mtype);
        if (!$assertionsDisabled && names.length != nameCursor2) {
            throw new AssertionError();
        }
        names[0] = names[0].withConstraint(constraint);
        if (hasPreAction) {
            names[PRE_ACTION] = new LambdaForm.Name(preActionFn, names[0]);
        }
        if (customized) {
            names[REINVOKE] = new LambdaForm.Name(target, Arrays.copyOfRange(names, 1, ARG_LIMIT, Object[].class));
        } else {
            names[NEXT_MH] = new LambdaForm.Name(getTargetFn, names[0]);
            Object[] targetArgs = Arrays.copyOfRange(names, 0, ARG_LIMIT, Object[].class);
            targetArgs[0] = names[NEXT_MH];
            names[REINVOKE] = new LambdaForm.Name(mtype, targetArgs);
        }
        LambdaForm form2 = LambdaForm.create(ARG_LIMIT, names, forceInline, kind);
        if (!customized) {
            form2 = mtype.form().setCachedLambdaForm(whichCache, form2);
        }
        return form2;
    }

    private static LambdaForm.Kind whichKind(int whichCache) {
        switch (whichCache) {
            case 7:
                return LambdaForm.Kind.BOUND_REINVOKER;
            case 8:
                return LambdaForm.Kind.DELEGATE;
            default:
                return LambdaForm.Kind.REINVOKER;
        }
    }

    final class Holder {
        Holder(DelegatingMethodHandle this$0) {
            Objects.requireNonNull(this$0);
        }
    }
}
