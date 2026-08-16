.class public final LLe/v1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/v1$a;
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

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LBe/J;

.field public final g:I

.field public final h:Z


# direct methods
.method public constructor <init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/v1;->d:J

    iput-object p4, p0, LLe/v1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/v1;->f:LBe/J;

    iput p6, p0, LLe/v1;->g:I

    iput-boolean p7, p0, LLe/v1;->h:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v9, LLe/v1$a;

    iget-wide v3, p0, LLe/v1;->d:J

    iget-object v5, p0, LLe/v1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, LLe/v1;->f:LBe/J;

    iget v7, p0, LLe/v1;->g:I

    iget-boolean v8, p0, LLe/v1;->h:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, LLe/v1$a;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-virtual {v0, v9}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
