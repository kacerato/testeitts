.class public abstract LBf/k;
.super LBf/a;
.source "SourceFile"


# annotations
.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# direct methods
.method public constructor <init>(Lyf/f;)V
    .locals 1
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LBf/a;-><init>(Lyf/f;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object p1

    sget-object v0, Lyf/l;->b:Lyf/l;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyf/l;->b:Lyf/l;

    return-object v0
.end method
