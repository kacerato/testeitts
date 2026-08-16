.class public final Lcom/android/tools/r8/synthesis/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Lcom/android/tools/r8/origin/PathOrigin;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/f;->a:Ljava/nio/file/Path;

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/f;->b:Lcom/android/tools/r8/origin/PathOrigin;

    return-void
.end method


# virtual methods
.method public final getByteStream()Ljava/io/InputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/f;->a:Ljava/nio/file/Path;

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

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/f;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/f;->b:Lcom/android/tools/r8/origin/PathOrigin;

    return-object v0
.end method
