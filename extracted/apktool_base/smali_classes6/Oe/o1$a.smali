.class public final LOe/o1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/o1;
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

.field public c:Z

.field public d:LDe/c;

.field public e:J


# direct methods
.method public constructor <init>(LBe/I;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/o1$a;->b:LBe/I;

    iput-wide p2, p0, LOe/o1$a;->e:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/o1$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/o1$a;->c:Z

    iget-object v0, p0, LOe/o1$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/o1$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/o1$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/o1$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 4

    iget-object v0, p0, LOe/o1$a;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LOe/o1$a;->d:LDe/c;

    iget-wide v0, p0, LOe/o1$a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/o1$a;->c:Z

    invoke-interface {p1}, LDe/c;->dispose()V

    iget-object p1, p0, LOe/o1$a;->b:LBe/I;

    invoke-static {p1}, LGe/e;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOe/o1$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/o1$a;->c:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, LOe/o1$a;->e:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, LOe/o1$a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOe/o1$a;->b:LBe/I;

    invoke-interface {v1, p1}, LBe/I;->h(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOe/o1$a;->a()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/o1$a;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/o1$a;->c:Z

    iget-object v0, p0, LOe/o1$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/o1$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
