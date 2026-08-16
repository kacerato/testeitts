.class Lorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;
.super Lorg/openjdk/tools/javac/parser/UnicodeReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibleReader"
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

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    return-void
.end method
