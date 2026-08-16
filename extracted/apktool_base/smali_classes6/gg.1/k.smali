.class public final Lgg/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final B:I = 0x0

.field public static final C:I = 0x1

.field public static final D:I = 0x2

.field public static final E:I = 0x3

.field public static final F:I = 0x3c

.field public static final G:J = 0xfffffffffffffffL

.field public static final H:J = 0x4000000000000000L

.field public static final I:J = 0x3fffffffffffffffL

.field public static final a:Lgg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/q<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I
    .annotation build LLf/g;
    .end annotation
.end field

.field public static final c:I

.field public static final d:J = 0x0L

.field public static final e:J = 0x7fffffffffffffffL

.field public static final f:Lmg/T;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x5

.field public static final x:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lgg/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgg/q;-><init>(JLgg/q;Lgg/j;I)V

    sput-object v6, Lgg/k;->a:Lgg/q;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lmg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lgg/k;->b:I

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lmg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lgg/k;->c:I

    new-instance v0, Lmg/T;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->f:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->g:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->h:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->i:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->j:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->k:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->l:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->m:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->n:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->o:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->p:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->q:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->x:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->y:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->z:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgg/k;->A:Lmg/T;

    return-void
.end method

.method public static final A(J)J
    .locals 2

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static final B(J)Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final C(J)I
    .locals 1

    const/16 v0, 0x3c

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final D(J)J
    .locals 2

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static final E(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static final F(Leg/p;Ljava/lang/Object;LMf/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-TT;>;TT;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Leg/p;->k(Ljava/lang/Object;Ljava/lang/Object;LMf/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Leg/p;->B(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic G(Leg/p;Ljava/lang/Object;LMf/l;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lgg/k;->F(Leg/p;Ljava/lang/Object;LMf/l;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lgg/k;->v(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lgg/k;->w(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLgg/q;)Lgg/q;
    .locals 0

    invoke-static {p0, p1, p2}, Lgg/k;->x(JLgg/q;)Lgg/q;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->y:Lmg/T;

    return-object v0
.end method

.method public static final synthetic e()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->z:Lmg/T;

    return-object v0
.end method

.method public static final synthetic f()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->k:Lmg/T;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Lgg/k;->c:I

    return v0
.end method

.method public static final synthetic h()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->q:Lmg/T;

    return-object v0
.end method

.method public static final synthetic i()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->m:Lmg/T;

    return-object v0
.end method

.method public static final synthetic j()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->l:Lmg/T;

    return-object v0
.end method

.method public static final synthetic k()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->g:Lmg/T;

    return-object v0
.end method

.method public static final synthetic l()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->A:Lmg/T;

    return-object v0
.end method

.method public static final synthetic m()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->x:Lmg/T;

    return-object v0
.end method

.method public static final synthetic n()Lgg/q;
    .locals 1

    sget-object v0, Lgg/k;->a:Lgg/q;

    return-object v0
.end method

.method public static final synthetic o()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->j:Lmg/T;

    return-object v0
.end method

.method public static final synthetic p()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->i:Lmg/T;

    return-object v0
.end method

.method public static final synthetic q()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->h:Lmg/T;

    return-object v0
.end method

.method public static final synthetic r()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->o:Lmg/T;

    return-object v0
.end method

.method public static final synthetic s()Lmg/T;
    .locals 1

    sget-object v0, Lgg/k;->p:Lmg/T;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    invoke-static {p0}, Lgg/k;->E(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic u(Leg/p;Ljava/lang/Object;LMf/l;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lgg/k;->F(Leg/p;Ljava/lang/Object;LMf/l;)Z

    move-result p0

    return p0
.end method

.method public static final v(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final w(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final x(JLgg/q;)Lgg/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(J",
            "Lgg/q<",
            "TE;>;)",
            "Lgg/q<",
            "TE;>;"
        }
    .end annotation

    new-instance v6, Lgg/q;

    invoke-virtual {p2}, Lgg/q;->w()Lgg/j;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lgg/q;-><init>(JLgg/q;Lgg/j;I)V

    return-object v6
.end method

.method public static final y()LWf/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LWf/h<",
            "Lgg/q<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lgg/k$a;->b:Lgg/k$a;

    return-object v0
.end method

.method public static final z()Lmg/T;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lgg/k;->n:Lmg/T;

    return-object v0
.end method
