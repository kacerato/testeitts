.class public Lz9/i$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz9/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz9/i$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:Lz9/i$b$a;


# direct methods
.method public constructor <init>(Lz9/i$b$a;ZLjava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$useUshort",
            "val$indexData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iput-boolean p2, p0, Lz9/i$b$a$a;->a:Z

    iput-object p3, p0, Lz9/i$b$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v1, v1, Lz9/i$b$a;->b:Lz9/i$b;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2}, Lz9/i$b;->b(Lz9/i$b;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2}, Lz9/i$b;->c(Lz9/i$b;)I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, LRb/d;

    new-instance v2, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v2}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    iget-object v4, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v4, v4, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v4}, Lz9/i$b;->k(Lz9/i$b;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v2

    iget-boolean v4, p0, Lz9/i$b$a$a;->a:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    sget-object v4, Lcom/google/android/filament/IndexBuffer$a$b;->UINT:Lcom/google/android/filament/IndexBuffer$a$b;

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v2

    invoke-direct {v1, v2}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    iget-object v2, p0, Lz9/i$b$a$a;->b:Ljava/nio/ByteBuffer;

    new-instance v4, Lz9/i$b$a$a$a;

    invoke-direct {v4, p0, v1}, Lz9/i$b$a$a$a;-><init>(Lz9/i$b$a$a;LRb/d;)V

    invoke-virtual {v1, v2, v4}, LRb/d;->s(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_3
    iget-object v2, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2, v0}, Lz9/i$b;->l(Lz9/i$b;Z)Z

    iget-object v2, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2, v3}, Lz9/i$b;->d(Lz9/i$b;Z)Z

    iget-object v2, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2}, Lz9/i$b;->e(Lz9/i$b;)V

    iget-object v2, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2}, Lz9/i$b;->g(Lz9/i$b;)Lz9/i;

    move-result-object v2

    iget-object v3, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v3, v3, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v3}, Lz9/i$b;->f(Lz9/i$b;)Lz9/i$c;

    move-result-object v3

    iget-object v4, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v4, v4, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2, v3, v4}, Lz9/i;->a(Lz9/i;Lz9/i$c;Lz9/i$b;)V

    monitor-exit v1

    return v0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    iget-object v2, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v3, v3, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v3, v0}, Lz9/i$b;->l(Lz9/i$b;Z)Z

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method
