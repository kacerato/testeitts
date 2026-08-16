package java.lang.invoke;

import java.lang.invoke.LambdaForm;
import java.lang.invoke.VarHandle;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Hidden;

final class VarHandleGuards {
    VarHandleGuards() {
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_L_L(VarHandle handle, Object arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_L_I(VarHandle handle, Object arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_L_J(VarHandle handle, Object arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_L_F(VarHandle handle, Object arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_L_D(VarHandle handle, Object arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard__L(VarHandle handle, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect());
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard__I(VarHandle handle, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect());
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard__J(VarHandle handle, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect());
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard__F(VarHandle handle, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect());
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard__D(VarHandle handle, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect());
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LI_L(VarHandle handle, Object arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LI_I(VarHandle handle, Object arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_LI_J(VarHandle handle, Object arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LI_F(VarHandle handle, Object arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LI_D(VarHandle handle, Object arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LJ_L(VarHandle handle, Object arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LJ_I(VarHandle handle, Object arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_LJ_J(VarHandle handle, Object arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LJ_F(VarHandle handle, Object arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LJ_D(VarHandle handle, Object arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LJJ_L(VarHandle handle, Object arg0, long arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LJJ_I(VarHandle handle, Object arg0, long arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_LJJ_J(VarHandle handle, Object arg0, long arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LJJ_F(VarHandle handle, Object arg0, long arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LJJ_D(VarHandle handle, Object arg0, long arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LL_V(VarHandle handle, Object arg0, Object arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LI_V(VarHandle handle, Object arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJ_V(VarHandle handle, Object arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LF_V(VarHandle handle, Object arg0, float arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LD_V(VarHandle handle, Object arg0, double arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_L_V(VarHandle handle, Object arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_I_V(VarHandle handle, int arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_J_V(VarHandle handle, long arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_F_V(VarHandle handle, float arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_D_V(VarHandle handle, double arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LIL_V(VarHandle handle, Object arg0, int arg1, Object arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LII_V(VarHandle handle, Object arg0, int arg1, int arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LIJ_V(VarHandle handle, Object arg0, int arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LIF_V(VarHandle handle, Object arg0, int arg1, float arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LID_V(VarHandle handle, Object arg0, int arg1, double arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJL_V(VarHandle handle, Object arg0, long arg1, Object arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJI_V(VarHandle handle, Object arg0, long arg1, int arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJJ_V(VarHandle handle, Object arg0, long arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJF_V(VarHandle handle, Object arg0, long arg1, float arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJD_V(VarHandle handle, Object arg0, long arg1, double arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJJL_V(VarHandle handle, Object arg0, long arg1, long arg2, Object arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJJI_V(VarHandle handle, Object arg0, long arg1, long arg2, int arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJJJ_V(VarHandle handle, Object arg0, long arg1, long arg2, long arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJJF_V(VarHandle handle, Object arg0, long arg1, long arg2, float arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final void guard_LJJD_V(VarHandle handle, Object arg0, long arg1, long arg2, double arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else if (direct && handle.vform.getMethodType_V(ad2.type) == ad2.symbolicMethodTypeErased) {
            MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        } else {
            MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
            mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
        }
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LLL_Z(VarHandle handle, Object arg0, Object arg1, Object arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LII_Z(VarHandle handle, Object arg0, int arg1, int arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJJ_Z(VarHandle handle, Object arg0, long arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LFF_Z(VarHandle handle, Object arg0, float arg1, float arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LDD_Z(VarHandle handle, Object arg0, double arg1, double arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LL_Z(VarHandle handle, Object arg0, Object arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_II_Z(VarHandle handle, int arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_JJ_Z(VarHandle handle, long arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_FF_Z(VarHandle handle, float arg0, float arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_DD_Z(VarHandle handle, double arg0, double arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LILL_Z(VarHandle handle, Object arg0, int arg1, Object arg2, Object arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LIII_Z(VarHandle handle, Object arg0, int arg1, int arg2, int arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LIJJ_Z(VarHandle handle, Object arg0, int arg1, long arg2, long arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LIFF_Z(VarHandle handle, Object arg0, int arg1, float arg2, float arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LIDD_Z(VarHandle handle, Object arg0, int arg1, double arg2, double arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJLL_Z(VarHandle handle, Object arg0, long arg1, Object arg2, Object arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJII_Z(VarHandle handle, Object arg0, long arg1, int arg2, int arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJJJ_Z(VarHandle handle, Object arg0, long arg1, long arg2, long arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJFF_Z(VarHandle handle, Object arg0, long arg1, float arg2, float arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJDD_Z(VarHandle handle, Object arg0, long arg1, double arg2, double arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJJLL_Z(VarHandle handle, Object arg0, long arg1, long arg2, Object arg3, Object arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJJII_Z(VarHandle handle, Object arg0, long arg1, long arg2, int arg3, int arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJJJJ_Z(VarHandle handle, Object arg0, long arg1, long arg2, long arg3, long arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJJFF_Z(VarHandle handle, Object arg0, long arg1, long arg2, float arg3, float arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final boolean guard_LJJDD_Z(VarHandle handle, Object arg0, long arg1, long arg2, double arg3, double arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LLL_L(VarHandle handle, Object arg0, Object arg1, Object arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LII_I(VarHandle handle, Object arg0, int arg1, int arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LFF_F(VarHandle handle, Object arg0, float arg1, float arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LDD_D(VarHandle handle, Object arg0, double arg1, double arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LL_L(VarHandle handle, Object arg0, Object arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_II_I(VarHandle handle, int arg0, int arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_JJ_J(VarHandle handle, long arg0, long arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_FF_F(VarHandle handle, float arg0, float arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_DD_D(VarHandle handle, double arg0, double arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LILL_L(VarHandle handle, Object arg0, int arg1, Object arg2, Object arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LIII_I(VarHandle handle, Object arg0, int arg1, int arg2, int arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_LIJJ_J(VarHandle handle, Object arg0, int arg1, long arg2, long arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LIFF_F(VarHandle handle, Object arg0, int arg1, float arg2, float arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LIDD_D(VarHandle handle, Object arg0, int arg1, double arg2, double arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LJLL_L(VarHandle handle, Object arg0, long arg1, Object arg2, Object arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LJII_I(VarHandle handle, Object arg0, long arg1, int arg2, int arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_LJJJ_J(VarHandle handle, Object arg0, long arg1, long arg2, long arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LJFF_F(VarHandle handle, Object arg0, long arg1, float arg2, float arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LJDD_D(VarHandle handle, Object arg0, long arg1, double arg2, double arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LJJLL_L(VarHandle handle, Object arg0, long arg1, long arg2, Object arg3, Object arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LJJII_I(VarHandle handle, Object arg0, long arg1, long arg2, int arg3, int arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_LJJJJ_J(VarHandle handle, Object arg0, long arg1, long arg2, long arg3, long arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LJJFF_F(VarHandle handle, Object arg0, long arg1, long arg2, float arg3, float arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LJJDD_D(VarHandle handle, Object arg0, long arg1, long arg2, double arg3, double arg4, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, arg4, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3, arg4);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LF_F(VarHandle handle, Object arg0, float arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LD_D(VarHandle handle, Object arg0, double arg1, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_I_I(VarHandle handle, int arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_J_J(VarHandle handle, long arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_F_F(VarHandle handle, float arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_D_D(VarHandle handle, double arg0, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LIL_L(VarHandle handle, Object arg0, int arg1, Object arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final long guard_LIJ_J(VarHandle handle, Object arg0, int arg1, long arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LIF_F(VarHandle handle, Object arg0, int arg1, float arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LID_D(VarHandle handle, Object arg0, int arg1, double arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LJL_L(VarHandle handle, Object arg0, long arg1, Object arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LJI_I(VarHandle handle, Object arg0, long arg1, int arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LJF_F(VarHandle handle, Object arg0, long arg1, float arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LJD_D(VarHandle handle, Object arg0, long arg1, double arg2, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final Object guard_LJJL_L(VarHandle handle, Object arg0, long arg1, long arg2, Object arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            Object r10 = MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
            return ad2.returnType.cast(r10);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final int guard_LJJI_I(VarHandle handle, Object arg0, long arg1, long arg2, int arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final float guard_LJJF_F(VarHandle handle, Object arg0, long arg1, long arg2, float arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }

    @LambdaForm.Compiled
    @ForceInline
    @Hidden
    static final double guard_LJJD_D(VarHandle handle, Object arg0, long arg1, long arg2, double arg3, VarHandle.AccessDescriptor ad2) throws Throwable {
        boolean direct = handle.checkAccessModeThenIsDirect(ad2);
        if (direct && handle.vform.methodType_table[ad2.type] == ad2.symbolicMethodTypeErased) {
            return MethodHandle.linkToStatic(handle, arg0, arg1, arg2, arg3, handle.vform.getMemberName(ad2.mode));
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        return mh2.asType(ad2.symbolicMethodTypeInvoker).invokeBasic(handle.asDirect(), arg0, arg1, arg2, arg3);
    }
}
