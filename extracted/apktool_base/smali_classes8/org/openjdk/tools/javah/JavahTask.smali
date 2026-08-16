.class public Lorg/openjdk/tools/javah/JavahTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javah/NativeHeaderTool$NativeHeaderTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;,
        Lorg/openjdk/tools/javah/JavahTask$HiddenOption;,
        Lorg/openjdk/tools/javah/JavahTask$Option;,
        Lorg/openjdk/tools/javah/JavahTask$BadArgs;
    }
.end annotation


# static fields
.field private static final progname:Ljava/lang/String; = "javah"

.field static final recognizedOptions:[Lorg/openjdk/tools/javah/JavahTask$Option;

.field private static versionRB:Ljava/util/ResourceBundle; = null

.field private static final versionRBName:Ljava/lang/String; = "org.openjdk.tools.javah.resources.version"


# instance fields
.field bootcp:Ljava/lang/String;

.field bundles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field doubleAlign:Z

.field fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field force:Z

.field fullVersion:Z

.field help:Z

.field javac_extras:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field jni:Z

.field llni:Z

.field log:Ljava/io/PrintWriter;

.field noArgs:Z

.field odir:Ljava/io/File;

.field ofile:Ljava/io/File;

.field task_locale:Ljava/util/Locale;

.field trace:Z

.field usercp:Ljava/lang/String;

.field verbose:Z

.field version:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/openjdk/tools/javah/JavahTask$1;

    const-string v1, "-o"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/openjdk/tools/javah/JavahTask$1;-><init>(Z[Ljava/lang/String;)V

    new-instance v1, Lorg/openjdk/tools/javah/JavahTask$2;

    const-string v3, "-d"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javah/JavahTask$2;-><init>(Z[Ljava/lang/String;)V

    new-instance v3, Lorg/openjdk/tools/javah/JavahTask$3;

    const-string v4, "-td"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/openjdk/tools/javah/JavahTask$3;-><init>(Z[Ljava/lang/String;)V

    new-instance v4, Lorg/openjdk/tools/javah/JavahTask$4;

    const-string v5, "-v"

    const-string v6, "-verbose"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lorg/openjdk/tools/javah/JavahTask$4;-><init>(Z[Ljava/lang/String;)V

    new-instance v5, Lorg/openjdk/tools/javah/JavahTask$5;

    const-string v7, "--help"

    const-string v8, "-?"

    const-string v9, "-h"

    const-string v10, "-help"

    filled-new-array {v9, v10, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/openjdk/tools/javah/JavahTask$5;-><init>(Z[Ljava/lang/String;)V

    new-instance v7, Lorg/openjdk/tools/javah/JavahTask$6;

    const-string v8, "-trace"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/openjdk/tools/javah/JavahTask$6;-><init>(Z[Ljava/lang/String;)V

    new-instance v8, Lorg/openjdk/tools/javah/JavahTask$7;

    const-string v9, "-version"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lorg/openjdk/tools/javah/JavahTask$7;-><init>(Z[Ljava/lang/String;)V

    new-instance v9, Lorg/openjdk/tools/javah/JavahTask$8;

    const-string v10, "-fullversion"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lorg/openjdk/tools/javah/JavahTask$8;-><init>(Z[Ljava/lang/String;)V

    new-instance v10, Lorg/openjdk/tools/javah/JavahTask$9;

    const-string v11, "-jni"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v6, v11}, Lorg/openjdk/tools/javah/JavahTask$9;-><init>(Z[Ljava/lang/String;)V

    new-instance v11, Lorg/openjdk/tools/javah/JavahTask$10;

    const-string v12, "-force"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12}, Lorg/openjdk/tools/javah/JavahTask$10;-><init>(Z[Ljava/lang/String;)V

    new-instance v12, Lorg/openjdk/tools/javah/JavahTask$11;

    const-string v13, "-Xnew"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v6, v13}, Lorg/openjdk/tools/javah/JavahTask$11;-><init>(Z[Ljava/lang/String;)V

    new-instance v13, Lorg/openjdk/tools/javah/JavahTask$12;

    const-string v14, "-llni"

    const-string v15, "-Xllni"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v6, v14}, Lorg/openjdk/tools/javah/JavahTask$12;-><init>(Z[Ljava/lang/String;)V

    new-instance v14, Lorg/openjdk/tools/javah/JavahTask$13;

    const-string v15, "-llnidouble"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v6, v15}, Lorg/openjdk/tools/javah/JavahTask$13;-><init>(Z[Ljava/lang/String;)V

    new-instance v15, Lorg/openjdk/tools/javah/JavahTask$14;

    new-array v2, v6, [Ljava/lang/String;

    invoke-direct {v15, v6, v2}, Lorg/openjdk/tools/javah/JavahTask$14;-><init>(Z[Ljava/lang/String;)V

    const/16 v2, 0xe

    new-array v2, v2, [Lorg/openjdk/tools/javah/JavahTask$Option;

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v4, v2, v0

    const/4 v0, 0x4

    aput-object v5, v2, v0

    const/4 v0, 0x5

    aput-object v7, v2, v0

    const/4 v0, 0x6

    aput-object v8, v2, v0

    const/4 v0, 0x7

    aput-object v9, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v11, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v13, v2, v0

    const/16 v0, 0xc

    aput-object v14, v2, v0

    const/16 v0, 0xd

    aput-object v15, v2, v0

    sput-object v2, Lorg/openjdk/tools/javah/JavahTask;->recognizedOptions:[Lorg/openjdk/tools/javah/JavahTask$Option;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->javac_extras:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javah/JavahTask;-><init>()V

    .line 4
    invoke-static {p1}, Lorg/openjdk/tools/javah/JavahTask;->getPrintWriterForWriter(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    .line 5
    iput-object p2, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    .line 6
    iput-object p3, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0, p4, p1}, Lorg/openjdk/tools/javah/JavahTask;->handleOptions(Ljava/lang/Iterable;Z)V
    :try_end_0
    .catch Lorg/openjdk/tools/javah/JavahTask$BadArgs; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    if-eqz p5, :cond_0

    .line 9
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p3, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic a(Lorg/openjdk/tools/javah/JavahTask;Ljava/io/PrintWriter;Lorg/openjdk/javax/tools/Diagnostic;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask;->lambda$getDiagnosticListenerForWriter$0(Ljava/io/PrintWriter;Lorg/openjdk/javax/tools/Diagnostic;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javah/JavahTask;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs createDiagnostic(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javah/JavahTask$15;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask$15;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private expandAtArgs(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/JavahTask$BadArgs;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "at.args.io.exception"

    invoke-direct {v0, p0, v1, p1}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "at.args.file.not.found"

    invoke-direct {v0, p0, v1, p1}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getDefaultFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/io/PrintWriter;)Lorg/openjdk/javax/tools/StandardJavaFileManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")",
            "Lorg/openjdk/javax/tools/StandardJavaFileManager;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/openjdk/tools/javah/JavahFileManager;->create(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/io/PrintWriter;)Lorg/openjdk/tools/javah/JavahFileManager;

    move-result-object p0

    return-object p0
.end method

.method private getDiagnosticListenerForStream(Ljava/io/OutputStream;)Lorg/openjdk/javax/tools/DiagnosticListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javah/JavahTask;->getPrintWriterForStream(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javah/JavahTask;->getDiagnosticListenerForWriter(Ljava/io/Writer;)Lorg/openjdk/javax/tools/DiagnosticListener;

    move-result-object p1

    return-object p1
.end method

.method private getDiagnosticListenerForWriter(Ljava/io/Writer;)Lorg/openjdk/javax/tools/DiagnosticListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            ")",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javah/JavahTask;->getPrintWriterForWriter(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javah/a;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javah/a;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/io/PrintWriter;)V

    return-object v0
.end method

.method private varargs getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->task_locale:Ljava/util/Locale;

    invoke-direct {p0, v0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs getMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->bundles:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->bundles:Ljava/util/Map;

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->bundles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    if-nez v0, :cond_2

    .line 6
    :try_start_0
    const-string v0, "org.openjdk.tools.javah.resources.l10n"

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javah/JavahTask;->bundles:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    new-instance p3, Lorg/openjdk/tools/javah/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find javah resource bundle for locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/openjdk/tools/javah/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 9
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object p2
.end method

.method public static getPrintWriterForStream(Ljava/io/OutputStream;)Ljava/io/PrintWriter;
    .locals 2

    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method

.method public static getPrintWriterForWriter(Ljava/io/Writer;)Ljava/io/PrintWriter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lorg/openjdk/tools/javah/JavahTask;->getPrintWriterForStream(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/PrintWriter;

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method

.method private handleOption(Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/JavahTask$BadArgs;
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javah/JavahTask;->recognizedOptions:[Lorg/openjdk/tools/javah/JavahTask$Option;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Lorg/openjdk/tools/javah/JavahTask$Option;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v0, v4, Lorg/openjdk/tools/javah/JavahTask$Option;->hasArg:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, p0, p1, v0}, Lorg/openjdk/tools/javah/JavahTask$Option;->process(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    const-string v0, "err.missing.arg"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->showUsage(Z)Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    move-result-object p1

    throw p1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v4, p0, p1, v0}, Lorg/openjdk/tools/javah/JavahTask$Option;->process(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Lorg/openjdk/tools/javah/JavahTask$Option;->ignoreRest()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    new-instance p2, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    const-string v0, "err.unknown.option"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->showUsage(Z)Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    move-result-object p1

    throw p1
.end method

.method private handleOptions(Ljava/lang/Iterable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/JavahTask$BadArgs;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/openjdk/tools/javah/JavahTask;->getPrintWriterForStream(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javah/JavahTask;->getDiagnosticListenerForStream(Ljava/io/OutputStream;)Lorg/openjdk/javax/tools/DiagnosticListener;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javah/JavahTask;->getDiagnosticListenerForWriter(Ljava/io/Writer;)Lorg/openjdk/javax/tools/DiagnosticListener;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    iget-object v1, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javah/JavahTask;->getDefaultFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/io/PrintWriter;)Lorg/openjdk/javax/tools/StandardJavaFileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javah/JavahTask;->expandAtArgs(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/openjdk/tools/javah/JavahTask;->noArgs:Z

    .line 12
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javah/JavahTask;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 16
    iget-object v2, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    if-nez v2, :cond_5

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    .line 18
    :cond_5
    iget-object v2, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_6
    new-instance p1, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    const-string p2, "err.unknown.option"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->showUsage(Z)Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a

    :cond_8
    iget-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask;->noArgs:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask;->help:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask;->version:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask;->fullVersion:Z

    if-eqz p1, :cond_9

    goto :goto_3

    .line 23
    :cond_9
    new-instance p1, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    const-string v0, "err.no.classes.specified"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p1, p0, v0, p2}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 24
    :cond_a
    :goto_3
    iget-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask;->jni:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask;->llni:Z

    if-nez p1, :cond_b

    goto :goto_4

    .line 25
    :cond_b
    new-instance p1, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    const-string v0, "jni.llni.mixed"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p1, p0, v0, p2}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 26
    :cond_c
    :goto_4
    iget-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->odir:Ljava/io/File;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->ofile:Ljava/io/File;

    if-nez p1, :cond_d

    goto :goto_5

    .line 27
    :cond_d
    new-instance p1, Lorg/openjdk/tools/javah/JavahTask$BadArgs;

    const-string v0, "dir.file.mixed"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p1, p0, v0, p2}, Lorg/openjdk/tools/javah/JavahTask$BadArgs;-><init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_e
    :goto_5
    return-void
.end method

.method private synthetic lambda$getDiagnosticListenerForWriter$0(Ljava/io/PrintWriter;Lorg/openjdk/javax/tools/Diagnostic;)V
    .locals 2

    invoke-interface {p2}, Lorg/openjdk/javax/tools/Diagnostic;->getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "err.prefix"

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/openjdk/javax/tools/Diagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private showHelp()V
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    const-string v1, "javah"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "main.usage"

    invoke-direct {p0, v2, v1}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javah/JavahTask;->recognizedOptions:[Lorg/openjdk/tools/javah/JavahTask$Option;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "main.opt."

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/openjdk/tools/javah/JavahTask$Option;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v5, Lorg/openjdk/tools/javah/JavahTask$Option;->aliases:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "-cp"

    const-string v10, "-bootclasspath"

    const-string v5, "--module-path"

    const-string v6, "--system"

    const-string v7, "--class-path"

    const-string v8, "-classpath"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_2
    const/4 v3, 0x6

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    iget-object v5, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v5, v3}, Lorg/openjdk/javax/tools/OptionChecker;->isSupportedOption(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    const-string v5, "^-+"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-+"

    const-string v6, "_"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v6}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    const-string v1, "main.usage.foot"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private showVersion(Z)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javah/JavahTask;->version(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private version(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "javah.fullVersion"

    goto :goto_0

    :cond_0
    const-string v0, "javah.version"

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "full"

    goto :goto_1

    :cond_1
    const-string p1, "release"

    :goto_1
    sget-object v1, Lorg/openjdk/tools/javah/JavahTask;->versionRB:Ljava/util/ResourceBundle;

    const-string v2, "java.version"

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "org.openjdk.tools.javah.resources.version"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lorg/openjdk/tools/javah/JavahTask;->versionRB:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "version.resource.missing"

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_2
    :try_start_1
    const-string v1, "javah"

    sget-object v3, Lorg/openjdk/tools/javah/JavahTask;->versionRB:Ljava/util/ResourceBundle;

    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "version.unknown"

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javah/JavahTask;->run()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javah/JavahTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleOptions([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/JavahTask$BadArgs;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javah/JavahTask;->handleOptions(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public run([Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/JavahTask;->handleOptions([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javah/JavahTask;->run()Z

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javah/JavahTask$BadArgs; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/openjdk/tools/javah/InternalError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/openjdk/tools/javah/Util$Exit; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p1, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_4

    .line 4
    :goto_1
    :try_start_1
    iget p1, p1, Lorg/openjdk/tools/javah/Util$Exit;->exitValue:I

    goto :goto_0

    .line 5
    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    const-string v2, "err.internal.error"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/openjdk/tools/javah/JavahTask;->createDiagnostic(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_3
    iget-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v0

    .line 7
    :goto_4
    :try_start_2
    iget-object v1, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    iget-object v2, p1, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->key:Ljava/lang/String;

    iget-object p1, p1, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->args:[Ljava/lang/Object;

    invoke-direct {p0, v2, p1}, Lorg/openjdk/tools/javah/JavahTask;->createDiagnostic(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 8
    :goto_5
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 9
    throw p1
.end method

.method public run()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->javac_extras:Ljava/util/Set;

    const-string v1, "-XDsuppress-tool-removal-message"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    const-string v2, "javah.misc.Deprecation"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javah/JavahTask;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javah/Util;

    iget-object v2, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-direct {v0, v2, v3}, Lorg/openjdk/tools/javah/Util;-><init>(Ljava/io/PrintWriter;Lorg/openjdk/javax/tools/DiagnosticListener;)V

    .line 13
    iget-boolean v2, p0, Lorg/openjdk/tools/javah/JavahTask;->noArgs:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lorg/openjdk/tools/javah/JavahTask;->help:Z

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 14
    :cond_1
    iget-boolean v2, p0, Lorg/openjdk/tools/javah/JavahTask;->version:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lorg/openjdk/tools/javah/JavahTask;->fullVersion:Z

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 15
    :cond_2
    iget-boolean v2, p0, Lorg/openjdk/tools/javah/JavahTask;->verbose:Z

    iput-boolean v2, v0, Lorg/openjdk/tools/javah/Util;->verbose:Z

    .line 16
    iget-boolean v2, p0, Lorg/openjdk/tools/javah/JavahTask;->llni:Z

    if-eqz v2, :cond_3

    .line 17
    new-instance v2, Lorg/openjdk/tools/javah/LLNI;

    iget-boolean v3, p0, Lorg/openjdk/tools/javah/JavahTask;->doubleAlign:Z

    invoke-direct {v2, v3, v0}, Lorg/openjdk/tools/javah/LLNI;-><init>(ZLorg/openjdk/tools/javah/Util;)V

    goto :goto_0

    .line 18
    :cond_3
    new-instance v2, Lorg/openjdk/tools/javah/JNI;

    invoke-direct {v2, v0}, Lorg/openjdk/tools/javah/JNI;-><init>(Lorg/openjdk/tools/javah/Util;)V

    .line 19
    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->ofile:Ljava/io/File;

    const-string v4, "err.cant.use.option.for.fm"

    if-eqz v3, :cond_5

    .line 20
    iget-object v5, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v6, v5, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    if-nez v6, :cond_4

    .line 21
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    const-string v2, "-o"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lorg/openjdk/tools/javah/JavahTask;->createDiagnostic(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    return v1

    .line 22
    :cond_4
    check-cast v5, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    .line 23
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/tools/JavaFileObject;

    .line 25
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javah/Gen;->setOutFile(Lorg/openjdk/javax/tools/JavaFileObject;)V

    goto :goto_3

    .line 26
    :cond_5
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->odir:Ljava/io/File;

    if-eqz v3, :cond_9

    .line 27
    iget-object v5, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v5, v5, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    if-nez v5, :cond_6

    .line 28
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    const-string v2, "-d"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lorg/openjdk/tools/javah/JavahTask;->createDiagnostic(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    return v1

    .line 29
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 30
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->odir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_7

    .line 31
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->odir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cant.create.dir"

    invoke-virtual {v0, v4, v3}, Lorg/openjdk/tools/javah/Util;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_7
    :try_start_0
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v3, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    iget-object v5, p0, Lorg/openjdk/tools/javah/JavahTask;->odir:Ljava/io/File;

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move-object v0, v2

    .line 34
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->odir:Ljava/io/File;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "err.ioerror"

    invoke-direct {p0, v3, v0}, Lorg/openjdk/tools/javah/JavahTask;->createDiagnostic(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    return v1

    .line 35
    :cond_9
    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javah/Gen;->setFileManager(Lorg/openjdk/javax/tools/JavaFileManager;)V

    .line 36
    :goto_3
    iget-boolean v3, p0, Lorg/openjdk/tools/javah/JavahTask;->force:Z

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javah/Gen;->setForce(Z)V

    .line 37
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v4, v3, Lorg/openjdk/tools/javah/JavahFileManager;

    if-eqz v4, :cond_a

    .line 38
    check-cast v3, Lorg/openjdk/tools/javah/JavahFileManager;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setSymbolFileEnabled(Z)V

    .line 39
    :cond_a
    invoke-static {}, Lorg/openjdk/javax/tools/ToolProvider;->getSystemJavaCompiler()Lorg/openjdk/javax/tools/JavaCompiler;

    move-result-object v4

    .line 40
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const-string v3, "-proc:only"

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v3, p0, Lorg/openjdk/tools/javah/JavahTask;->javac_extras:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    :try_start_1
    iget-object v5, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    iget-object v6, p0, Lorg/openjdk/tools/javah/JavahTask;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v7, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    iget-object v9, p0, Lorg/openjdk/tools/javah/JavahTask;->classes:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lorg/openjdk/javax/tools/JavaCompiler;->getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    new-instance v1, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;

    invoke-direct {v1, p0, v2}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;-><init>(Lorg/openjdk/tools/javah/JavahTask;Lorg/openjdk/tools/javah/Gen;)V

    .line 45
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;->setProcessors(Ljava/lang/Iterable;)V

    .line 46
    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 47
    invoke-static {v1}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->access$100(Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;)Lorg/openjdk/tools/javah/Util$Exit;

    move-result-object v2

    if-nez v2, :cond_b

    return v0

    .line 48
    :cond_b
    new-instance v0, Lorg/openjdk/tools/javah/Util$Exit;

    invoke-static {v1}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->access$100(Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;)Lorg/openjdk/tools/javah/Util$Exit;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javah/Util$Exit;-><init>(Lorg/openjdk/tools/javah/Util$Exit;)V

    throw v0

    :catch_1
    move-exception v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "bad.arg"

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/javah/Util;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 50
    :cond_c
    :goto_4
    iget-boolean v0, p0, Lorg/openjdk/tools/javah/JavahTask;->fullVersion:Z

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javah/JavahTask;->showVersion(Z)V

    const/4 v0, 0x1

    return v0

    .line 51
    :cond_d
    :goto_5
    invoke-direct {p0}, Lorg/openjdk/tools/javah/JavahTask;->showHelp()V

    .line 52
    iget-boolean v0, p0, Lorg/openjdk/tools/javah/JavahTask;->help:Z

    return v0
.end method

.method public setDiagnosticListener(Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javah/JavahTask;->getDiagnosticListenerForStream(Ljava/io/OutputStream;)Lorg/openjdk/javax/tools/DiagnosticListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/JavahTask;->setDiagnosticListener(Lorg/openjdk/javax/tools/DiagnosticListener;)V

    return-void
.end method

.method public setDiagnosticListener(Lorg/openjdk/javax/tools/DiagnosticListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->diagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->task_locale:Ljava/util/Locale;

    return-void
.end method

.method public setLog(Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/openjdk/tools/javah/JavahTask;->getPrintWriterForStream(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/JavahTask;->setLog(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public setLog(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask;->log:Ljava/io/PrintWriter;

    return-void
.end method
