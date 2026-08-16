.class public interface abstract Lcom/github/javaparser/CharStream;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract backup(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation
.end method

.method public abstract beginToken()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract done()V
.end method

.method public abstract getBeginColumn()I
.end method

.method public abstract getBeginLine()I
.end method

.method public abstract getEndColumn()I
.end method

.method public abstract getEndLine()I
.end method

.method public abstract getImage()Ljava/lang/String;
.end method

.method public abstract getSuffix(I)[C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation
.end method

.method public abstract getTabSize()I
.end method

.method public abstract isTrackLineColumn()Z
.end method

.method public abstract readChar()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTabSize(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public abstract setTrackLineColumn(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackLineColumn"
        }
    .end annotation
.end method
