.class Lorg/google/googlejavaformat/java/JavacTokens$AccessibleScanner;
.super Lorg/openjdk/tools/javac/parser/Scanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibleScanner"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fac",
            "tokenizer"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/Scanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V

    return-void
.end method
