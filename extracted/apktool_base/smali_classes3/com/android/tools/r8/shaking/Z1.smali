.class public final Lcom/android/tools/r8/shaking/Z1;
.super Lcom/android/tools/r8/shaking/a2;
.source "SourceFile"


# instance fields
.field public final b:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/a2;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z1;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z1;->b:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;->parseFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/a2;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method
