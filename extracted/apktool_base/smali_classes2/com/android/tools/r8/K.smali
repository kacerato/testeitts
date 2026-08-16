.class public final Lcom/android/tools/r8/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/GlobalSyntheticsConsumer;


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/K;->b:Ljava/nio/file/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/K;->a:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized accept(Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/android/tools/r8/K;->a:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/tools/r8/K;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/android/tools/r8/K;->b:Ljava/nio/file/Path;

    invoke-virtual {p1}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/nio/file/OpenOption;

    invoke-static {p2, p1, p3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected attempt to repeatedly write global synthetics"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
