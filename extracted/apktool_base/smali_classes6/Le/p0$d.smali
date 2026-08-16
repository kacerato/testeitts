.class public final LLe/p0$d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final d:J = 0x1a24ec53e2780a15L


# instance fields
.field public final b:LLe/p0$b;

.field public final c:Z


# direct methods
.method public constructor <init>(LLe/p0$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/p0$d;->b:LLe/p0$b;

    iput-boolean p2, p0, LLe/p0$d;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/p0$d;->b:LLe/p0$b;

    invoke-interface {v0, p0}, LLe/p0$b;->e(LLe/p0$d;)V

    return-void
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LLe/p0$d;->b:LLe/p0$b;

    iget-boolean v1, p0, LLe/p0$d;->c:Z

    invoke-interface {v0, v1, p1}, LLe/p0$b;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/p0$d;->b:LLe/p0$b;

    invoke-interface {v0, p1}, LLe/p0$b;->c(Ljava/lang/Throwable;)V

    return-void
.end method
