.class public final LOe/w1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/w1$a;
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
.method public constructor <init>(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/w1;->c:J

    iput-object p4, p0, LOe/w1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/w1;->e:LBe/J;

    iput-boolean p6, p0, LOe/w1;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v8, LOe/w1$a;

    iget-wide v3, p0, LOe/w1;->c:J

    iget-object v5, p0, LOe/w1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, LOe/w1;->e:LBe/J;

    invoke-virtual {v1}, LBe/J;->c()LBe/J$c;

    move-result-object v6

    iget-boolean v7, p0, LOe/w1;->f:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, LOe/w1$a;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;Z)V

    invoke-interface {v0, v8}, LBe/G;->c(LBe/I;)V

    return-void
.end method
