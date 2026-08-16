.class public Lorg/openjdk/tools/javac/parser/ParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final parserFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/parser/ParserFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final F:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field final docTreeMaker:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

.field final locale:Ljava/util/Locale;

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field final options:Lorg/openjdk/tools/javac/util/Options;

.field final scannerFactory:Lorg/openjdk/tools/javac/parser/ScannerFactory;

.field final source:Lorg/openjdk/tools/javac/code/Source;

.field final tokens:Lorg/openjdk/tools/javac/parser/Tokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/parser/ParserFactory;->parserFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/parser/ParserFactory;->parserFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->docTreeMaker:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/parser/Tokens;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/Tokens;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-static {p1}, Lorg/openjdk/tools/javac/parser/ScannerFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ScannerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->scannerFactory:Lorg/openjdk/tools/javac/parser/ScannerFactory;

    const-class v0, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ParserFactory;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/ParserFactory;->parserFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/parser/ParserFactory;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/parser/ParserFactory;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/parser/ParserFactory;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    return-object p1
.end method

.method public newParser(Ljava/lang/CharSequence;ZZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/ParserFactory;->scannerFactory:Lorg/openjdk/tools/javac/parser/ScannerFactory;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/parser/ScannerFactory;->newScanner(Ljava/lang/CharSequence;Z)Lorg/openjdk/tools/javac/parser/Scanner;

    move-result-object v3

    .line 3
    new-instance p1, Lorg/openjdk/tools/javac/parser/JavacParser;

    move-object v1, p1

    move-object v2, p0

    move v4, p2

    move v5, p4

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/parser/JavacParser;-><init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/parser/Lexer;ZZZZ)V

    return-object p1
.end method
