.class public abstract LJe/m;
.super LJe/l;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LJe/l<",
        "TR;>;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = -0x3b1b71a072cf1ebL


# instance fields
.field public k:LDe/c;


# direct methods
.method public constructor <init>(LBe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LJe/l;-><init>(LBe/I;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LJe/l;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LJe/l;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LJe/l;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJe/l;->c()V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, LJe/l;->dispose()V

    iget-object v0, p0, LJe/m;->k:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LJe/m;->k:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LJe/m;->k:LDe/c;

    iget-object p1, p0, LJe/l;->c:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LJe/l;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1}, LJe/l;->i(Ljava/lang/Throwable;)V

    return-void
.end method
