.class public final Lcom/android/tools/r8/graph/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Lcom/android/tools/r8/internal/IC;

.field public final d:Lcom/android/tools/r8/internal/IC;

.field public final e:Lcom/android/tools/r8/internal/IC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
