.class public final LOe/S$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S;
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
.field public final b:LBe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public d:LDe/c;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(LBe/v;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/S$a;->b:LBe/v;

    iput-wide p2, p0, LOe/S$a;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/S$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/S$a;->f:Z

    iget-object v0, p0, LOe/S$a;->b:LBe/v;

    invoke-interface {v0}, LBe/v;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/S$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/S$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/S$a;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/S$a;->d:LDe/c;

    iget-object p1, p0, LOe/S$a;->b:LBe/v;

    invoke-interface {p1, p0}, LBe/v;->e(LDe/c;)V

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

    iget-boolean v0, p0, LOe/S$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LOe/S$a;->e:J

    iget-wide v2, p0, LOe/S$a;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/S$a;->f:Z

    iget-object v0, p0, LOe/S$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/S$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LOe/S$a;->e:J

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/S$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/S$a;->f:Z

    iget-object v0, p0, LOe/S$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
