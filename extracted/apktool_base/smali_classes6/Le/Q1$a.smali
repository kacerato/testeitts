.class public final LLe/Q1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/Q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "LBe/q<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public c:Lhn/d;

.field public d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/N;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TU;>;TU;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/Q1$a;->b:LBe/N;

    iput-object p2, p0, LLe/Q1$a;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LLe/Q1$a;->c:Lhn/d;

    iget-object v0, p0, LLe/Q1$a;->b:LBe/N;

    iget-object v1, p0, LLe/Q1$a;->d:Ljava/util/Collection;

    invoke-interface {v0, v1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LLe/Q1$a;->c:Lhn/d;

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

    iget-object v0, p0, LLe/Q1$a;->c:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LLe/Q1$a;->c:Lhn/d;

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/Q1$a;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/Q1$a;->c:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/Q1$a;->c:Lhn/d;

    iget-object v0, p0, LLe/Q1$a;->b:LBe/N;

    invoke-interface {v0, p0}, LBe/N;->e(LDe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LLe/Q1$a;->d:Ljava/util/Collection;

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LLe/Q1$a;->c:Lhn/d;

    iget-object v0, p0, LLe/Q1$a;->b:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
