.class public final LKe/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/t;
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
.field public final b:LBe/f;

.field public c:Lhn/d;


# direct methods
.method public constructor <init>(LBe/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKe/t$a;->b:LBe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LKe/t$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LKe/t$a;->c:Lhn/d;

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

    iget-object v0, p0, LKe/t$a;->c:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LKe/t$a;->c:Lhn/d;

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LKe/t$a;->c:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LKe/t$a;->c:Lhn/d;

    iget-object v0, p0, LKe/t$a;->b:LBe/f;

    invoke-interface {v0, p0}, LBe/f;->e(LDe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LKe/t$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
