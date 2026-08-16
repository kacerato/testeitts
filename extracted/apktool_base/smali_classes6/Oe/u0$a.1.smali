.class public final LOe/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/u0;
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

.field public c:LDe/c;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/u0$a;->b:LBe/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LOe/u0$a;->c:LDe/c;

    iget-object v0, p0, LOe/u0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LOe/u0$a;->d:Ljava/lang/Object;

    iget-object v1, p0, LOe/u0$a;->b:LBe/v;

    invoke-interface {v1, v0}, LBe/v;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/u0$a;->b:LBe/v;

    invoke-interface {v0}, LBe/v;->a()V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LOe/u0$a;->c:LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/u0$a;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LOe/u0$a;->c:LDe/c;

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/u0$a;->c:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/u0$a;->c:LDe/c;

    iget-object p1, p0, LOe/u0$a;->b:LBe/v;

    invoke-interface {p1, p0}, LBe/v;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LOe/u0$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LOe/u0$a;->c:LDe/c;

    const/4 v0, 0x0

    iput-object v0, p0, LOe/u0$a;->d:Ljava/lang/Object;

    iget-object v0, p0, LOe/u0$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
