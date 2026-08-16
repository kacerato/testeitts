.class public Lorg/openjdk/tools/javac/parser/JavadocTokenizer;
.super Lorg/openjdk/tools/javac/parser/JavaTokenizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;,
        Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    return-void
.end method


# virtual methods
.method public getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->getRawCharacters()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Position;->makeLineMap([CIZ)Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public processComment(IILorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->getRawCharacters(II)[C

    move-result-object p2

    new-instance v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;

    new-instance v1, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->fac:Lorg/openjdk/tools/javac/parser/ScannerFactory;

    array-length v3, p2

    invoke-direct {v1, v2, p2, v3, p1}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CII)V

    invoke-direct {v0, v1, p3}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;-><init>(Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)V

    return-object v0
.end method
