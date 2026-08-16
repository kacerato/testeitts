.class public Lz9/i$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz9/i$b$a$a;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LRb/d;

.field public final synthetic c:Lz9/i$b$a$a;


# direct methods
.method public constructor <init>(Lz9/i$b$a$a;LRb/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$created"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iput-object p2, p0, Lz9/i$b$a$a$a;->b:LRb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v0, v0, Lz9/i$b$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v0, v0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v0, v0, Lz9/i$b$a;->b:Lz9/i$b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v1, v1, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v1, v1, Lz9/i$b$a;->b:Lz9/i$b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lz9/i$b;->l(Lz9/i$b;Z)Z

    iget-object v1, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v1, v1, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v1, v1, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v1}, Lz9/i$b;->b(Lz9/i$b;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v1, v1, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v1, v1, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v1}, Lz9/i$b;->c(Lz9/i$b;)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v1, v1, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v1, v1, Lz9/i$b$a;->b:Lz9/i$b;

    iget-object v3, p0, Lz9/i$b$a$a$a;->b:LRb/d;

    invoke-static {v1, v3}, Lz9/i$b;->h(Lz9/i$b;LRb/d;)LRb/d;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v1, v1, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v1, v1, Lz9/i$b$a;->b:Lz9/i$b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lz9/i$b;->d(Lz9/i$b;Z)Z

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v0, v0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v0, v0, Lz9/i$b$a;->b:Lz9/i$b;

    iget-object v1, p0, Lz9/i$b$a$a$a;->b:LRb/d;

    invoke-static {v0, v1}, Lz9/i$b;->i(Lz9/i$b;LRb/d;)V

    iget-object v0, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v0, v0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v0, v0, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v0}, Lz9/i$b;->e(Lz9/i$b;)V

    iget-object v0, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v0, v0, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v0, v0, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v0}, Lz9/i$b;->g(Lz9/i$b;)Lz9/i;

    move-result-object v0

    iget-object v1, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v1, v1, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v1, v1, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v1}, Lz9/i$b;->f(Lz9/i$b;)Lz9/i$c;

    move-result-object v1

    iget-object v2, p0, Lz9/i$b$a$a$a;->c:Lz9/i$b$a$a;

    iget-object v2, v2, Lz9/i$b$a$a;->c:Lz9/i$b$a;

    iget-object v2, v2, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v0, v1, v2}, Lz9/i;->a(Lz9/i;Lz9/i$c;Lz9/i$b;)V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
