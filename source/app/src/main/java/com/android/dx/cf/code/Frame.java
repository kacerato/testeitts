package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.util.IntList;

public final class Frame {
    private final LocalsArray locals;
    private final ExecutionStack stack;
    private final IntList subroutines;

    private Frame(LocalsArray localsArray, ExecutionStack executionStack) {
        this(localsArray, executionStack, IntList.EMPTY);
    }

    private static LocalsArray adjustLocalsForSubroutines(LocalsArray localsArray, IntList intList) {
        if (!(localsArray instanceof LocalsArraySet)) {
            return localsArray;
        }
        LocalsArraySet localsArraySet = (LocalsArraySet) localsArray;
        return intList.size() == 0 ? localsArraySet.getPrimary() : localsArraySet;
    }

    private IntList mergeSubroutineLists(IntList intList) {
        if (this.subroutines.equals(intList)) {
            return this.subroutines;
        }
        IntList intList2 = new IntList();
        int size = this.subroutines.size();
        int size2 = intList.size();
        for (int i10 = 0; i10 < size && i10 < size2 && this.subroutines.get(i10) == intList.get(i10); i10++) {
            intList2.add(i10);
        }
        intList2.setImmutable();
        return intList2;
    }

    public void annotate(ExceptionWithContext exceptionWithContext) {
        this.locals.annotate(exceptionWithContext);
        this.stack.annotate(exceptionWithContext);
    }

    public Frame copy() {
        return new Frame(this.locals.copy(), this.stack.copy(), this.subroutines);
    }

    public LocalsArray getLocals() {
        return this.locals;
    }

    public ExecutionStack getStack() {
        return this.stack;
    }

    public IntList getSubroutines() {
        return this.subroutines;
    }

    public void initializeWithParameters(StdTypeList stdTypeList) {
        int size = stdTypeList.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            Type type = stdTypeList.get(i11);
            this.locals.set(i10, type);
            i10 += type.getCategory();
        }
    }

    public Frame makeExceptionHandlerStartFrame(CstType cstType) {
        ExecutionStack copy = getStack().copy();
        copy.clear();
        copy.push(cstType);
        return new Frame(getLocals(), copy, this.subroutines);
    }

    public void makeInitialized(Type type) {
        this.locals.makeInitialized(type);
        this.stack.makeInitialized(type);
    }

    public Frame makeNewSubroutineStartFrame(int i10, int i11) {
        this.subroutines.mutableCopy().add(i10);
        return new Frame(this.locals.getPrimary(), this.stack, IntList.makeImmutable(i10)).mergeWithSubroutineCaller(this, i10, i11);
    }

    public Frame mergeWith(Frame frame) {
        LocalsArray merge = getLocals().merge(frame.getLocals());
        ExecutionStack merge2 = getStack().merge(frame.getStack());
        IntList mergeSubroutineLists = mergeSubroutineLists(frame.subroutines);
        LocalsArray adjustLocalsForSubroutines = adjustLocalsForSubroutines(merge, mergeSubroutineLists);
        return (adjustLocalsForSubroutines == getLocals() && merge2 == getStack() && this.subroutines == mergeSubroutineLists) ? this : new Frame(adjustLocalsForSubroutines, merge2, mergeSubroutineLists);
    }

    public Frame mergeWithSubroutineCaller(Frame frame, int i10, int i11) {
        IntList intList;
        LocalsArraySet mergeWithSubroutineCaller = getLocals().mergeWithSubroutineCaller(frame.getLocals(), i11);
        ExecutionStack merge = getStack().merge(frame.getStack());
        IntList mutableCopy = frame.subroutines.mutableCopy();
        mutableCopy.add(i10);
        mutableCopy.setImmutable();
        if (mergeWithSubroutineCaller == getLocals() && merge == getStack() && this.subroutines.equals(mutableCopy)) {
            return this;
        }
        if (this.subroutines.equals(mutableCopy)) {
            mutableCopy = this.subroutines;
        } else {
            if (this.subroutines.size() > mutableCopy.size()) {
                intList = mutableCopy;
                mutableCopy = this.subroutines;
            } else {
                intList = this.subroutines;
            }
            int size = mutableCopy.size();
            int size2 = intList.size();
            for (int i12 = size2 - 1; i12 >= 0; i12--) {
                if (intList.get(i12) != mutableCopy.get((size - size2) + i12)) {
                    throw new RuntimeException("Incompatible merged subroutines");
                }
            }
        }
        return new Frame(mergeWithSubroutineCaller, merge, mutableCopy);
    }

    public void setImmutable() {
        this.locals.setImmutable();
        this.stack.setImmutable();
    }

    public Frame subFrameForLabel(int i10, int i11) {
        LocalsArray localsArray = this.locals;
        LocalsArray subArrayForLabel = localsArray instanceof LocalsArraySet ? ((LocalsArraySet) localsArray).subArrayForLabel(i11) : null;
        try {
            IntList mutableCopy = this.subroutines.mutableCopy();
            if (mutableCopy.pop() != i10) {
                throw new RuntimeException("returning from invalid subroutine");
            }
            mutableCopy.setImmutable();
            if (subArrayForLabel == null) {
                return null;
            }
            return new Frame(subArrayForLabel, this.stack, mutableCopy);
        } catch (IndexOutOfBoundsException unused) {
            throw new RuntimeException("returning from invalid subroutine");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("can't return from non-subroutine");
        }
    }

    private Frame(LocalsArray localsArray, ExecutionStack executionStack, IntList intList) {
        if (localsArray == null) {
            throw new NullPointerException("locals == null");
        }
        if (executionStack != null) {
            intList.throwIfMutable();
            this.locals = localsArray;
            this.stack = executionStack;
            this.subroutines = intList;
            return;
        }
        throw new NullPointerException("stack == null");
    }

    public Frame(int i10, int i11) {
        this(new OneLocalsArray(i10), new ExecutionStack(i11));
    }
}
