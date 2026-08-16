.class public final LOe/G;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/G$a;
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
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:Z


# direct methods
.method public constructor <init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/G;->c:J

    iput-object p4, p0, LOe/G;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/G;->e:LBe/J;

    iput-boolean p6, p0, LOe/G;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/G;->f:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v0, LWe/m;

    invoke-direct {v0, p1}, LWe/m;-><init>(LBe/I;)V

    move-object v2, v0

    :goto_0
    iget-object p1, p0, LOe/G;->e:LBe/J;

    invoke-virtual {p1}, LBe/J;->c()LBe/J$c;

    move-result-object v6

    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v0, LOe/G$a;

    iget-wide v3, p0, LOe/G;->c:J

    iget-object v5, p0, LOe/G;->d:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, LOe/G;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, LOe/G$a;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;Z)V

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    return-void
.end method
