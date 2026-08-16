.class public final LOe/i1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/i1$a;
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

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/i1;->c:J

    iput-object p4, p0, LOe/i1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/i1;->e:LBe/J;

    iput p6, p0, LOe/i1;->f:I

    iput-boolean p7, p0, LOe/i1;->g:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v9, LOe/i1$a;

    iget-wide v3, p0, LOe/i1;->c:J

    iget-object v5, p0, LOe/i1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, LOe/i1;->e:LBe/J;

    iget v7, p0, LOe/i1;->f:I

    iget-boolean v8, p0, LOe/i1;->g:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, LOe/i1$a;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-interface {v0, v9}, LBe/G;->c(LBe/I;)V

    return-void
.end method
