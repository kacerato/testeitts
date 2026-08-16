.class public Lorg/openjdk/tools/javac/parser/ScannerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final scannerFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/parser/ScannerFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final log:Lorg/openjdk/tools/javac/util/Log;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field final source:Lorg/openjdk/tools/javac/code/Source;

.field final tokens:Lorg/openjdk/tools/javac/parser/Tokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/parser/ScannerFactory;->scannerFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/parser/ScannerFactory;->scannerFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ScannerFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ScannerFactory;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ScannerFactory;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {p1}, Lorg/openjdk/tools/javac/parser/Tokens;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/Tokens;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/ScannerFactory;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ScannerFactory;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/ScannerFactory;->scannerFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/parser/ScannerFactory;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/parser/ScannerFactory;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/parser/ScannerFactory;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public newScanner(Ljava/lang/CharSequence;Z)Lorg/openjdk/tools/javac/parser/Scanner;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/nio/CharBuffer;

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lorg/openjdk/tools/javac/parser/Scanner;

    new-instance v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    invoke-direct {p2, p0, v0}, Lorg/openjdk/tools/javac/parser/Scanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V

    return-object p2

    .line 4
    :cond_0
    new-instance p2, Lorg/openjdk/tools/javac/parser/Scanner;

    invoke-direct {p2, p0, p1}, Lorg/openjdk/tools/javac/parser/Scanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    return-object p2

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 6
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/parser/ScannerFactory;->newScanner([CIZ)Lorg/openjdk/tools/javac/parser/Scanner;

    move-result-object p1

    return-object p1
.end method

.method public newScanner([CIZ)Lorg/openjdk/tools/javac/parser/Scanner;
    .locals 1

    if-eqz p3, :cond_0

    .line 7
    new-instance p3, Lorg/openjdk/tools/javac/parser/Scanner;

    new-instance v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    invoke-direct {p3, p0, v0}, Lorg/openjdk/tools/javac/parser/Scanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V

    return-object p3

    .line 8
    :cond_0
    new-instance p3, Lorg/openjdk/tools/javac/parser/Scanner;

    invoke-direct {p3, p0, p1, p2}, Lorg/openjdk/tools/javac/parser/Scanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    return-object p3
.end method
