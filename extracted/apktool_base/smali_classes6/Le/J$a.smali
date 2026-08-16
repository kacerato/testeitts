.class public final LLe/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/J$a$a;,
        LLe/J$a$b;,
        LLe/J$a$c;
    }
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
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J$c;

.field public final f:Z

.field public g:Lhn/d;


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/J$a;->b:Lhn/c;

    iput-wide p2, p0, LLe/J$a;->c:J

    iput-object p4, p0, LLe/J$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/J$a;->e:LBe/J$c;

    iput-boolean p6, p0, LLe/J$a;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LLe/J$a;->e:LBe/J$c;

    new-instance v1, LLe/J$a$a;

    invoke-direct {v1, p0}, LLe/J$a$a;-><init>(LLe/J$a;)V

    iget-wide v2, p0, LLe/J$a;->c:J

    iget-object v4, p0, LLe/J$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/J$a;->g:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/J$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/J$a;->e:LBe/J$c;

    new-instance v1, LLe/J$a$c;

    invoke-direct {v1, p0, p1}, LLe/J$a$c;-><init>(LLe/J$a;Ljava/lang/Object;)V

    iget-wide v2, p0, LLe/J$a;->c:J

    iget-object p1, p0, LLe/J$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/J$a;->g:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/J$a;->g:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/J$a;->g:Lhn/d;

    iget-object p1, p0, LLe/J$a;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, LLe/J$a;->e:LBe/J$c;

    new-instance v1, LLe/J$a$b;

    invoke-direct {v1, p0, p1}, LLe/J$a$b;-><init>(LLe/J$a;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, LLe/J$a;->f:Z

    if-eqz p1, :cond_0

    iget-wide v2, p0, LLe/J$a;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p1, p0, LLe/J$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    return-void
.end method
