.class public final LLe/w1$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/w1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = -0x4d9aed7319193fc1L


# instance fields
.field public final synthetic b:LLe/w1$a;


# direct methods
.method public constructor <init>(LLe/w1$a;)V
    .locals 0

    iput-object p1, p0, LLe/w1$a$a;->b:LLe/w1$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LLe/w1$a$a;->b:LLe/w1$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, LLe/w1$a;->g:Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, LLe/w1$a$a;->b:LLe/w1$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, LLe/w1$a;->g:Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, LLe/w1$a$a;->b:LLe/w1$a;

    iget-object v0, v0, LLe/w1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/w1$a$a;->b:LLe/w1$a;

    iget-object v1, v0, LLe/w1$a;->b:Lhn/c;

    iget-object v2, v0, LLe/w1$a;->f:Lio/reactivex/internal/util/c;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/k;->d(Lhn/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method
