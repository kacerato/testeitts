.class public final LOe/j1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/j1;
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
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LGe/a;

.field public d:LDe/c;

.field public volatile e:Z

.field public f:Z


# direct methods
.method public constructor <init>(LBe/I;LGe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LGe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/j1$b;->b:LBe/I;

    iput-object p2, p0, LOe/j1$b;->c:LGe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LOe/j1$b;->c:LGe/a;

    invoke-virtual {v0}, LGe/a;->dispose()V

    iget-object v0, p0, LOe/j1$b;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/j1$b;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/j1$b;->d:LDe/c;

    iget-object v0, p0, LOe/j1$b;->c:LGe/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, LGe/a;->b(ILDe/c;)Z

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/j1$b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/j1$b;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LOe/j1$b;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/j1$b;->f:Z

    iget-object v0, p0, LOe/j1$b;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/j1$b;->c:LGe/a;

    invoke-virtual {v0}, LGe/a;->dispose()V

    iget-object v0, p0, LOe/j1$b;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
