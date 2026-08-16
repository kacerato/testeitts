.class public interface abstract Lorg/eclipse/jdt/core/compiler/IScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentTokenEndPosition()I
.end method

.method public abstract getCurrentTokenSource()[C
.end method

.method public abstract getCurrentTokenStartPosition()I
.end method

.method public abstract getLineEnd(I)I
.end method

.method public abstract getLineEnds()[I
.end method

.method public abstract getLineNumber(I)I
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getNextToken()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract getRawTokenSource()[C
.end method

.method public abstract getSource()[C
.end method

.method public abstract resetTo(II)V
.end method

.method public abstract setSource([C)V
.end method
