.class final Lorg/openjdk/tools/javac/parser/Tokens$NumericToken;
.super Lorg/openjdk/tools/javac/parser/Tokens$StringToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumericToken"
.end annotation


# instance fields
.field public final radix:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILjava/lang/String;ILorg/openjdk/tools/javac/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/parser/Tokens$StringToken;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILjava/lang/String;Lorg/openjdk/tools/javac/util/List;)V

    iput p5, p0, Lorg/openjdk/tools/javac/parser/Tokens$NumericToken;->radix:I

    return-void
.end method


# virtual methods
.method public checkKind()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->tag:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->NUMERIC:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad token kind - expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public radix()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$NumericToken;->radix:I

    return v0
.end method
