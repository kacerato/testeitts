.class public final Lpg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lpg/c;JLMf/l;)V
    .locals 1
    .param p0    # Lpg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/c<",
            "-TR;>;J",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Leg/z0;
    .end annotation

    new-instance v0, Lpg/a;

    invoke-direct {v0, p1, p2}, Lpg/a;-><init>(J)V

    invoke-virtual {v0}, Lpg/a;->b()Lpg/e;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lpg/c;->h(Lpg/e;LMf/l;)V

    return-void
.end method

.method public static final b(Lpg/c;JLMf/l;)V
    .locals 0
    .param p0    # Lpg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/c<",
            "-TR;>;J",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Leg/z0;
    .end annotation

    invoke-static {p1, p2}, Leg/c0;->e(J)J

    move-result-wide p1

    invoke-static {p0, p1, p2, p3}, Lpg/b;->a(Lpg/c;JLMf/l;)V

    return-void
.end method
