.class public final LOe/r1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/r1$a;
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

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LBe/J;

.field public final g:I

.field public final h:Z


# direct methods
.method public constructor <init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/r1;->c:J

    iput-wide p4, p0, LOe/r1;->d:J

    iput-object p6, p0, LOe/r1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LOe/r1;->f:LBe/J;

    iput p8, p0, LOe/r1;->g:I

    iput-boolean p9, p0, LOe/r1;->h:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v11, LOe/r1$a;

    iget-wide v3, p0, LOe/r1;->c:J

    iget-wide v5, p0, LOe/r1;->d:J

    iget-object v7, p0, LOe/r1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, LOe/r1;->f:LBe/J;

    iget v9, p0, LOe/r1;->g:I

    iget-boolean v10, p0, LOe/r1;->h:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, LOe/r1$a;-><init>(LBe/I;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-interface {v0, v11}, LBe/G;->c(LBe/I;)V

    return-void
.end method
