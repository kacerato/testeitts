.class public abstract Lorg/google/googlejavaformat/Input;
.super Lorg/google/googlejavaformat/InputOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/Input$Token;,
        Lorg/google/googlejavaformat/Input$Tok;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/google/googlejavaformat/InputOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public createDiagnostic(ILjava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputPosition",
            "message"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/Input;->getLineNumber(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/Input;->getColumnNumber(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lorg/google/googlejavaformat/FormatterDiagnostic;->create(IILjava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public abstract getColumnNumber(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPosition"
        }
    .end annotation
.end method

.method public abstract getLineNumber(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPosition"
        }
    .end annotation
.end method

.method public abstract getPositionToColumnMap()Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPositionTokenMap()Lcom/google/common/collect/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/p1<",
            "Ljava/lang/Integer;",
            "+",
            "Lorg/google/googlejavaformat/Input$Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTokens()Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "+",
            "Lorg/google/googlejavaformat/Input$Token;",
            ">;"
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
