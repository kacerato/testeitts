.class public final Lpg/d;
.super Lpg/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lpg/l<",
        "TR;>;"
    }
.end annotation

.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final h:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/f;)V
    .locals 2
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lpg/l;-><init>(Lyf/j;)V

    new-instance v0, Leg/q;

    invoke-static {p1}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Leg/q;-><init>(Lyf/f;I)V

    iput-object v0, p0, Lpg/d;->h:Leg/q;

    return-void
.end method

.method public static final synthetic n0(Lpg/d;)Leg/q;
    .locals 0

    iget-object p0, p0, Lpg/d;->h:Leg/q;

    return-object p0
.end method


# virtual methods
.method public final o0()Ljava/lang/Object;
    .locals 7
    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lpg/d;->h:Leg/q;

    invoke-virtual {v0}, Leg/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpg/d;->h:Leg/q;

    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lpg/l;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0}, Leg/T;->a(Lyf/j;)Leg/S;

    move-result-object v1

    sget-object v3, Leg/U;->UNDISPATCHED:Leg/U;

    new-instance v4, Lpg/d$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lpg/d$a;-><init>(Lpg/d;Lyf/f;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Leg/i;->e(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;

    iget-object v0, p0, Lpg/d;->h:Leg/q;

    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final p0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/f0;
    .end annotation

    iget-object v0, p0, Lpg/d;->h:Leg/q;

    sget-object v1, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
