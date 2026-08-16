.class public final LLe/e1$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhn/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhn/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/e1$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LLe/e1$g<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/e1$j<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LLe/e1$g<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/e1$i;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, LLe/e1$i;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public l(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, LLe/e1$i;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$j;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, LLe/e1$i;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, LLe/e1$j;

    invoke-direct {v1, v0}, LLe/e1$j;-><init>(LLe/e1$g;)V

    iget-object v0, p0, LLe/e1$i;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LUe/g;->b(Ljava/lang/Throwable;Lhn/c;)V

    return-void

    :cond_1
    :goto_1
    new-instance v1, LLe/e1$d;

    invoke-direct {v1, v0, p1}, LLe/e1$d;-><init>(LLe/e1$j;Lhn/c;)V

    invoke-interface {p1, v1}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v0, v1}, LLe/e1$j;->b(LLe/e1$d;)Z

    invoke-virtual {v1}, LLe/e1$d;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, LLe/e1$j;->e(LLe/e1$d;)V

    return-void

    :cond_2
    invoke-virtual {v0}, LLe/e1$j;->c()V

    iget-object p1, v0, LLe/e1$j;->b:LLe/e1$g;

    invoke-interface {p1, v1}, LLe/e1$g;->e(LLe/e1$d;)V

    return-void
.end method
