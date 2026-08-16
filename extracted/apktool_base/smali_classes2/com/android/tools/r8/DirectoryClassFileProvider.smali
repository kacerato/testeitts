.class public final Lcom/android/tools/r8/DirectoryClassFileProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileResourceProvider;


# static fields
.field static final synthetic b:Z = true


# instance fields
.field private final a:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/DirectoryClassFileProvider;->a:Ljava/nio/file/Path;

    return-void
.end method

.method private a(Ljava/nio/file/Path;Ljava/util/HashSet;)V
    .locals 4

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/tools/r8/DirectoryClassFileProvider;->a(Ljava/nio/file/Path;Ljava/util/HashSet;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/DirectoryClassFileProvider;->a:Ljava/nio/file/Path;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ww;->b(Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fromDirectory(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/DirectoryClassFileProvider;

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/DirectoryClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getClassDescriptors()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/DirectoryClassFileProvider;->a:Ljava/nio/file/Path;

    invoke-direct {p0, v1, v0}, Lcom/android/tools/r8/DirectoryClassFileProvider;->a(Ljava/nio/file/Path;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/DirectoryClassFileProvider;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/DirectoryClassFileProvider;->a:Ljava/nio/file/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ProgramResource;->fromFile(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRoot()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DirectoryClassFileProvider;->a:Ljava/nio/file/Path;

    return-object v0
.end method
