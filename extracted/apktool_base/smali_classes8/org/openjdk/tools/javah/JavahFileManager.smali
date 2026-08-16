.class Lorg/openjdk/tools/javah/JavahFileManager;
.super Lorg/openjdk/tools/javac/file/JavacFileManager;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/util/Context;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setSymbolFileEnabled(Z)V

    return-void
.end method

.method public static create(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/io/PrintWriter;)Lorg/openjdk/tools/javah/JavahFileManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")",
            "Lorg/openjdk/tools/javah/JavahFileManager;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    if-eqz p0, :cond_0

    const-class v1, Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-virtual {v0, v1, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lorg/openjdk/tools/javac/util/Log;->errKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {v0, p0, p1}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    new-instance p0, Lorg/openjdk/tools/javah/JavahFileManager;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javah/JavahFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/nio/charset/Charset;)V

    return-object p0
.end method
