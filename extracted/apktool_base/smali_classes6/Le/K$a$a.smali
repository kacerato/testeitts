.class public final LLe/K$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/K$a;
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
.field public static final c:J = -0x3605ff92ed908fcaL


# instance fields
.field public final synthetic b:LLe/K$a;


# direct methods
.method public constructor <init>(LLe/K$a;)V
    .locals 0

    iput-object p1, p0, LLe/K$a$a;->b:LLe/K$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LLe/K$a$a;->b:LLe/K$a;

    invoke-virtual {v0}, LLe/K$a;->b()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/d;

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p1}, Lhn/d;->cancel()V

    iget-object p1, p0, LLe/K$a$a;->b:LLe/K$a;

    invoke-virtual {p1}, LLe/K$a;->b()V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    invoke-static {p0, p1}, LUe/j;->j(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LLe/K$a$a;->b:LLe/K$a;

    iget-object v0, v0, LLe/K$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
