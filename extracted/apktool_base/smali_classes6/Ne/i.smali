.class public final LNe/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/N;
.implements LBe/v;
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation build LCe/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/N<",
        "TT;>;",
        "LBe/v<",
        "TT;>;",
        "LBe/f;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-",
            "LBe/A<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public c:LDe/c;


# direct methods
.method public constructor <init>(LBe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "LBe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNe/i;->b:LBe/N;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LNe/i;->b:LBe/N;

    invoke-static {}, LBe/A;->a()LBe/A;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LNe/i;->b:LBe/N;

    invoke-static {p1}, LBe/A;->c(Ljava/lang/Object;)LBe/A;

    move-result-object p1

    invoke-interface {v0, p1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LNe/i;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LNe/i;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LNe/i;->c:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LNe/i;->c:LDe/c;

    iget-object p1, p0, LNe/i;->b:LBe/N;

    invoke-interface {p1, p0}, LBe/N;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/i;->b:LBe/N;

    invoke-static {p1}, LBe/A;->b(Ljava/lang/Throwable;)LBe/A;

    move-result-object p1

    invoke-interface {v0, p1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method
