.class public Lmg/w;
.super Lmg/y;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmg/y;-><init>()V

    return-void
.end method


# virtual methods
.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()Lmg/y;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic R()Z
    .locals 1

    invoke-virtual {p0}, Lmg/w;->a0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final synthetic Y(LMf/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmg/y;",
            ">(",
            "LMf/l<",
            "-TT;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lmg/y;->A()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmg/y;

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->y(ILjava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lmg/y;->B()Lmg/y;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Z()Z
    .locals 1

    invoke-virtual {p0}, Lmg/y;->A()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a0()Ljava/lang/Void;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "head cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b0()V
    .locals 4

    invoke-virtual {p0}, Lmg/y;->A()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmg/y;

    move-object v2, p0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lmg/y;->B()Lmg/y;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lmg/y;->X(Lmg/y;Lmg/y;)V

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmg/y;->A()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmg/y;

    invoke-virtual {p0, v2, v0}, Lmg/y;->X(Lmg/y;Lmg/y;)V

    return-void
.end method
