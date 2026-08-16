.class public final LMe/l;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;


# direct methods
.method public constructor <init>(LBe/y;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LMe/a;-><init>(LBe/y;)V

    iput-wide p2, p0, LMe/l;->c:J

    iput-object p4, p0, LMe/l;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LMe/l;->e:LBe/J;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/a;->b:LBe/y;

    new-instance v7, LMe/l$a;

    iget-wide v3, p0, LMe/l;->c:J

    iget-object v5, p0, LMe/l;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, LMe/l;->e:LBe/J;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LMe/l$a;-><init>(LBe/v;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-interface {v0, v7}, LBe/y;->d(LBe/v;)V

    return-void
.end method
