package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import com.android.dx.util.MutabilityControl;

public final class ExecutionStack extends MutabilityControl {
    private final boolean[] local;
    private final TypeBearer[] stack;
    private int stackPtr;

    public ExecutionStack(int i10) {
        super(i10 != 0);
        this.stack = new TypeBearer[i10];
        this.local = new boolean[i10];
        this.stackPtr = 0;
    }

    private static String stackElementString(TypeBearer typeBearer) {
        return typeBearer == null ? "<invalid>" : typeBearer.toString();
    }

    private static TypeBearer throwSimException(String str) {
        throw new SimException("stack: " + str);
    }

    public void annotate(ExceptionWithContext exceptionWithContext) {
        int i10 = this.stackPtr - 1;
        int i11 = 0;
        while (i11 <= i10) {
            exceptionWithContext.addContext("stack[" + (i11 == i10 ? "top0" : Hex.u2(i10 - i11)) + "]: " + stackElementString(this.stack[i11]));
            i11++;
        }
    }

    public void change(int i10, TypeBearer typeBearer) {
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            int i11 = (this.stackPtr - i10) - 1;
            TypeBearer typeBearer2 = this.stack[i11];
            if (typeBearer2 == null || typeBearer2.getType().getCategory() != frameType.getType().getCategory()) {
                throwSimException("incompatible substitution: " + stackElementString(typeBearer2) + " -> " + stackElementString(frameType));
            }
            this.stack[i11] = frameType;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    public void clear() {
        throwIfImmutable();
        for (int i10 = 0; i10 < this.stackPtr; i10++) {
            this.stack[i10] = null;
            this.local[i10] = false;
        }
        this.stackPtr = 0;
    }

    public ExecutionStack copy() {
        ExecutionStack executionStack = new ExecutionStack(this.stack.length);
        TypeBearer[] typeBearerArr = this.stack;
        System.arraycopy(typeBearerArr, 0, executionStack.stack, 0, typeBearerArr.length);
        boolean[] zArr = this.local;
        System.arraycopy(zArr, 0, executionStack.local, 0, zArr.length);
        executionStack.stackPtr = this.stackPtr;
        return executionStack;
    }

    public int getMaxStack() {
        return this.stack.length;
    }

    public void makeInitialized(Type type) {
        if (this.stackPtr == 0) {
            return;
        }
        throwIfImmutable();
        Type initializedType = type.getInitializedType();
        for (int i10 = 0; i10 < this.stackPtr; i10++) {
            TypeBearer[] typeBearerArr = this.stack;
            if (typeBearerArr[i10] == type) {
                typeBearerArr[i10] = initializedType;
            }
        }
    }

    public ExecutionStack merge(ExecutionStack executionStack) {
        try {
            return Merger.mergeStack(this, executionStack);
        } catch (SimException e10) {
            e10.addContext("underlay stack:");
            annotate(e10);
            e10.addContext("overlay stack:");
            executionStack.annotate(e10);
            throw e10;
        }
    }

    public TypeBearer peek(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("n < 0");
        }
        return i10 >= this.stackPtr ? throwSimException("underflow") : this.stack[(r0 - i10) - 1];
    }

    public boolean peekLocal(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("n < 0");
        }
        if (i10 < this.stackPtr) {
            return this.local[(r0 - i10) - 1];
        }
        throw new SimException("stack: underflow");
    }

    public Type peekType(int i10) {
        return peek(i10).getType();
    }

    public TypeBearer pop() {
        throwIfImmutable();
        TypeBearer peek = peek(0);
        TypeBearer[] typeBearerArr = this.stack;
        int i10 = this.stackPtr;
        typeBearerArr[i10 - 1] = null;
        this.local[i10 - 1] = false;
        this.stackPtr = i10 - peek.getType().getCategory();
        return peek;
    }

    public void push(TypeBearer typeBearer) {
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            int category = frameType.getType().getCategory();
            int i10 = this.stackPtr;
            int i11 = i10 + category;
            TypeBearer[] typeBearerArr = this.stack;
            if (i11 > typeBearerArr.length) {
                throwSimException("overflow");
                return;
            }
            if (category == 2) {
                typeBearerArr[i10] = null;
                this.stackPtr = i10 + 1;
            }
            int i12 = this.stackPtr;
            typeBearerArr[i12] = frameType;
            this.stackPtr = i12 + 1;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    public void setLocal() {
        throwIfImmutable();
        this.local[this.stackPtr] = true;
    }

    public int size() {
        return this.stackPtr;
    }
}
