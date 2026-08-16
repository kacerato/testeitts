.class public Lcom/android/tools/r8/ProgramResource$FileResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ProgramResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileResource"
.end annotation


# instance fields
.field private final a:Lcom/android/tools/r8/origin/PathOrigin;

.field private final b:Lcom/android/tools/r8/ProgramResource$Kind;

.field private final c:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/ProgramResource$FileResource;->a:Lcom/android/tools/r8/origin/PathOrigin;

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/ProgramResource$FileResource;->b:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/ProgramResource$FileResource;->c:Ljava/nio/file/Path;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;Lcom/android/tools/r8/D2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/ProgramResource$FileResource;-><init>(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;)V

    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$FileResource;->c:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/ResourceException;

    invoke-virtual {p0}, Lcom/android/tools/r8/ProgramResource$FileResource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$FileResource;->c:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/ResourceException;

    invoke-virtual {p0}, Lcom/android/tools/r8/ProgramResource$FileResource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClassDescriptors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lcom/android/tools/r8/ProgramResource$Kind;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$FileResource;->b:Lcom/android/tools/r8/ProgramResource$Kind;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$FileResource;->a:Lcom/android/tools/r8/origin/PathOrigin;

    return-object v0
.end method
