.class public final LOe/X0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/X0$a;,
        LOe/X0$b;,
        LOe/X0$d;,
        LOe/X0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(LBe/G;LBe/G;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/X0;->c:LBe/G;

    iput-boolean p3, p0, LOe/X0;->d:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LWe/m;

    invoke-direct {v0, p1}, LWe/m;-><init>(LBe/I;)V

    iget-boolean p1, p0, LOe/X0;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/X0$a;

    iget-object v2, p0, LOe/X0;->c:LBe/G;

    invoke-direct {v1, v0, v2}, LOe/X0$a;-><init>(LBe/I;LBe/G;)V

    invoke-interface {p1, v1}, LBe/G;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/X0$b;

    iget-object v2, p0, LOe/X0;->c:LBe/G;

    invoke-direct {v1, v0, v2}, LOe/X0$b;-><init>(LBe/I;LBe/G;)V

    invoke-interface {p1, v1}, LBe/G;->c(LBe/I;)V

    :goto_0
    return-void
.end method
