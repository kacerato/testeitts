.class public final LLe/L1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/L1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LBe/J;

.field public e:Lhn/d;

.field public f:J


# direct methods
.method public constructor <init>(Lhn/c;Ljava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Laf/d<",
            "TT;>;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/L1$a;->b:Lhn/c;

    iput-object p3, p0, LLe/L1$a;->d:LBe/J;

    iput-object p2, p0, LLe/L1$a;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/L1$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/L1$a;->e:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/L1$a;->d:LBe/J;

    iget-object v1, p0, LLe/L1$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, LLe/L1$a;->f:J

    iput-wide v0, p0, LLe/L1$a;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, LLe/L1$a;->b:Lhn/c;

    new-instance v3, Laf/d;

    iget-object v4, p0, LLe/L1$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, p1, v0, v1, v4}, Laf/d;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v2, v3}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/L1$a;->e:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/L1$a;->e:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/L1$a;->d:LBe/J;

    iget-object v1, p0, LLe/L1$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, LLe/L1$a;->f:J

    iput-object p1, p0, LLe/L1$a;->e:Lhn/d;

    iget-object p1, p0, LLe/L1$a;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/L1$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
