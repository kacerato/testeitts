.class public final LOe/E0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/E0$a;
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
.field public final c:LBe/J;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(LBe/G;LBe/J;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/J;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/E0;->c:LBe/J;

    iput-boolean p3, p0, LOe/E0;->d:Z

    iput p4, p0, LOe/E0;->e:I

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/E0;->c:LBe/J;

    instance-of v1, v0, LSe/s;

    if-eqz v1, :cond_0

    iget-object v0, p0, LOe/a;->b:LBe/G;

    invoke-interface {v0, p1}, LBe/G;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    iget-object v1, p0, LOe/a;->b:LBe/G;

    new-instance v2, LOe/E0$a;

    iget-boolean v3, p0, LOe/E0;->d:Z

    iget v4, p0, LOe/E0;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, LOe/E0$a;-><init>(LBe/I;LBe/J$c;ZI)V

    invoke-interface {v1, v2}, LBe/G;->c(LBe/I;)V

    :goto_0
    return-void
.end method
