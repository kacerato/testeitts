.class public final Lz9/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lz9/i;

.field public final b:Lz9/i$c;

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public volatile e:LRb/d;

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:Z

.field public i:I


# direct methods
.method public constructor <init>(Lz9/i;Lz9/i$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "key"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lz9/i$b;->f:Z

    .line 4
    iput-boolean v0, p0, Lz9/i$b;->g:Z

    .line 5
    iput-boolean v0, p0, Lz9/i$b;->h:Z

    .line 6
    iput v0, p0, Lz9/i$b;->i:I

    .line 7
    iput-object p1, p0, Lz9/i$b;->a:Lz9/i;

    .line 8
    iput-object p2, p0, Lz9/i$b;->b:Lz9/i$c;

    .line 9
    invoke-static {p2}, Lz9/i$c;->a(Lz9/i$c;)I

    move-result p1

    .line 10
    invoke-static {p2}, Lz9/i$c;->b(Lz9/i$c;)Z

    move-result p2

    mul-int v1, p1, p1

    if-eqz p2, :cond_0

    mul-int/lit8 v2, p1, 0x8

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr v1, v2

    add-int/lit8 v2, p1, -0x1

    mul-int v3, v2, v2

    mul-int/lit8 v3, v3, 0x2

    if-eqz p2, :cond_1

    mul-int/lit8 v0, v2, 0x8

    .line 11
    :cond_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v2, p0, Lz9/i$b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 12
    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v1, p0, Lz9/i$b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    .line 13
    invoke-static {p1, p2, v2, v1}, Lz9/i;->b(IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz9/i;Lz9/i$c;Lz9/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz9/i$b;-><init>(Lz9/i;Lz9/i$c;)V

    return-void
.end method

.method public static synthetic a(Lz9/i$b;)V
    .locals 0

    invoke-virtual {p0}, Lz9/i$b;->n()V

    return-void
.end method

.method public static synthetic b(Lz9/i$b;)Z
    .locals 0

    iget-boolean p0, p0, Lz9/i$b;->h:Z

    return p0
.end method

.method public static synthetic c(Lz9/i$b;)I
    .locals 0

    iget p0, p0, Lz9/i$b;->i:I

    return p0
.end method

.method public static synthetic d(Lz9/i$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz9/i$b;->h:Z

    return p1
.end method

.method public static synthetic e(Lz9/i$b;)V
    .locals 0

    invoke-virtual {p0}, Lz9/i$b;->m()V

    return-void
.end method

.method public static synthetic f(Lz9/i$b;)Lz9/i$c;
    .locals 0

    iget-object p0, p0, Lz9/i$b;->b:Lz9/i$c;

    return-object p0
.end method

.method public static synthetic g(Lz9/i$b;)Lz9/i;
    .locals 0

    iget-object p0, p0, Lz9/i$b;->a:Lz9/i;

    return-object p0
.end method

.method public static synthetic h(Lz9/i$b;LRb/d;)LRb/d;
    .locals 0

    iput-object p1, p0, Lz9/i$b;->e:LRb/d;

    return-object p1
.end method

.method public static synthetic i(Lz9/i$b;LRb/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz9/i$b;->A(LRb/d;)V

    return-void
.end method

.method public static synthetic j(Lz9/i$b;)V
    .locals 0

    invoke-virtual {p0}, Lz9/i$b;->z()V

    return-void
.end method

.method public static synthetic k(Lz9/i$b;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 0

    iget-object p0, p0, Lz9/i$b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object p0
.end method

.method public static synthetic l(Lz9/i$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz9/i$b;->f:Z

    return p1
.end method


# virtual methods
.method public final A(LRb/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, LK8/a;->r()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final B()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz9/i$b;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz9/i$b;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz9/i$b;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lz9/i$b$a;

    invoke-direct {v0, p0}, Lz9/i$b$a;-><init>(Lz9/i$b;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lz9/i$b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    :cond_0
    iget-object v0, p0, Lz9/i$b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lz9/i$b;->g:Z

    iget-boolean v0, p0, Lz9/i$b;->h:Z

    if-nez v0, :cond_1

    iget v0, p0, Lz9/i$b;->i:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz9/i$b;->h:Z

    iget-object v0, p0, Lz9/i$b;->e:LRb/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lz9/i$b;->e:LRb/d;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lz9/i$b;->A(LRb/d;)V

    invoke-virtual {p0}, Lz9/i$b;->m()V

    iget-object v0, p0, Lz9/i$b;->a:Lz9/i;

    iget-object v1, p0, Lz9/i$b;->b:Lz9/i$c;

    invoke-static {v0, v1, p0}, Lz9/i;->a(Lz9/i;Lz9/i$c;Lz9/i$b;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o()LRb/d;
    .locals 1

    iget-object v0, p0, Lz9/i$b;->e:LRb/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz9/i$b;->B()V

    :cond_0
    iget-object v0, p0, Lz9/i$b;->e:LRb/d;

    return-object v0
.end method

.method public p()LRb/d;
    .locals 1

    iget-object v0, p0, Lz9/i$b;->e:LRb/d;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lz9/i$b;->b:Lz9/i$c;

    invoke-static {v0}, Lz9/i$c;->a(Lz9/i$c;)I

    move-result v0

    return v0
.end method

.method public r(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lz9/i$b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public s()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, Lz9/i$b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lz9/i$b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lz9/i$b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lz9/i$b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lz9/i$b;->b:Lz9/i$c;

    invoke-static {v0}, Lz9/i$c;->b(Lz9/i$c;)Z

    move-result v0

    return v0
.end method

.method public x()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz9/i$b;->i:I

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lz9/i$b;->i:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lz9/i$b;->e:LRb/d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lz9/i$b;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz9/i$b;->h:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lz9/i$b;->g:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    new-instance v0, Lz9/j;

    invoke-direct {v0, p0}, Lz9/j;-><init>(Lz9/i$b;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lz9/i$b;->e:LRb/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz9/i$b;->B()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized z()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz9/i$b;->h:Z

    if-nez v0, :cond_0

    iget v0, p0, Lz9/i$b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz9/i$b;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Topology entry already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
