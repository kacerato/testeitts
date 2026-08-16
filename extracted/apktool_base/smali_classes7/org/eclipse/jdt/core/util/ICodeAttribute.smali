.class public interface abstract Lorg/eclipse/jdt/core/util/ICodeAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IClassFileAttribute;


# virtual methods
.method public abstract getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;
.end method

.method public abstract getAttributesCount()I
.end method

.method public abstract getBytecodes()[B
.end method

.method public abstract getCodeLength()J
.end method

.method public abstract getExceptionTable()[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;
.end method

.method public abstract getExceptionTableLength()I
.end method

.method public abstract getLineNumberAttribute()Lorg/eclipse/jdt/core/util/ILineNumberAttribute;
.end method

.method public abstract getLocalVariableAttribute()Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;
.end method

.method public abstract getMaxLocals()I
.end method

.method public abstract getMaxStack()I
.end method

.method public abstract traverse(Lorg/eclipse/jdt/core/util/IBytecodeVisitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation
.end method
