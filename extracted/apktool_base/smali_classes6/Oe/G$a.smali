.class public final LOe/G$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/G$a$a;,
        LOe/G$a$b;,
        LOe/G$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J$c;

.field public final f:Z

.field public g:LDe/c;


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/G$a;->b:LBe/I;

    iput-wide p2, p0, LOe/G$a;->c:J

    iput-object p4, p0, LOe/G$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/G$a;->e:LBe/J$c;

    iput-boolean p6, p0, LOe/G$a;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LOe/G$a;->e:LBe/J$c;

    new-instance v1, LOe/G$a$a;

    invoke-direct {v1, p0}, LOe/G$a$a;-><init>(LOe/G$a;)V

    iget-wide v2, p0, LOe/G$a;->c:J

    iget-object v4, p0, LOe/G$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/G$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/G$a;->g:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/G$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/G$a;->g:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/G$a;->g:LDe/c;

    iget-object p1, p0, LOe/G$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/G$a;->e:LBe/J$c;

    new-instance v1, LOe/G$a$c;

    invoke-direct {v1, p0, p1}, LOe/G$a$c;-><init>(LOe/G$a;Ljava/lang/Object;)V

    iget-wide v2, p0, LOe/G$a;->c:J

    iget-object p1, p0, LOe/G$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, LOe/G$a;->e:LBe/J$c;

    new-instance v1, LOe/G$a$b;

    invoke-direct {v1, p0, p1}, LOe/G$a$b;-><init>(LOe/G$a;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, LOe/G$a;->f:Z

    if-eqz p1, :cond_0

    iget-wide v2, p0, LOe/G$a;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p1, p0, LOe/G$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    return-void
.end method
