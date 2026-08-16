.class public final LOe/E;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/E$a;,
        LOe/E$b;
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


# direct methods
.method public constructor <init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/E;->c:J

    iput-object p4, p0, LOe/E;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/E;->e:LBe/J;

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

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v7, LOe/E$b;

    new-instance v2, LWe/m;

    invoke-direct {v2, p1}, LWe/m;-><init>(LBe/I;)V

    iget-wide v3, p0, LOe/E;->c:J

    iget-object v5, p0, LOe/E;->d:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, LOe/E;->e:LBe/J;

    invoke-virtual {p1}, LBe/J;->c()LBe/J$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LOe/E$b;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V

    invoke-interface {v0, v7}, LBe/G;->c(LBe/I;)V

    return-void
.end method
