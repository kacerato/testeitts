.class public final LOe/W0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/W0$a;,
        LOe/W0$b;,
        LOe/W0$c;
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

    iput-wide p2, p0, LOe/W0;->c:J

    iput-object p4, p0, LOe/W0;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/W0;->e:LBe/J;

    iput-boolean p6, p0, LOe/W0;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v1, LWe/m;

    invoke-direct {v1, p1}, LWe/m;-><init>(LBe/I;)V

    iget-boolean p1, p0, LOe/W0;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v6, LOe/W0$a;

    iget-wide v2, p0, LOe/W0;->c:J

    iget-object v4, p0, LOe/W0;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LOe/W0;->e:LBe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LOe/W0$a;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-interface {p1, v6}, LBe/G;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v6, LOe/W0$b;

    iget-wide v2, p0, LOe/W0;->c:J

    iget-object v4, p0, LOe/W0;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LOe/W0;->e:LBe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LOe/W0$b;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-interface {p1, v6}, LBe/G;->c(LBe/I;)V

    :goto_0
    return-void
.end method
