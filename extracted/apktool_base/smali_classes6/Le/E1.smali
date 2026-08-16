.class public final LLe/E1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/E1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:LBe/J;

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/E1;->d:J

    iput-wide p4, p0, LLe/E1;->e:J

    iput-object p6, p0, LLe/E1;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LLe/E1;->g:LBe/J;

    iput p8, p0, LLe/E1;->h:I

    iput-boolean p9, p0, LLe/E1;->i:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v11, LLe/E1$a;

    iget-wide v3, p0, LLe/E1;->d:J

    iget-wide v5, p0, LLe/E1;->e:J

    iget-object v7, p0, LLe/E1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, LLe/E1;->g:LBe/J;

    iget v9, p0, LLe/E1;->h:I

    iget-boolean v10, p0, LLe/E1;->i:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, LLe/E1$a;-><init>(Lhn/c;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-virtual {v0, v11}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
