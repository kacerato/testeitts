package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.MutabilityControl;
import com.android.dx.util.ToHuman;

public abstract class LocalsArray extends MutabilityControl implements ToHuman {
    public LocalsArray(boolean z10) {
        super(z10);
    }

    public abstract void annotate(ExceptionWithContext exceptionWithContext);

    public abstract LocalsArray copy();

    public abstract TypeBearer get(int i10);

    public abstract TypeBearer getCategory1(int i10);

    public abstract TypeBearer getCategory2(int i10);

    public abstract int getMaxLocals();

    public abstract TypeBearer getOrNull(int i10);

    public abstract OneLocalsArray getPrimary();

    public abstract void invalidate(int i10);

    public abstract void makeInitialized(Type type);

    public abstract LocalsArray merge(LocalsArray localsArray);

    public abstract LocalsArraySet mergeWithSubroutineCaller(LocalsArray localsArray, int i10);

    public abstract void set(int i10, TypeBearer typeBearer);

    public abstract void set(RegisterSpec registerSpec);
}
