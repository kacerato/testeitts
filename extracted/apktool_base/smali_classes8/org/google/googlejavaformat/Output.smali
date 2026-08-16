.class public abstract Lorg/google/googlejavaformat/Output;
.super Lorg/google/googlejavaformat/InputOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/Output$BreakTag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/google/googlejavaformat/InputOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract append(Ljava/lang/String;Lcom/google/common/collect/j2;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blankLine(ILorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "wanted"
        }
    .end annotation
.end method

.method public abstract getCommentsHelper()Lorg/google/googlejavaformat/CommentsHelper;
.end method

.method public abstract indent(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indent"
        }
    .end annotation
.end method

.method public abstract markForPartialFormat(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Input$Token;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "super"

    invoke-super {p0}, Lorg/google/googlejavaformat/InputOutput;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
