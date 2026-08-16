.class public final LLe/r1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/q<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:Lhn/d;

.field public d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/r1$a;->b:LBe/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LLe/r1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/r1$a;->d:Z

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LLe/r1$a;->c:Lhn/d;

    iget-object v0, p0, LLe/r1$a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LLe/r1$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, LLe/r1$a;->b:LBe/v;

    invoke-interface {v0}, LBe/v;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, LLe/r1$a;->b:LBe/v;

    invoke-interface {v1, v0}, LBe/v;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LLe/r1$a;->c:Lhn/d;

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
    .locals 1

    iget-object v0, p0, LLe/r1$a;->c:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LLe/r1$a;->c:Lhn/d;

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/r1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/r1$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/r1$a;->d:Z

    iget-object p1, p0, LLe/r1$a;->c:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    sget-object p1, LUe/j;->CANCELLED:LUe/j;

    iput-object p1, p0, LLe/r1$a;->c:Lhn/d;

    iget-object p1, p0, LLe/r1$a;->b:LBe/v;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, LLe/r1$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/r1$a;->c:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/r1$a;->c:Lhn/d;

    iget-object v0, p0, LLe/r1$a;->b:LBe/v;

    invoke-interface {v0, p0}, LBe/v;->e(LDe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/r1$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/r1$a;->d:Z

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LLe/r1$a;->c:Lhn/d;

    iget-object v0, p0, LLe/r1$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
