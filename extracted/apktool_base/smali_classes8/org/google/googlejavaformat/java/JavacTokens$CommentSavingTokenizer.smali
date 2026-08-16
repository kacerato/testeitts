.class Lorg/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;
.super Lorg/openjdk/tools/javac/parser/JavaTokenizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentSavingTokenizer"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fac",
            "buffer",
            "length"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    return-void
.end method


# virtual methods
.method public processComment(IILorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "endPos",
            "style"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->getRawCharacters(II)[C

    move-result-object v0

    new-instance v1, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;

    new-instance v2, Lorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->fac:Lorg/openjdk/tools/javac/parser/ScannerFactory;

    array-length v4, v0

    invoke-direct {v2, v3, v0, v4}, Lorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    invoke-direct {v1, p1, p2, v2, p3}, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;-><init>(IILorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)V

    return-object v1
.end method
