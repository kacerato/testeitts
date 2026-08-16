.class public final LOe/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/f1;
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
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:LDe/c;

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(LBe/N;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/f1$a;->b:LBe/N;

    iput-object p2, p0, LOe/f1$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LOe/f1$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/f1$a;->f:Z

    iget-object v0, p0, LOe/f1$a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LOe/f1$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, LOe/f1$a;->c:Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, LOe/f1$a;->b:LBe/N;

    invoke-interface {v1, v0}, LBe/N;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LOe/f1$a;->b:LBe/N;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/f1$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/f1$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/f1$a;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/f1$a;->d:LDe/c;

    iget-object p1, p0, LOe/f1$a;->b:LBe/N;

    invoke-interface {p1, p0}, LBe/N;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/f1$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/f1$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/f1$a;->f:Z

    iget-object p1, p0, LOe/f1$a;->d:LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    iget-object p1, p0, LOe/f1$a;->b:LBe/N;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, LOe/f1$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/f1$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/f1$a;->f:Z

    iget-object v0, p0, LOe/f1$a;->b:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
