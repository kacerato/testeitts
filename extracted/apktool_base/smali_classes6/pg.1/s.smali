.class public final Lpg/s;
.super Lpg/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lpg/t<",
        "TR;>;"
    }
.end annotation

.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final i:Leg/q;
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

    invoke-direct {p0, v0}, Lpg/t;-><init>(Lyf/j;)V

    new-instance v0, Leg/q;

    invoke-static {p1}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Leg/q;-><init>(Lyf/f;I)V

    iput-object v0, p0, Lpg/s;->i:Leg/q;

    return-void
.end method

.method public static final synthetic p0(Lpg/s;)Leg/q;
    .locals 0

    iget-object p0, p0, Lpg/s;->i:Leg/q;

    return-object p0
.end method


# virtual methods
.method public final q0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/f0;
    .end annotation

    iget-object v0, p0, Lpg/s;->i:Leg/q;

    sget-object v1, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final r0()Ljava/lang/Object;
    .locals 7
    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lpg/s;->i:Leg/q;

    invoke-virtual {v0}, Leg/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpg/s;->i:Leg/q;

    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lpg/l;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0}, Leg/T;->a(Lyf/j;)Leg/S;

    move-result-object v1

    sget-object v3, Leg/U;->UNDISPATCHED:Leg/U;

    new-instance v4, Lpg/s$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lpg/s$a;-><init>(Lpg/s;Lyf/f;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Leg/i;->e(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;

    iget-object v0, p0, Lpg/s;->i:Leg/q;

    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
