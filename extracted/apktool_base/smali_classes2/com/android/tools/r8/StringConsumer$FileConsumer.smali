.class public Lcom/android/tools/r8/StringConsumer$FileConsumer;
.super Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/StringConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileConsumer"
.end annotation


# static fields
.field static final synthetic f:Z = true


# instance fields
.field private final b:Ljava/nio/file/Path;

.field private c:Ljava/nio/charset/Charset;

.field private d:Lcom/android/tools/r8/u0;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/StringConsumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/StringConsumer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    .line 3
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->c:Ljava/nio/charset/Charset;

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->d:Lcom/android/tools/r8/u0;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->e:Z

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->b:Ljava/nio/file/Path;

    return-void
.end method

.method private a(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->d:Lcom/android/tools/r8/u0;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v1, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->b:Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->b:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/u0;

    iget-object v3, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->b:Ljava/nio/file/Path;

    iget-object v4, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->c:Ljava/nio/charset/Charset;

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4, v2}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/u0;-><init>(Lcom/android/tools/r8/origin/PathOrigin;Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->d:Lcom/android/tools/r8/u0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->e:Z

    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p1, v2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-boolean v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/tools/r8/StringConsumer$FileConsumer;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->d:Lcom/android/tools/r8/u0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/u0;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-boolean v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->d:Lcom/android/tools/r8/u0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/u0;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->d:Lcom/android/tools/r8/u0;

    :cond_1
    :goto_0
    return-void
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->c:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->b:Ljava/nio/file/Path;

    return-object v0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->d:Lcom/android/tools/r8/u0;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/tools/r8/StringConsumer$FileConsumer;->c:Ljava/nio/charset/Charset;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid call to set encoding after file stream is opened"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
