.class Lorg/google/googlejavaformat/java/JavacTokens$RawTok;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawTok"
.end annotation


# instance fields
.field private final endPos:I

.field private final kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

.field private final pos:I

.field private final stringVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stringVal",
            "kind",
            "pos",
            "endPos"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->stringVal:Ljava/lang/String;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput p3, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->pos:I

    iput p4, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->endPos:I

    return-void
.end method


# virtual methods
.method public endPos()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->endPos:I

    return v0
.end method

.method public kind()Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    return-object v0
.end method

.method public pos()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->pos:I

    return v0
.end method

.method public stringVal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->stringVal:Ljava/lang/String;

    return-object v0
.end method
