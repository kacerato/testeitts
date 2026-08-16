.class public Lorg/openjdk/tools/javah/JavahTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javah/NativeHeaderTool;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSourceVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/SourceVersion;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/javax/tools/StandardJavaFileManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/openjdk/javax/tools/StandardJavaFileManager;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/openjdk/tools/javah/JavahTask;->getDefaultFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/io/PrintWriter;)Lorg/openjdk/javax/tools/StandardJavaFileManager;

    move-result-object p1

    return-object p1
.end method

.method public getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/openjdk/tools/javah/NativeHeaderTool$NativeHeaderTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lorg/openjdk/javax/tools/JavaFileManager;",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/openjdk/tools/javah/NativeHeaderTool$NativeHeaderTask;"
        }
    .end annotation

    new-instance v6, Lorg/openjdk/tools/javah/JavahTask;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javah/JavahTask;-><init>(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v6
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lorg/openjdk/tools/javah/JavahTask;->recognizedOptions:[Lorg/openjdk/tools/javah/JavahTask$Option;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javah/JavahTask$Option;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean p1, v3, Lorg/openjdk/tools/javah/JavahTask$Option;->hasArg:Z

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public varargs run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;[Ljava/lang/String;)I
    .locals 6

    new-instance p1, Lorg/openjdk/tools/javah/JavahTask;

    invoke-static {p2}, Lorg/openjdk/tools/javah/JavahTask;->getPrintWriterForStream(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javah/JavahTask;-><init>(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javah/JavahTask;->run()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
