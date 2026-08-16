package com.android.dx.rop.type;

public interface TypeList {
    Type getType(int i10);

    int getWordCount();

    boolean isMutable();

    int size();

    TypeList withAddedType(Type type);
}
