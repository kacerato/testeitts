.class public final LMe/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LMe/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/n$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lhn/d;


# direct methods
.method public constructor <init>(LBe/v;LBe/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;",
            "LBe/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LMe/n$a;

    invoke-direct {v0, p1}, LMe/n$a;-><init>(LBe/v;)V

    iput-object v0, p0, LMe/n$b;->b:LMe/n$a;

    iput-object p2, p0, LMe/n$b;->c:LBe/y;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LMe/n$b;->d:Lhn/d;

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, LMe/n$b;->d:Lhn/d;

    invoke-virtual {p0}, LMe/n$b;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LMe/n$b;->c:LBe/y;

    const/4 v1, 0x0

    iput-object v1, p0, LMe/n$b;->c:LBe/y;

    iget-object v1, p0, LMe/n$b;->b:LMe/n$a;

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LMe/n$b;->b:LMe/n$a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LMe/n$b;->d:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LMe/n$b;->d:Lhn/d;

    iget-object v0, p0, LMe/n$b;->b:LMe/n$a;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, LMe/n$b;->d:Lhn/d;

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, Lhn/d;->cancel()V

    iput-object v0, p0, LMe/n$b;->d:Lhn/d;

    invoke-virtual {p0}, LMe/n$b;->b()V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LMe/n$b;->d:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LMe/n$b;->d:Lhn/d;

    iget-object v0, p0, LMe/n$b;->b:LMe/n$a;

    iget-object v0, v0, LMe/n$a;->b:LBe/v;

    invoke-interface {v0, p0}, LBe/v;->e(LDe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LMe/n$b;->d:Lhn/d;

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, LMe/n$b;->d:Lhn/d;

    iget-object v0, p0, LMe/n$b;->b:LMe/n$a;

    iget-object v0, v0, LMe/n$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
