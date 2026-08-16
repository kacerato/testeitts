.class public Lcom/google/common/cache/k;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/k$n;,
        Lcom/google/common/cache/k$o;,
        Lcom/google/common/cache/k$l;,
        Lcom/google/common/cache/k$p;,
        Lcom/google/common/cache/k$h;,
        Lcom/google/common/cache/k$B;,
        Lcom/google/common/cache/k$k;,
        Lcom/google/common/cache/k$c;,
        Lcom/google/common/cache/k$g;,
        Lcom/google/common/cache/k$L;,
        Lcom/google/common/cache/k$z;,
        Lcom/google/common/cache/k$j;,
        Lcom/google/common/cache/k$i;,
        Lcom/google/common/cache/k$e;,
        Lcom/google/common/cache/k$K;,
        Lcom/google/common/cache/k$m;,
        Lcom/google/common/cache/k$r;,
        Lcom/google/common/cache/k$I;,
        Lcom/google/common/cache/k$H;,
        Lcom/google/common/cache/k$J;,
        Lcom/google/common/cache/k$x;,
        Lcom/google/common/cache/k$s;,
        Lcom/google/common/cache/k$F;,
        Lcom/google/common/cache/k$D;,
        Lcom/google/common/cache/k$G;,
        Lcom/google/common/cache/k$C;,
        Lcom/google/common/cache/k$E;,
        Lcom/google/common/cache/k$v;,
        Lcom/google/common/cache/k$y;,
        Lcom/google/common/cache/k$u;,
        Lcom/google/common/cache/k$w;,
        Lcom/google/common/cache/k$d;,
        Lcom/google/common/cache/k$q;,
        Lcom/google/common/cache/k$A;,
        Lcom/google/common/cache/k$f;,
        Lcom/google/common/cache/k$t;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final A:I = 0x3f

.field public static final B:I = 0x10

.field public static final C:Ljava/util/logging/Logger;

.field public static final D:Lcom/google/common/cache/k$A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k$A<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field

.field public static final x:I = 0x40000000

.field public static final y:I = 0x10000

.field public static final z:I = 0x3


# instance fields
.field public final b:I

.field public final c:I

.field public final d:[Lcom/google/common/cache/k$r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/common/cache/k$t;

.field public final i:Lcom/google/common/cache/k$t;

.field public final j:J

.field public final k:Lcom/google/common/cache/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/x<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/v<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final q:Lw2/U;

.field public final r:Lcom/google/common/cache/k$f;

.field public final s:Lcom/google/common/cache/a$b;

.field public final t:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field

.field public v:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field

.field public w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/cache/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/k;->C:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/common/cache/k$a;

    invoke-direct {v0}, Lcom/google/common/cache/k$a;-><init>()V

    sput-object v0, Lcom/google/common/cache/k;->D:Lcom/google/common/cache/k$A;

    new-instance v0, Lcom/google/common/cache/k$b;

    invoke-direct {v0}, Lcom/google/common/cache/k$b;-><init>()V

    sput-object v0, Lcom/google/common/cache/k;->E:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V
    .locals 11
    .param p2    # Lcom/google/common/cache/CacheLoader;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/cache/d;->j()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/cache/k;->e:I

    invoke-virtual {p1}, Lcom/google/common/cache/d;->o()Lcom/google/common/cache/k$t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k;->h:Lcom/google/common/cache/k$t;

    invoke-virtual {p1}, Lcom/google/common/cache/d;->v()Lcom/google/common/cache/k$t;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/k;->i:Lcom/google/common/cache/k$t;

    invoke-virtual {p1}, Lcom/google/common/cache/d;->n()Lw2/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {p1}, Lcom/google/common/cache/d;->u()Lw2/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/k;->g:Lw2/m;

    invoke-virtual {p1}, Lcom/google/common/cache/d;->p()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/cache/k;->j:J

    invoke-virtual {p1}, Lcom/google/common/cache/d;->w()Lcom/google/common/cache/x;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->k:Lcom/google/common/cache/x;

    invoke-virtual {p1}, Lcom/google/common/cache/d;->k()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/k;->l:J

    invoke-virtual {p1}, Lcom/google/common/cache/d;->l()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/k;->m:J

    invoke-virtual {p1}, Lcom/google/common/cache/d;->q()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/k;->n:J

    invoke-virtual {p1}, Lcom/google/common/cache/d;->r()Lcom/google/common/cache/r;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->p:Lcom/google/common/cache/r;

    sget-object v4, Lcom/google/common/cache/d$d;->INSTANCE:Lcom/google/common/cache/d$d;

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/google/common/cache/k;->k()Ljava/util/Queue;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/google/common/cache/k;->o:Ljava/util/Queue;

    invoke-virtual {p0}, Lcom/google/common/cache/k;->N()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/common/cache/d;->t(Z)Lw2/U;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {p0}, Lcom/google/common/cache/k;->W()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/common/cache/k;->a0()Z

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/google/common/cache/k$f;->e(Lcom/google/common/cache/k$t;ZZ)Lcom/google/common/cache/k$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k;->r:Lcom/google/common/cache/k$f;

    invoke-virtual {p1}, Lcom/google/common/cache/d;->s()Lw2/Q;

    move-result-object v0

    invoke-interface {v0}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/a$b;

    iput-object v0, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    iput-object p2, p0, Lcom/google/common/cache/k;->t:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p1}, Lcom/google/common/cache/d;->m()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/common/cache/k;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->j()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-long v3, p2

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_1
    iget v4, p0, Lcom/google/common/cache/k;->e:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/common/cache/k;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/google/common/cache/k;->j:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/cache/k;->c:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/google/common/cache/k;->b:I

    invoke-virtual {p0, v2}, Lcom/google/common/cache/k;->D(I)[Lcom/google/common/cache/k$r;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    div-int v3, p2, v2

    mul-int v4, v3, v2

    if-ge v4, p2, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_2
    if-ge v1, v3, :cond_5

    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/k;->l()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-wide v3, p0, Lcom/google/common/cache/k;->j:J

    int-to-long v5, v2

    div-long v7, v3, v5

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    rem-long/2addr v3, v5

    :goto_3
    iget-object p2, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    array-length v2, p2

    if-ge v0, v2, :cond_8

    int-to-long v5, v0

    cmp-long v2, v5, v3

    if-nez v2, :cond_6

    sub-long/2addr v7, v9

    :cond_6
    invoke-virtual {p1}, Lcom/google/common/cache/d;->s()Lw2/Q;

    move-result-object v2

    invoke-interface {v2}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/a$b;

    invoke-virtual {p0, v1, v7, v8, v2}, Lcom/google/common/cache/k;->i(IJLcom/google/common/cache/a$b;)Lcom/google/common/cache/k$r;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    array-length v2, p2

    if-ge v0, v2, :cond_8

    invoke-virtual {p1}, Lcom/google/common/cache/d;->s()Lw2/Q;

    move-result-object v2

    invoke-interface {v2}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/a$b;

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/google/common/cache/k;->i(IJLcom/google/common/cache/a$b;)Lcom/google/common/cache/k$r;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public static F()Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/k$q;->INSTANCE:Lcom/google/common/cache/k$q;

    return-object v0
.end method

.method public static H(Lcom/google/common/cache/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/cache/k;->F()Lcom/google/common/cache/p;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/cache/p;->r(Lcom/google/common/cache/p;)V

    invoke-interface {p0, v0}, Lcom/google/common/cache/p;->c(Lcom/google/common/cache/p;)V

    return-void
.end method

.method public static I(Lcom/google/common/cache/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/cache/k;->F()Lcom/google/common/cache/p;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/cache/p;->s(Lcom/google/common/cache/p;)V

    invoke-interface {p0, v0}, Lcom/google/common/cache/p;->u(Lcom/google/common/cache/p;)V

    return-void
.end method

.method public static R(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static U(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/E1;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public static V()Lcom/google/common/cache/k$A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/k;->D:Lcom/google/common/cache/k$A;

    return-object v0
.end method

.method public static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/google/common/cache/k;->U(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/cache/p;->r(Lcom/google/common/cache/p;)V

    invoke-interface {p1, p0}, Lcom/google/common/cache/p;->c(Lcom/google/common/cache/p;)V

    return-void
.end method

.method public static g(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/cache/p;->s(Lcom/google/common/cache/p;)V

    invoke-interface {p1, p0}, Lcom/google/common/cache/p;->u(Lcom/google/common/cache/p;)V

    return-void
.end method

.method public static k()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/k;->E:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public A(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TK;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lw2/O;->c()Lw2/O;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->e(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lw2/O;->l()Lw2/O;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5, v4}, Lcom/google/common/cache/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    iget-object p2, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lw2/O;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/a$b;->c(J)V

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lw2/O;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/a$b;->e(J)V

    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " returned null keys or values from loadAll"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lw2/O;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/a$b;->e(J)V

    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " returned null map from loadAll"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    move v1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_4
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_2
    if-nez v1, :cond_5

    iget-object p2, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lw2/O;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/a$b;->e(J)V

    :cond_5
    throw p1
.end method

.method public B()J
    .locals 7

    iget-object v0, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v4

    iget v5, v5, Lcom/google/common/cache/k$r;->c:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public C(Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 1
    .param p3    # Lcom/google/common/cache/p;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/k$r;->E(Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final D(I)[Lcom/google/common/cache/k$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;"
        }
    .end annotation

    new-array p1, p1, [Lcom/google/common/cache/k$r;

    return-object p1
.end method

.method public E(Lcom/google/common/cache/p;Ljava/lang/Object;I)Lcom/google/common/cache/k$A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/cache/k;->i:Lcom/google/common/cache/k$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v0

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/common/cache/k$t;->c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Ljava/lang/Object;I)Lcom/google/common/cache/k$A;

    move-result-object p1

    return-object p1
.end method

.method public J()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/v;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/k;->p:Lcom/google/common/cache/r;

    invoke-interface {v1, v0}, Lcom/google/common/cache/r;->a(Lcom/google/common/cache/v;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/common/cache/k;->C:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K(Lcom/google/common/cache/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$r;->K(Lcom/google/common/cache/p;I)Z

    return-void
.end method

.method public L(Lcom/google/common/cache/k$A;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/k$A;->a()Lcom/google/common/cache/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/p;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/cache/k$r;->L(Ljava/lang/Object;ILcom/google/common/cache/k$A;)Z

    return-void
.end method

.method public M()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->n()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->O()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public O()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public P(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/k;->t:Lcom/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/common/cache/k$r;->P(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    return-void
.end method

.method public Q()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/k;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T(I)Lcom/google/common/cache/k$r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    iget v1, p0, Lcom/google/common/cache/k;->c:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/google/common/cache/k;->b:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public W()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->X()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public X()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Y()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k;->h:Lcom/google/common/cache/k$t;

    sget-object v1, Lcom/google/common/cache/k$t;->STRONG:Lcom/google/common/cache/k$t;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k;->i:Lcom/google/common/cache/k$t;

    sget-object v1, Lcom/google/common/cache/k$t;->STRONG:Lcom/google/common/cache/k$t;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->b0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->o()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/common/cache/k$r;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$r;->f(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v3}, Lw2/U;->a()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    const-wide/16 v6, -0x1

    move v8, v2

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    array-length v9, v5

    const-wide/16 v10, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v9, :cond_4

    aget-object v13, v5, v12

    iget v14, v13, Lcom/google/common/cache/k$r;->c:I

    iget-object v14, v13, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v15, v2

    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_3

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/p;

    :goto_3
    if-eqz v2, :cond_2

    move-object/from16 v16, v5

    invoke-virtual {v13, v2, v3, v4}, Lcom/google/common/cache/k$r;->x(Lcom/google/common/cache/p;J)Ljava/lang/Object;

    move-result-object v5

    move-wide/from16 v17, v3

    if-eqz v5, :cond_1

    iget-object v3, v0, Lcom/google/common/cache/k;->g:Lw2/m;

    invoke-virtual {v3, v1, v5}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-interface {v2}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v2

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    iget v2, v13, Lcom/google/common/cache/k$r;->e:I

    int-to-long v2, v2

    add-long/2addr v10, v2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    cmp-long v2, v10, v6

    if-nez v2, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v10

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/common/cache/k$r;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k;->w:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/k$h;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$h;-><init>(Lcom/google/common/cache/k;)V

    iput-object v0, p0, Lcom/google/common/cache/k;->w:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$r;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public h(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/k$r;->h(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    return-object p1
.end method

.method public i(IJLcom/google/common/cache/a$b;)Lcom/google/common/cache/k$r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/google/common/cache/a$b;",
            ")",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/common/cache/k$r;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/k$r;-><init>(Lcom/google/common/cache/k;IJLcom/google/common/cache/a$b;)V

    return-object v6
.end method

.method public isEmpty()Z
    .locals 10

    iget-object v0, p0, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/k$r;->c:I

    if-eqz v7, :cond_0

    return v3

    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/k$r;->e:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    move v4, v3

    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_3

    aget-object v8, v0, v4

    iget v8, v8, Lcom/google/common/cache/k$r;->c:I

    if-eqz v8, :cond_2

    return v3

    :cond_2
    aget-object v8, v0, v4

    iget v8, v8, Lcom/google/common/cache/k$r;->e:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    move v3, v7

    :cond_4
    return v3

    :cond_5
    return v7
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k;->k:Lcom/google/common/cache/x;

    sget-object v1, Lcom/google/common/cache/d$e;->INSTANCE:Lcom/google/common/cache/d$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k;->u:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/k$k;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$k;-><init>(Lcom/google/common/cache/k;)V

    iput-object v0, p0, Lcom/google/common/cache/k;->u:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public l()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/k;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/k;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/k;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/k$r;->r(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/k$r;->J(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/cache/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/k$r;->J(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q1;->c0()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/D2;->A()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/cache/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iget-object v4, p0, Lcom/google/common/cache/k;->t:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v4}, Lcom/google/common/cache/k;->A(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "loadAll failed to return a value for "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/common/cache/k;->t:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v1, v4}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/google/common/collect/i1;->n(Ljava/util/Map;)Lcom/google/common/collect/i1;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v2}, Lcom/google/common/cache/a$b;->a(I)V

    iget-object v0, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v3}, Lcom/google/common/cache/a$b;->d(I)V

    return-object p1

    :goto_3
    iget-object v0, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v2}, Lcom/google/common/cache/a$b;->a(I)V

    iget-object v0, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v3}, Lcom/google/common/cache/a$b;->d(I)V

    throw p1
.end method

.method public r(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/cache/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {p1, v1}, Lcom/google/common/cache/a$b;->a(I)V

    iget-object p1, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {p1, v2}, Lcom/google/common/cache/a$b;->d(I)V

    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->c()Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$r;->Q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/k$r;->R(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/k$r;->X(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/k$r;->Y(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public s(Ljava/lang/Object;)Lcom/google/common/cache/p;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$r;->u(Ljava/lang/Object;I)Lcom/google/common/cache/p;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/k;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->w(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$r;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v0}, Lcom/google/common/cache/a$b;->d(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v0}, Lcom/google/common/cache/a$b;->a(I)V

    :goto_0
    return-object p1
.end method

.method public u(Lcom/google/common/cache/p;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/p;J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k;->t:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k;->v:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/k$B;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$B;-><init>(Lcom/google/common/cache/k;)V

    iput-object v0, p0, Lcom/google/common/cache/k;->v:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

.method public w(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v0, p1}, Lw2/m;->f(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/cache/k;->R(I)I

    move-result p1

    return p1
.end method

.method public x(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Lcom/google/common/cache/p;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/cache/k;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/p;->q()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/k;->l:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/k;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/common/cache/p;->g()J

    move-result-wide v2

    sub-long/2addr p2, v2

    iget-wide v2, p0, Lcom/google/common/cache/k;->m:J

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public z(Lcom/google/common/cache/p;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->T(I)Lcom/google/common/cache/k$r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/k$r;->x(Lcom/google/common/cache/p;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
