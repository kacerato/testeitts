.class public abstract LWe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:LDe/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, LWe/b;->b:LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    iput-object v1, p0, LWe/b;->b:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final e(LDe/c;)V
    .locals 2
    .param p1    # LDe/c;
        .annotation build LCe/f;
        .end annotation
    .end param

    iget-object v0, p0, LWe/b;->b:LDe/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/i;->e(LDe/c;LDe/c;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LWe/b;->b:LDe/c;

    invoke-virtual {p0}, LWe/b;->c()V

    :cond_0
    return-void
.end method
