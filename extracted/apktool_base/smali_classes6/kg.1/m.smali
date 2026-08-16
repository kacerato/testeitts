.class public final Lkg/m;
.super Lmg/O;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmg/O<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lyf/j;Lyf/f;)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmg/O;-><init>(Lyf/j;Lyf/f;)V

    return-void
.end method


# virtual methods
.method public p0(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of v0, p1, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Leg/R0;->k0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
