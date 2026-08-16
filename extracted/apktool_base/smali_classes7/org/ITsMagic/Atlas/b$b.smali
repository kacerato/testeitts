.class public Lorg/ITsMagic/Atlas/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/b;->t(Lub/p;Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/c$b;

.field public final synthetic c:Lorg/ITsMagic/Atlas/b$d;

.field public final synthetic d:Lub/p;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Lub/p;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$state",
            "val$texture",
            "val$latch",
            "val$errorRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$b;->b:Lorg/ITsMagic/Atlas/c$b;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    iput-object p3, p0, Lorg/ITsMagic/Atlas/b$b;->d:Lub/p;

    iput-object p4, p0, Lorg/ITsMagic/Atlas/b$b;->e:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lorg/ITsMagic/Atlas/b$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->b:Lorg/ITsMagic/Atlas/c$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPU Dilate pass "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/b$d;->g(Lorg/ITsMagic/Atlas/b$d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->k(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/b$d;->i(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/b;->f(Lorg/ITsMagic/Atlas/b;LTb/a;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->i(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/b$d;->n(Lorg/ITsMagic/Atlas/b$d;LTb/a;)LTb/a;

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->h(Lorg/ITsMagic/Atlas/b$d;)I

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->b:Lorg/ITsMagic/Atlas/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->g(Lorg/ITsMagic/Atlas/b$d;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/b$d;->a(Lorg/ITsMagic/Atlas/b$d;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/ITsMagic/Atlas/b$b;->b:Lorg/ITsMagic/Atlas/c$b;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/b$d;->g(Lorg/ITsMagic/Atlas/b$d;)I

    move-result v2

    iget-object v3, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v3}, Lorg/ITsMagic/Atlas/b$d;->a(Lorg/ITsMagic/Atlas/b$d;)I

    move-result v3

    const-string v4, ""

    invoke-interface {v1, v2, v3, v0, v4}, Lorg/ITsMagic/Atlas/c$b;->a(IIFLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->g(Lorg/ITsMagic/Atlas/b$d;)I

    move-result v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/b$d;->a(Lorg/ITsMagic/Atlas/b$d;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v2, p0, Lorg/ITsMagic/Atlas/b$b;->d:Lub/p;

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->m(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v3

    new-instance v4, Lorg/ITsMagic/Atlas/b$b$a;

    invoke-direct {v4, p0}, Lorg/ITsMagic/Atlas/b$b$a;-><init>(Lorg/ITsMagic/Atlas/b$b;)V

    new-instance v5, Lorg/ITsMagic/Atlas/b$b$b;

    invoke-direct {v5, p0}, Lorg/ITsMagic/Atlas/b$b$b;-><init>(Lorg/ITsMagic/Atlas/b$b;)V

    iget-object v6, p0, Lorg/ITsMagic/Atlas/b$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v7, p0, Lorg/ITsMagic/Atlas/b$b;->b:Lorg/ITsMagic/Atlas/c$b;

    invoke-static/range {v2 .. v7}, Lorg/ITsMagic/Atlas/b;->c(Lub/p;LTb/a;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;Lorg/ITsMagic/Atlas/c$b;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->i(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/b$d;->j(Lorg/ITsMagic/Atlas/b$d;LTb/a;)LTb/a;

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->d(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/b$d;->l(Lorg/ITsMagic/Atlas/b$d;Lorg/ITsMagic/Atlas/b;)Lorg/ITsMagic/Atlas/b;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/b$d;->j(Lorg/ITsMagic/Atlas/b$d;LTb/a;)LTb/a;

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b$d;->e(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/b$d;->l(Lorg/ITsMagic/Atlas/b$d;Lorg/ITsMagic/Atlas/b;)Lorg/ITsMagic/Atlas/b;

    :goto_1
    new-instance v0, Lorg/ITsMagic/Atlas/b$b$c;

    invoke-direct {v0, p0}, Lorg/ITsMagic/Atlas/b$b$c;-><init>(Lorg/ITsMagic/Atlas/b$b;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lorg/ITsMagic/Atlas/b$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AtlasDilateGPU render failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lorg/ITsMagic/Atlas/b$b$d;

    invoke-direct {v0, p0}, Lorg/ITsMagic/Atlas/b$b$d;-><init>(Lorg/ITsMagic/Atlas/b$b;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
