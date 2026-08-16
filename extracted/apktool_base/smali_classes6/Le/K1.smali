.class public final LLe/K1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/K1$a;
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

.field public final g:Z


# direct methods
.method public constructor <init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/K1;->d:J

    iput-object p4, p0, LLe/K1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/K1;->f:LBe/J;

    iput-boolean p6, p0, LLe/K1;->g:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v8, LLe/K1$a;

    iget-wide v3, p0, LLe/K1;->d:J

    iget-object v5, p0, LLe/K1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, LLe/K1;->f:LBe/J;

    invoke-virtual {v1}, LBe/J;->c()LBe/J$c;

    move-result-object v6

    iget-boolean v7, p0, LLe/K1;->g:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, LLe/K1$a;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;Z)V

    invoke-virtual {v0, v8}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
