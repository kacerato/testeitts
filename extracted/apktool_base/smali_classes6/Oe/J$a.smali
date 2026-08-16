.class public final LOe/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/J;
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
.field public b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:LDe/c;


# direct methods
.method public constructor <init>(LBe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/J$a;->b:LBe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LOe/J$a;->b:LBe/I;

    sget-object v1, Lio/reactivex/internal/util/h;->INSTANCE:Lio/reactivex/internal/util/h;

    iput-object v1, p0, LOe/J$a;->c:LDe/c;

    invoke-static {}, Lio/reactivex/internal/util/h;->c()LBe/I;

    move-result-object v1

    iput-object v1, p0, LOe/J$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/J$a;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, LOe/J$a;->c:LDe/c;

    sget-object v1, Lio/reactivex/internal/util/h;->INSTANCE:Lio/reactivex/internal/util/h;

    iput-object v1, p0, LOe/J$a;->c:LDe/c;

    invoke-static {}, Lio/reactivex/internal/util/h;->c()LBe/I;

    move-result-object v1

    iput-object v1, p0, LOe/J$a;->b:LBe/I;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/J$a;->c:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/J$a;->c:LDe/c;

    iget-object p1, p0, LOe/J$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/J$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LOe/J$a;->b:LBe/I;

    sget-object v1, Lio/reactivex/internal/util/h;->INSTANCE:Lio/reactivex/internal/util/h;

    iput-object v1, p0, LOe/J$a;->c:LDe/c;

    invoke-static {}, Lio/reactivex/internal/util/h;->c()LBe/I;

    move-result-object v1

    iput-object v1, p0, LOe/J$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
