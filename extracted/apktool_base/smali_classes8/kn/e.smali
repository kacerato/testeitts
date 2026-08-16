.class public Lkn/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkn/e$a;
    }
.end annotation


# static fields
.field public static final n:I = 0x4

.field public static final o:I = 0x8

.field public static final p:I = 0x10


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkn/f;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkn/r;

.field public final d:[Lkn/n$a;

.field public final e:Lkn/n;

.field public f:Lkn/u;

.field public final g:[F

.field public final h:[Ljn/L;

.field public i:Ljn/A;

.field public j:Ljn/v;

.field public final k:Lkn/i;

.field public final l:Lkn/l;

.field public m:I


# direct methods
.method public constructor <init>(Lkn/i;Ljn/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "nav"
        }
    .end annotation

    .line 1
    new-instance v0, Lkn/c;

    invoke-direct {v0}, Lkn/c;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lkn/e;-><init>(Lkn/i;Ljn/v;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public constructor <init>(Lkn/i;Ljn/v;Ljava/util/function/IntFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "nav",
            "queryFilterFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkn/i;",
            "Ljn/v;",
            "Ljava/util/function/IntFunction<",
            "Ljn/L;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lkn/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x8

    .line 4
    new-array v1, v0, [Lkn/n$a;

    iput-object v1, p0, Lkn/e;->d:[Lkn/n$a;

    const/4 v1, 0x3

    .line 5
    new-array v1, v1, [F

    iput-object v1, p0, Lkn/e;->g:[F

    const/16 v2, 0x10

    .line 6
    new-array v3, v2, [Ljn/L;

    iput-object v3, p0, Lkn/e;->h:[Ljn/L;

    .line 7
    new-instance v3, Lkn/l;

    invoke-direct {v3}, Lkn/l;-><init>()V

    iput-object v3, p0, Lkn/e;->l:Lkn/l;

    .line 8
    iput-object p1, p0, Lkn/e;->k:Lkn/i;

    .line 9
    iget v3, p1, Lkn/i;->a:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v3

    mul-float/2addr v3, v4

    invoke-static {v1, v5, v6, v3}, Ljn/g;->U([FFFF)V

    .line 10
    new-instance v1, Lkn/n;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v0}, Lkn/n;-><init>(II)V

    iput-object v1, p0, Lkn/e;->e:Lkn/n;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 11
    iget-object v4, p0, Lkn/e;->h:[Ljn/L;

    invoke-interface {p3, v3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljn/L;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 12
    iget-object p3, p0, Lkn/e;->d:[Lkn/n$a;

    new-instance v2, Lkn/n$a;

    invoke-direct {v2}, Lkn/n$a;-><init>()V

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p3, Lkn/r;

    invoke-direct {p3, p1}, Lkn/r;-><init>(Lkn/i;)V

    iput-object p3, p0, Lkn/e;->c:Lkn/r;

    .line 14
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lkn/e;->b:Ljava/util/Set;

    .line 15
    iput-object p2, p0, Lkn/e;->j:Ljn/v;

    .line 16
    new-instance p1, Ljn/A;

    invoke-direct {p1, p2}, Ljn/A;-><init>(Ljn/v;)V

    iput-object p1, p0, Lkn/e;->i:Ljn/A;

    return-void
.end method

.method public static synthetic a(Lkn/e$a;Lkn/e$a;)I
    .locals 0

    invoke-static {p0, p1}, Lkn/e;->u(Lkn/e$a;Lkn/e$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkn/f;Lkn/f;)I
    .locals 0

    invoke-static {p0, p1}, Lkn/e;->w(Lkn/f;Lkn/f;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(I)Ljn/L;
    .locals 0

    invoke-static {p0}, Lkn/e;->v(I)Ljn/L;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkn/f;Lkn/f;)I
    .locals 0

    invoke-static {p0, p1}, Lkn/e;->x(Lkn/f;Lkn/f;)I

    move-result p0

    return p0
.end method

.method public static synthetic u(Lkn/e$a;Lkn/e$a;)I
    .locals 0

    iget p0, p0, Lkn/e$a;->b:F

    iget p1, p1, Lkn/e$a;->b:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic v(I)Ljn/L;
    .locals 0

    new-instance p0, Ljn/d;

    invoke-direct {p0}, Ljn/d;-><init>()V

    return-object p0
.end method

.method public static synthetic w(Lkn/f;Lkn/f;)I
    .locals 0

    iget p1, p1, Lkn/f;->u:F

    iget p0, p0, Lkn/f;->u:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic x(Lkn/f;Lkn/f;)I
    .locals 0

    iget p1, p1, Lkn/f;->f:F

    iget p0, p0, Lkn/f;->f:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public A(Lkn/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agent"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public B(Lkn/f;J[F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "agent",
            "ref",
            "pos"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lkn/f;->f(J[F)V

    iput-boolean v1, p1, Lkn/f;->t:Z

    const/4 p1, 0x1

    return p1
.end method

.method public final C(Lkn/f;J[F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ag",
            "ref",
            "pos"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Lkn/f;->f(J[F)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkn/f;->t:Z

    return p2
.end method

.method public D(Lkn/f;[F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agent",
            "vel"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lkn/f;->q:J

    iget-object v0, p1, Lkn/f;->r:[F

    invoke-static {v0, p2}, Ljn/g;->w([F[F)V

    const/4 p2, 0x0

    iput-object p2, p1, Lkn/f;->s:Lkn/q;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lkn/f;->t:Z

    sget-object p2, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    iput-object p2, p1, Lkn/f;->p:Lkn/f$b;

    const/4 p1, 0x1

    return p1
.end method

.method public E(Lkn/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agent"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lkn/f;->q:J

    iget-object v0, p1, Lkn/f;->r:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Ljn/g;->U([FFFF)V

    iget-object v0, p1, Lkn/f;->k:[F

    invoke-static {v0, v1, v1, v1}, Ljn/g;->U([FFFF)V

    const/4 v0, 0x0

    iput-object v0, p1, Lkn/f;->s:Lkn/q;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lkn/f;->t:Z

    sget-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    iput-object v0, p1, Lkn/f;->p:Lkn/f$b;

    const/4 p1, 0x1

    return p1
.end method

.method public F(Ljn/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nav"
        }
    .end annotation

    iput-object p1, p0, Lkn/e;->j:Ljn/v;

    new-instance v0, Ljn/A;

    invoke-direct {v0, p1}, Ljn/A;-><init>(Ljn/v;)V

    iput-object v0, p0, Lkn/e;->i:Ljn/A;

    return-void
.end method

.method public G(ILkn/n$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "params"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lkn/e;->d:[Lkn/n$a;

    new-instance v1, Lkn/n$a;

    invoke-direct {v1, p2}, Lkn/n$a;-><init>(Lkn/n$a;)V

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method public H()Lkn/l;
    .locals 1

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    return-object v0
.end method

.method public final I(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "triggerOffMeshConnections"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/f;

    iget-object v2, v0, Lkn/f;->b:Lkn/f$a;

    sget-object v3, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lkn/f;->p:Lkn/f$b;

    sget-object v3, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-eq v2, v3, :cond_0

    sget-object v3, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lkn/f;->n:Lkn/h;

    iget v2, v2, Lkn/h;->a:F

    const/high16 v3, 0x40100000    # 2.25f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lkn/f;->e(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lkn/f;->w:Lkn/g;

    const/4 v3, 0x2

    new-array v3, v3, [J

    iget-object v4, v0, Lkn/f;->d:Lkn/o;

    iget-object v5, v0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljn/S;

    invoke-virtual {v5}, Ljn/S;->c()J

    move-result-wide v5

    iget-object v8, v2, Lkn/g;->c:[F

    iget-object v9, v2, Lkn/g;->d:[F

    iget-object v10, p0, Lkn/e;->i:Ljn/A;

    move-object v7, v3

    invoke-virtual/range {v4 .. v10}, Lkn/o;->m(J[J[F[FLjn/A;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lkn/g;->b:[F

    iget-object v5, v0, Lkn/f;->i:[F

    invoke-static {v4, v5}, Ljn/g;->w([F[F)V

    aget-wide v4, v3, v11

    iput-wide v4, v2, Lkn/g;->e:J

    iput-boolean v11, v2, Lkn/g;->a:Z

    const/4 v3, 0x0

    iput v3, v2, Lkn/g;->f:F

    iget-object v3, v2, Lkn/g;->c:[F

    iget-object v4, v2, Lkn/g;->d:[F

    invoke-static {v3, v4}, Ljn/g;->B([F[F)F

    move-result v3

    iget-object v4, v0, Lkn/f;->n:Lkn/h;

    iget v4, v4, Lkn/h;->d:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iput v3, v2, Lkn/g;->g:F

    sget-object v2, Lkn/f$a;->DT_CROWDAGENT_STATE_OFFMESH:Lkn/f$a;

    iput-object v2, v0, Lkn/f;->b:Lkn/f$a;

    iget-object v2, v0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v0, v0, Lkn/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final J(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "t0",
            "t1"
        }
    .end annotation

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Ljn/g;->a(FFF)F

    move-result p1

    return p1
.end method

.method public K(FLln/a;)Lkn/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dt",
            "debug"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lkn/e;->m:I

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {v0}, Lkn/l;->j()V

    invoke-virtual {p0}, Lkn/e;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkn/e;->i(Ljava/util/Collection;F)V

    invoke-virtual {p0, v0, p1}, Lkn/e;->M(Ljava/util/Collection;F)V

    invoke-virtual {p0, v0, p1}, Lkn/e;->O(Ljava/util/Collection;F)V

    invoke-virtual {p0, v0}, Lkn/e;->g(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lkn/e;->f(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lkn/e;->k(Ljava/util/Collection;Lln/a;)V

    invoke-virtual {p0, v0}, Lkn/e;->I(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lkn/e;->h(Ljava/util/Collection;)V

    invoke-virtual {p0, p2, v0}, Lkn/e;->z(Lln/a;Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lkn/e;->t(FLjava/util/Collection;)V

    invoke-virtual {p0, v0}, Lkn/e;->s(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lkn/e;->y(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p1}, Lkn/e;->N(Ljava/util/Collection;F)V

    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    return-object p1
.end method

.method public L(Lkn/f;Lkn/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agent",
            "params"
        }
    .end annotation

    iput-object p2, p1, Lkn/f;->n:Lkn/h;

    return-void
.end method

.method public final M(Ljava/util/Collection;F)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    const-string v2, "updateMoveRequest"

    invoke-virtual {v1, v2}, Lkn/l;->k(Ljava/lang/String;)V

    new-instance v1, Ljava/util/PriorityQueue;

    new-instance v3, Lkn/d;

    invoke-direct {v3}, Lkn/d;-><init>()V

    invoke-direct {v1, v3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "Empty path"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkn/f;

    iget-object v9, v4, Lkn/f;->b:Lkn/f$a;

    sget-object v10, Lkn/f$a;->DT_CROWDAGENT_STATE_INVALID:Lkn/f$a;

    if-ne v9, v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object v9, v4, Lkn/f;->p:Lkn/f$b;

    sget-object v10, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-eq v9, v10, :cond_0

    sget-object v10, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    if-ne v9, v10, :cond_2

    goto :goto_0

    :cond_2
    sget-object v10, Lkn/f$b;->DT_CROWDAGENT_TARGET_REQUESTING:Lkn/f$b;

    if-ne v9, v10, :cond_9

    iget-object v9, v4, Lkn/f;->d:Lkn/o;

    invoke-virtual {v9}, Lkn/o;->e()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v11, v0, Lkn/e;->i:Ljn/A;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v4, Lkn/f;->q:J

    iget-object v5, v4, Lkn/f;->i:[F

    iget-object v10, v4, Lkn/f;->r:[F

    iget-object v6, v0, Lkn/e;->h:[Ljn/L;

    iget-object v7, v4, Lkn/f;->n:Lkn/h;

    iget v7, v7, Lkn/h;->j:I

    aget-object v18, v6, v7

    const/16 v19, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v19}, Ljn/A;->E(JJ[F[FLjn/L;I)Ljn/Q;

    iget-object v5, v0, Lkn/e;->i:Ljn/A;

    iget-object v6, v0, Lkn/e;->k:Lkn/i;

    iget v6, v6, Lkn/i;->d:I

    invoke-virtual {v5, v6}, Ljn/A;->Q(I)Ljn/O;

    iget-boolean v5, v4, Lkn/f;->t:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lkn/e;->i:Ljn/A;

    invoke-virtual {v5, v9}, Ljn/A;->g(Ljava/util/List;)Ljn/O;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lkn/e;->i:Ljn/A;

    invoke-virtual {v5}, Ljn/A;->f()Ljn/O;

    move-result-object v5

    :goto_1
    iget-object v6, v5, Ljn/O;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x3

    new-array v7, v7, [F

    invoke-virtual {v5}, Ljn/O;->j()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v4, Lkn/f;->q:J

    cmp-long v5, v9, v11

    if-eqz v5, :cond_5

    iget-object v5, v0, Lkn/e;->i:Ljn/A;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v4, Lkn/f;->r:[F

    invoke-virtual {v5, v9, v10, v11}, Ljn/A;->d(J[F)Ljn/O;

    move-result-object v5

    invoke-virtual {v5}, Ljn/O;->j()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v5, v5, Ljn/O;->a:Ljava/lang/Object;

    check-cast v5, Ljn/b;

    invoke-virtual {v5}, Ljn/b;->a()[F

    move-result-object v7

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    iget-object v5, v4, Lkn/f;->r:[F

    invoke-static {v7, v5}, Ljn/g;->w([F[F)V

    goto :goto_2

    :cond_6
    iget-object v5, v4, Lkn/f;->i:[F

    invoke-static {v7, v5}, Ljn/g;->w([F[F)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v9, v4, Lkn/f;->d:Lkn/o;

    invoke-virtual {v9, v7, v6}, Lkn/o;->s([FLjava/util/List;)V

    iget-object v7, v4, Lkn/f;->e:Lkn/m;

    invoke-virtual {v7}, Lkn/m;->f()V

    iput-boolean v5, v4, Lkn/f;->c:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v4, Lkn/f;->q:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    sget-object v5, Lkn/f$b;->DT_CROWDAGENT_TARGET_VALID:Lkn/f$b;

    iput-object v5, v4, Lkn/f;->p:Lkn/f$b;

    const/4 v5, 0x0

    iput v5, v4, Lkn/f;->u:F

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE:Lkn/f$b;

    iput-object v6, v4, Lkn/f;->p:Lkn/f$b;

    :goto_4
    iput v5, v4, Lkn/f;->v:F

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    iget-object v5, v4, Lkn/f;->p:Lkn/f$b;

    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE:Lkn/f$b;

    if-ne v5, v6, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkn/f;

    iget-object v9, v0, Lkn/e;->c:Lkn/r;

    iget-object v4, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v4}, Lkn/o;->d()J

    move-result-wide v10

    iget-wide v12, v3, Lkn/f;->q:J

    iget-object v4, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v4}, Lkn/o;->h()[F

    move-result-object v14

    iget-object v15, v3, Lkn/f;->r:[F

    iget-object v4, v0, Lkn/e;->h:[Ljn/L;

    iget-object v6, v3, Lkn/f;->n:Lkn/h;

    iget v6, v6, Lkn/h;->j:I

    aget-object v16, v4, v6

    invoke-virtual/range {v9 .. v16}, Lkn/r;->a(JJ[F[FLjn/L;)Lkn/q;

    move-result-object v4

    iput-object v4, v3, Lkn/f;->s:Lkn/q;

    if-eqz v4, :cond_b

    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_PATH:Lkn/f$b;

    iput-object v4, v3, Lkn/f;->p:Lkn/f$b;

    goto :goto_6

    :cond_b
    iget-object v4, v0, Lkn/e;->l:Lkn/l;

    iget v6, v3, Lkn/f;->v:F

    invoke-virtual {v4, v6}, Lkn/l;->h(F)V

    iget v4, v3, Lkn/f;->v:F

    add-float v4, v4, p2

    iput v4, v3, Lkn/f;->v:F

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    const-string v3, "pathQueueUpdate"

    invoke-virtual {v1, v3}, Lkn/l;->k(Ljava/lang/String;)V

    iget-object v1, v0, Lkn/e;->c:Lkn/r;

    iget-object v4, v0, Lkn/e;->j:Ljn/v;

    invoke-virtual {v1, v4}, Lkn/r;->b(Ljn/v;)V

    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    invoke-virtual {v1, v3}, Lkn/l;->l(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkn/f;

    iget-object v4, v3, Lkn/f;->p:Lkn/f$b;

    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-eq v4, v6, :cond_d

    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    if-ne v4, v6, :cond_e

    goto :goto_7

    :cond_e
    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_PATH:Lkn/f$b;

    if-ne v4, v6, :cond_1e

    iget-object v4, v3, Lkn/f;->s:Lkn/q;

    iget-object v4, v4, Lkn/q;->a:Ljn/Q;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljn/Q;->b()Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v4, 0x0

    iput-object v4, v3, Lkn/f;->s:Lkn/q;

    iget-wide v6, v3, Lkn/f;->q:J

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-eqz v4, :cond_f

    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_REQUESTING:Lkn/f$b;

    iput-object v4, v3, Lkn/f;->p:Lkn/f$b;

    :goto_8
    const/4 v4, 0x0

    goto :goto_9

    :cond_f
    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_FAILED:Lkn/f$b;

    iput-object v4, v3, Lkn/f;->p:Lkn/f$b;

    goto :goto_8

    :goto_9
    iput v4, v3, Lkn/f;->u:F

    move v6, v4

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_10
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljn/Q;->e()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v6}, Lkn/o;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, v3, Lkn/f;->r:[F

    iget-object v9, v3, Lkn/f;->s:Lkn/q;

    iget-object v9, v9, Lkn/q;->b:Ljava/util/List;

    invoke-virtual {v4}, Ljn/Q;->b()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_a

    :cond_11
    move v10, v8

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v4}, Ljn/Q;->d()Z

    move-result v4

    if-eqz v4, :cond_13

    iput-boolean v8, v3, Lkn/f;->c:Z

    const/4 v4, 0x0

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    iput-boolean v4, v3, Lkn/f;->c:Z

    :goto_c
    if-eqz v10, :cond_14

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_14

    move v10, v4

    :cond_14
    if-eqz v10, :cond_1a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_16

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v9, v8

    :goto_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-ge v9, v11, :cond_17

    add-int/lit8 v11, v9, -0x1

    if-ltz v11, :cond_15

    add-int/lit8 v12, v9, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-nez v11, :cond_15

    invoke-interface {v6, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x2

    :cond_15
    add-int/2addr v9, v8

    goto :goto_d

    :cond_16
    move-object v6, v9

    :cond_17
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-wide v13, v3, Lkn/f;->q:J

    cmp-long v9, v11, v13

    if-eqz v9, :cond_18

    iget-object v9, v0, Lkn/e;->i:Ljn/A;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12, v7}, Ljn/A;->d(J[F)Ljn/O;

    move-result-object v9

    invoke-virtual {v9}, Ljn/O;->j()Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v7, v9, Ljn/O;->a:Ljava/lang/Object;

    check-cast v7, Ljn/b;

    invoke-virtual {v7}, Ljn/b;->a()[F

    move-result-object v7

    :cond_18
    :goto_e
    move-object v9, v6

    goto :goto_f

    :cond_19
    move v10, v4

    goto :goto_e

    :cond_1a
    :goto_f
    if-eqz v10, :cond_1b

    iget-object v6, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v6, v7, v9}, Lkn/o;->s([FLjava/util/List;)V

    iget-object v6, v3, Lkn/f;->e:Lkn/m;

    invoke-virtual {v6}, Lkn/m;->f()V

    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_VALID:Lkn/f$b;

    iput-object v6, v3, Lkn/f;->p:Lkn/f$b;

    :goto_10
    const/4 v6, 0x0

    goto :goto_11

    :cond_1b
    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_FAILED:Lkn/f$b;

    iput-object v6, v3, Lkn/f;->p:Lkn/f$b;

    goto :goto_10

    :goto_11
    iput v6, v3, Lkn/f;->u:F

    goto :goto_12

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_12
    iget-object v7, v0, Lkn/e;->l:Lkn/l;

    iget v9, v3, Lkn/f;->v:F

    invoke-virtual {v7, v9}, Lkn/l;->i(F)V

    iget v7, v3, Lkn/f;->v:F

    add-float v7, v7, p2

    iput v7, v3, Lkn/f;->v:F

    goto/16 :goto_7

    :cond_1e
    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_1f
    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    invoke-virtual {v1, v2}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final N(Ljava/util/Collection;F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;F)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "updateOffMeshConnections"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/f;

    iget-object v2, v0, Lkn/f;->w:Lkn/g;

    iget-boolean v3, v2, Lkn/g;->a:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v2, Lkn/g;->f:F

    add-float/2addr v3, p2

    iput v3, v2, Lkn/g;->f:F

    iget v4, v2, Lkn/g;->g:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lkn/g;->a:Z

    sget-object v2, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    iput-object v2, v0, Lkn/f;->b:Lkn/f$a;

    goto :goto_0

    :cond_1
    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v4

    cmpg-float v6, v3, v5

    const/4 v7, 0x0

    if-gez v6, :cond_2

    invoke-virtual {p0, v3, v7, v5}, Lkn/e;->J(FFF)F

    move-result v3

    iget-object v4, v2, Lkn/g;->b:[F

    iget-object v2, v2, Lkn/g;->c:[F

    invoke-static {v4, v2, v3}, Ljn/g;->N([F[FF)[F

    move-result-object v2

    iput-object v2, v0, Lkn/f;->i:[F

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v5, v4}, Lkn/e;->J(FFF)F

    move-result v3

    iget-object v4, v2, Lkn/g;->c:[F

    iget-object v2, v2, Lkn/g;->d:[F

    invoke-static {v4, v2, v3}, Ljn/g;->N([F[FF)[F

    move-result-object v2

    iput-object v2, v0, Lkn/f;->i:[F

    :goto_1
    iget-object v2, v0, Lkn/f;->m:[F

    invoke-static {v2, v7, v7, v7}, Ljn/g;->U([FFFF)V

    iget-object v0, v0, Lkn/f;->k:[F

    invoke-static {v0, v7, v7, v7}, Ljn/g;->U([FFFF)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final O(Ljava/util/Collection;F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;F)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "updateTopologyOptimization"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v2, Lkn/a;

    invoke-direct {v2}, Lkn/a;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkn/f;

    iget-object v3, v2, Lkn/f;->b:Lkn/f$a;

    sget-object v4, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lkn/f;->p:Lkn/f$b;

    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-eq v3, v4, :cond_0

    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lkn/f;->n:Lkn/h;

    iget v3, v3, Lkn/h;->h:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v2, Lkn/f;->f:F

    add-float/2addr v3, p2

    iput v3, v2, Lkn/f;->f:F

    iget-object v4, p0, Lkn/e;->k:Lkn/i;

    iget v4, v4, Lkn/i;->e:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkn/f;

    iget-object p2, p1, Lkn/f;->d:Lkn/o;

    iget-object v2, p0, Lkn/e;->i:Ljn/A;

    iget-object v3, p0, Lkn/e;->h:[Ljn/L;

    iget-object v4, p1, Lkn/f;->n:Lkn/h;

    iget v4, v4, Lkn/h;->j:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lkn/e;->k:Lkn/i;

    iget v4, v4, Lkn/i;->h:I

    invoke-virtual {p2, v2, v3, v4}, Lkn/o;->p(Ljn/A;Ljn/L;I)Z

    const/4 p2, 0x0

    iput p2, p1, Lkn/f;->f:F

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public e([FLkn/h;)Lkn/f;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "params"
        }
    .end annotation

    new-instance v0, Lkn/f;

    iget-object v1, p0, Lkn/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, v1}, Lkn/f;-><init>(I)V

    iget-object v1, p0, Lkn/e;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lkn/e;->L(Lkn/f;Lkn/h;)V

    iget-object p2, p0, Lkn/e;->i:Ljn/A;

    iget-object v1, p0, Lkn/e;->g:[F

    iget-object v2, p0, Lkn/e;->h:[Ljn/L;

    iget-object v3, v0, Lkn/f;->n:Lkn/h;

    iget v3, v3, Lkn/h;->j:I

    aget-object v2, v2, v3

    invoke-virtual {p2, p1, v1, v2}, Ljn/A;->j([F[FLjn/L;)Ljn/O;

    move-result-object p2

    invoke-virtual {p2}, Ljn/O;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljn/k;

    invoke-virtual {p1}, Ljn/k;->a()[F

    move-result-object p1

    :cond_0
    invoke-virtual {p2}, Ljn/O;->j()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p2, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p2, Ljn/k;

    invoke-virtual {p2}, Ljn/k;->b()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    iget-object p2, v0, Lkn/f;->d:Lkn/o;

    invoke-virtual {p2, v4, v5, p1}, Lkn/o;->r(J[F)V

    iget-object p2, v0, Lkn/f;->e:Lkn/m;

    invoke-virtual {p2}, Lkn/m;->f()V

    const/4 p2, 0x0

    iput-boolean p2, v0, Lkn/f;->c:Z

    const/4 p2, 0x0

    iput p2, v0, Lkn/f;->f:F

    iput p2, v0, Lkn/f;->u:F

    iget-object v1, v0, Lkn/f;->k:[F

    invoke-static {v1, p2, p2, p2}, Ljn/g;->U([FFFF)V

    iget-object v1, v0, Lkn/f;->l:[F

    invoke-static {v1, p2, p2, p2}, Ljn/g;->U([FFFF)V

    iget-object v1, v0, Lkn/f;->m:[F

    invoke-static {v1, p2, p2, p2}, Ljn/g;->U([FFFF)V

    iget-object v1, v0, Lkn/f;->i:[F

    invoke-static {v1, p1}, Ljn/g;->w([F[F)V

    iput p2, v0, Lkn/f;->h:F

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    sget-object p1, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    iput-object p1, v0, Lkn/f;->b:Lkn/f$a;

    goto :goto_1

    :cond_2
    sget-object p1, Lkn/f$a;->DT_CROWDAGENT_STATE_INVALID:Lkn/f$a;

    iput-object p1, v0, Lkn/f;->b:Lkn/f$a;

    :goto_1
    sget-object p1, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    iput-object p1, v0, Lkn/f;->p:Lkn/f$b;

    return-object v0
.end method

.method public final f(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "buildNeighbours"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/f;

    iget-object v2, v0, Lkn/f;->b:Lkn/f$a;

    sget-object v3, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lkn/f;->n:Lkn/h;

    iget v2, v2, Lkn/h;->e:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    iget-object v3, v0, Lkn/f;->i:[F

    iget-object v4, v0, Lkn/f;->e:Lkn/m;

    invoke-virtual {v4}, Lkn/m;->b()[F

    move-result-object v4

    invoke-static {v3, v4}, Ljn/g;->C([F[F)F

    move-result v3

    invoke-static {v2}, Ljn/g;->s(F)F

    move-result v2

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_1

    iget-object v2, v0, Lkn/f;->e:Lkn/m;

    iget-object v3, p0, Lkn/e;->i:Ljn/A;

    iget-object v4, p0, Lkn/e;->h:[Ljn/L;

    iget-object v5, v0, Lkn/f;->n:Lkn/h;

    iget v5, v5, Lkn/h;->j:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lkn/m;->e(Ljn/A;Ljn/L;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v3, v0, Lkn/f;->e:Lkn/m;

    iget-object v2, v0, Lkn/f;->d:Lkn/o;

    invoke-virtual {v2}, Lkn/o;->c()J

    move-result-wide v4

    iget-object v6, v0, Lkn/f;->i:[F

    iget-object v2, v0, Lkn/f;->n:Lkn/h;

    iget v7, v2, Lkn/h;->e:F

    iget-object v8, p0, Lkn/e;->i:Ljn/A;

    iget-object v9, p0, Lkn/e;->h:[Ljn/L;

    iget v2, v2, Lkn/h;->j:I

    aget-object v9, v9, v2

    invoke-virtual/range {v3 .. v9}, Lkn/m;->g(J[FFLjn/A;Ljn/L;)V

    :cond_2
    iget-object v3, v0, Lkn/f;->i:[F

    iget-object v2, v0, Lkn/f;->n:Lkn/h;

    iget v4, v2, Lkn/h;->b:F

    iget v5, v2, Lkn/h;->e:F

    iget-object v7, p0, Lkn/e;->f:Lkn/u;

    move-object v2, p0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lkn/e;->o([FFFLkn/f;Lkn/u;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lkn/f;->g:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "buildProximityGrid"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    new-instance v0, Lkn/u;

    iget-object v2, p0, Lkn/e;->k:Lkn/i;

    iget v2, v2, Lkn/i;->a:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    invoke-direct {v0, v2}, Lkn/u;-><init>(F)V

    iput-object v0, p0, Lkn/e;->f:Lkn/u;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkn/f;

    iget-object v0, v3, Lkn/f;->i:[F

    iget-object v2, v3, Lkn/f;->n:Lkn/h;

    iget v2, v2, Lkn/h;->a:F

    iget-object v4, p0, Lkn/e;->f:Lkn/u;

    const/4 v5, 0x0

    aget v5, v0, v5

    sub-float v6, v5, v2

    const/4 v7, 0x2

    aget v0, v0, v7

    sub-float v7, v0, v2

    add-float v8, v5, v2

    add-float/2addr v0, v2

    move-object v2, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lkn/u;->c(Lkn/f;FFFF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/util/Collection;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    const-string v2, "calculateSteering"

    invoke-virtual {v1, v2}, Lkn/l;->k(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkn/f;

    iget-object v4, v3, Lkn/f;->b:Lkn/f$a;

    sget-object v5, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lkn/f;->p:Lkn/f$b;

    sget-object v5, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    new-array v6, v5, [F

    sget-object v7, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    const/4 v8, 0x1

    if-ne v4, v7, :cond_2

    iget-object v4, v3, Lkn/f;->r:[F

    invoke-static {v6, v4}, Ljn/g;->w([F[F)V

    iget-object v4, v3, Lkn/f;->r:[F

    invoke-static {v4}, Ljn/g;->K([F)F

    move-result v4

    iput v4, v3, Lkn/f;->h:F

    goto :goto_2

    :cond_2
    iget-object v4, v3, Lkn/f;->n:Lkn/h;

    iget v4, v4, Lkn/h;->h:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lkn/f;->a()[F

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lkn/f;->b()[F

    move-result-object v4

    :goto_1
    iget-object v6, v3, Lkn/f;->n:Lkn/h;

    iget v6, v6, Lkn/h;->a:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lkn/f;->c(F)F

    move-result v7

    div-float/2addr v7, v6

    iget-object v6, v3, Lkn/f;->n:Lkn/h;

    iget v6, v6, Lkn/h;->d:F

    iput v6, v3, Lkn/f;->h:F

    mul-float/2addr v6, v7

    invoke-static {v4, v6}, Ljn/g;->T([FF)[F

    move-result-object v6

    :goto_2
    iget-object v4, v3, Lkn/f;->n:Lkn/h;

    iget v7, v4, Lkn/h;->h:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_7

    iget v7, v4, Lkn/h;->e:F

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v10, v9, v7

    iget v4, v4, Lkn/h;->g:F

    new-array v5, v5, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v11

    :goto_3
    iget-object v14, v3, Lkn/f;->g:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_6

    iget-object v14, v3, Lkn/f;->g:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkn/e$a;

    iget-object v14, v14, Lkn/e$a;->a:Lkn/f;

    iget-object v15, v3, Lkn/f;->i:[F

    iget-object v14, v14, Lkn/f;->i:[F

    invoke-static {v15, v14}, Ljn/g;->W([F[F)[F

    move-result-object v14

    aput v11, v14, v8

    invoke-static {v14}, Ljn/g;->L([F)F

    move-result v15

    const v16, 0x3727c5ac    # 1.0E-5f

    cmpg-float v16, v15, v16

    if-gez v16, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v7}, Ljn/g;->s(F)F

    move-result v16

    cmpl-float v16, v15, v16

    if-lez v16, :cond_5

    :goto_4
    move/from16 v16, v12

    goto :goto_5

    :cond_5
    move/from16 v16, v12

    float-to-double v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v12, v11, v10

    invoke-static {v12}, Ljn/g;->s(F)F

    move-result v12

    sub-float v12, v9, v12

    mul-float/2addr v12, v4

    div-float/2addr v12, v11

    invoke-static {v5, v14, v12}, Ljn/g;->O([F[FF)[F

    move-result-object v5

    add-float/2addr v13, v9

    :goto_5
    add-int/lit8 v12, v16, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v4, v13, v4

    if-lez v4, :cond_7

    div-float/2addr v9, v13

    invoke-static {v6, v5, v9}, Ljn/g;->O([F[FF)[F

    move-result-object v6

    invoke-static {v6}, Ljn/g;->L([F)F

    move-result v4

    iget v5, v3, Lkn/f;->h:F

    invoke-static {v5}, Ljn/g;->s(F)F

    move-result v5

    cmpl-float v7, v4, v5

    if-lez v7, :cond_7

    div-float/2addr v5, v4

    invoke-static {v6, v5}, Ljn/g;->T([FF)[F

    move-result-object v6

    :cond_7
    iget-object v3, v3, Lkn/f;->k:[F

    invoke-static {v3, v6}, Ljn/g;->w([F[F)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    invoke-virtual {v1, v2}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/util/Collection;F)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    const-string v2, "checkPathValidity"

    invoke-virtual {v1, v2}, Lkn/l;->k(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkn/f;

    iget-object v4, v3, Lkn/f;->b:Lkn/f$a;

    sget-object v5, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v3, Lkn/f;->u:F

    add-float v4, v4, p2

    iput v4, v3, Lkn/f;->u:F

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget-object v5, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v5}, Lkn/o;->c()J

    move-result-wide v5

    iget-object v7, v3, Lkn/f;->i:[F

    invoke-static {v4, v7}, Ljn/g;->w([F[F)V

    iget-object v7, v0, Lkn/e;->i:Ljn/A;

    iget-object v8, v0, Lkn/e;->h:[Ljn/L;

    iget-object v9, v3, Lkn/f;->n:Lkn/h;

    iget v9, v9, Lkn/h;->j:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v5, v6, v8}, Ljn/A;->J(JLjn/L;)Z

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    if-nez v7, :cond_5

    iget-object v5, v0, Lkn/e;->i:Ljn/A;

    iget-object v6, v3, Lkn/f;->i:[F

    iget-object v7, v0, Lkn/e;->g:[F

    iget-object v12, v0, Lkn/e;->h:[Ljn/L;

    iget-object v13, v3, Lkn/f;->n:Lkn/h;

    iget v13, v13, Lkn/h;->j:I

    aget-object v12, v12, v13

    invoke-virtual {v5, v6, v7, v12}, Ljn/A;->j([F[FLjn/L;)Ljn/O;

    move-result-object v5

    invoke-virtual {v5}, Ljn/O;->j()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Ljn/O;->a:Ljava/lang/Object;

    check-cast v6, Ljn/k;

    invoke-virtual {v6}, Ljn/k;->b()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v10

    :goto_1
    invoke-virtual {v5}, Ljn/O;->j()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v5, v5, Ljn/O;->a:Ljava/lang/Object;

    check-cast v5, Ljn/k;

    invoke-virtual {v5}, Ljn/k;->a()[F

    move-result-object v5

    invoke-static {v4, v5}, Ljn/g;->w([F[F)V

    :cond_3
    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    iget-object v5, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v5, v10, v11, v4}, Lkn/o;->r(J[F)V

    iput-boolean v8, v3, Lkn/f;->c:Z

    iget-object v4, v3, Lkn/f;->e:Lkn/m;

    invoke-virtual {v4}, Lkn/m;->f()V

    sget-object v4, Lkn/f$a;->DT_CROWDAGENT_STATE_INVALID:Lkn/f$a;

    iput-object v4, v3, Lkn/f;->b:Lkn/f$a;

    goto/16 :goto_0

    :cond_4
    iget-object v5, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v5, v6, v7, v4}, Lkn/o;->b(J[F)V

    iget-object v5, v3, Lkn/f;->e:Lkn/m;

    invoke-virtual {v5}, Lkn/m;->f()V

    iget-object v5, v3, Lkn/f;->i:[F

    invoke-static {v5, v4}, Ljn/g;->w([F[F)V

    move-wide v5, v6

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    move v7, v8

    :goto_2
    iget-object v12, v3, Lkn/f;->p:Lkn/f$b;

    sget-object v13, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-eq v12, v13, :cond_0

    sget-object v14, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    if-ne v12, v14, :cond_6

    goto/16 :goto_0

    :cond_6
    if-eq v12, v13, :cond_a

    sget-object v14, Lkn/f$b;->DT_CROWDAGENT_TARGET_FAILED:Lkn/f$b;

    if-eq v12, v14, :cond_a

    iget-object v12, v0, Lkn/e;->i:Ljn/A;

    iget-wide v14, v3, Lkn/f;->q:J

    iget-object v9, v0, Lkn/e;->h:[Ljn/L;

    iget-object v8, v3, Lkn/f;->n:Lkn/h;

    iget v8, v8, Lkn/h;->j:I

    aget-object v8, v9, v8

    invoke-virtual {v12, v14, v15, v8}, Ljn/A;->J(JLjn/L;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v7, v0, Lkn/e;->i:Ljn/A;

    iget-object v8, v3, Lkn/f;->r:[F

    iget-object v9, v0, Lkn/e;->g:[F

    iget-object v12, v0, Lkn/e;->h:[Ljn/L;

    iget-object v14, v3, Lkn/f;->n:Lkn/h;

    iget v14, v14, Lkn/h;->j:I

    aget-object v12, v12, v14

    invoke-virtual {v7, v8, v9, v12}, Ljn/A;->j([F[FLjn/L;)Ljn/O;

    move-result-object v7

    invoke-virtual {v7}, Ljn/O;->j()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v7, Ljn/O;->a:Ljava/lang/Object;

    check-cast v8, Ljn/k;

    invoke-virtual {v8}, Ljn/k;->b()J

    move-result-wide v8

    goto :goto_3

    :cond_7
    move-wide v8, v10

    :goto_3
    iput-wide v8, v3, Lkn/f;->q:J

    invoke-virtual {v7}, Ljn/O;->j()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v3, Lkn/f;->r:[F

    iget-object v7, v7, Ljn/O;->a:Ljava/lang/Object;

    check-cast v7, Ljn/k;

    invoke-virtual {v7}, Ljn/k;->a()[F

    move-result-object v7

    invoke-static {v8, v7}, Ljn/g;->w([F[F)V

    :cond_8
    const/4 v7, 0x1

    :cond_9
    iget-wide v8, v3, Lkn/f;->q:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    iget-object v8, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v8, v5, v6, v4}, Lkn/o;->r(J[F)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lkn/f;->c:Z

    iput-object v13, v3, Lkn/f;->p:Lkn/f$b;

    :cond_a
    iget-object v4, v3, Lkn/f;->d:Lkn/o;

    iget-object v5, v0, Lkn/e;->k:Lkn/i;

    iget v5, v5, Lkn/i;->f:I

    iget-object v6, v0, Lkn/e;->i:Ljn/A;

    iget-object v8, v0, Lkn/e;->h:[Ljn/L;

    iget-object v9, v3, Lkn/f;->n:Lkn/h;

    iget v9, v9, Lkn/h;->j:I

    aget-object v8, v8, v9

    invoke-virtual {v4, v5, v6, v8}, Lkn/o;->i(ILjn/A;Ljn/L;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v7, 0x1

    :cond_b
    iget-object v4, v3, Lkn/f;->p:Lkn/f$b;

    sget-object v5, Lkn/f$b;->DT_CROWDAGENT_TARGET_VALID:Lkn/f$b;

    if-ne v4, v5, :cond_c

    iget v4, v3, Lkn/f;->u:F

    iget-object v5, v0, Lkn/e;->k:Lkn/i;

    iget v5, v5, Lkn/i;->g:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    iget-object v4, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v4}, Lkn/o;->f()I

    move-result v4

    iget-object v5, v0, Lkn/e;->k:Lkn/i;

    iget v5, v5, Lkn/i;->f:I

    if-ge v4, v5, :cond_c

    iget-object v4, v3, Lkn/f;->d:Lkn/o;

    invoke-virtual {v4}, Lkn/o;->d()J

    move-result-wide v4

    iget-wide v8, v3, Lkn/f;->q:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_c

    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    move v9, v7

    :goto_4
    if-eqz v9, :cond_0

    iget-object v4, v3, Lkn/f;->p:Lkn/f$b;

    if-eq v4, v13, :cond_0

    iget-wide v4, v3, Lkn/f;->q:J

    iget-object v6, v3, Lkn/f;->r:[F

    invoke-virtual {v0, v3, v4, v5, v6}, Lkn/e;->C(Lkn/f;J[F)Z

    goto/16 :goto_0

    :cond_d
    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    invoke-virtual {v1, v2}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public j()Lkn/i;
    .locals 1

    iget-object v0, p0, Lkn/e;->k:Lkn/i;

    return-object v0
.end method

.method public final k(Ljava/util/Collection;Lln/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "debug"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;",
            "Lln/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "findCorners"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lln/a;->a:Lkn/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkn/f;

    iget-object v3, v2, Lkn/f;->b:Lkn/f$a;

    sget-object v4, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lkn/f;->p:Lkn/f$b;

    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-eq v3, v4, :cond_1

    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lkn/f;->d:Lkn/o;

    iget-object v4, p0, Lkn/e;->i:Ljn/A;

    iget-object v5, p0, Lkn/e;->h:[Ljn/L;

    iget-object v6, v2, Lkn/f;->n:Lkn/h;

    iget v6, v6, Lkn/h;->j:I

    aget-object v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4, v5}, Lkn/o;->a(ILjn/A;Ljn/L;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lkn/f;->o:Ljava/util/List;

    iget-object v4, v2, Lkn/f;->n:Lkn/h;

    iget v4, v4, Lkn/h;->h:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v2, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljn/S;

    invoke-virtual {v3}, Ljn/S;->b()[F

    move-result-object v3

    iget-object v4, v2, Lkn/f;->d:Lkn/o;

    iget-object v5, v2, Lkn/f;->n:Lkn/h;

    iget v6, v5, Lkn/h;->f:F

    iget-object v7, p0, Lkn/e;->i:Ljn/A;

    iget-object v8, p0, Lkn/e;->h:[Ljn/L;

    iget v5, v5, Lkn/h;->j:I

    aget-object v5, v8, v5

    invoke-virtual {v4, v3, v6, v7, v5}, Lkn/o;->q([FFLjn/A;Ljn/L;)V

    if-ne v0, v2, :cond_1

    iget-object v4, p2, Lln/a;->b:[F

    iget-object v2, v2, Lkn/f;->d:Lkn/o;

    invoke-virtual {v2}, Lkn/o;->g()[F

    move-result-object v2

    invoke-static {v4, v2}, Ljn/g;->w([F[F)V

    iget-object v2, p2, Lln/a;->c:[F

    invoke-static {v2, v3}, Ljn/g;->w([F[F)V

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_1

    iget-object v2, p2, Lln/a;->b:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Ljn/g;->U([FFFF)V

    iget-object v2, p2, Lln/a;->c:[F

    invoke-static {v2, v3, v3, v3}, Ljn/g;->U([FFFF)V

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkn/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lkn/e;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public m(I)Ljn/L;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lkn/e;->h:[Ljn/L;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public n()Lkn/u;
    .locals 1

    iget-object v0, p0, Lkn/e;->f:Lkn/u;

    return-object v0
.end method

.method public final o([FFFLkn/f;Lkn/u;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "height",
            "range",
            "skip",
            "grid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FFF",
            "Lkn/f;",
            "Lkn/u;",
            ")",
            "Ljava/util/List<",
            "Lkn/e$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float v2, v1, p3

    const/4 v3, 0x2

    aget v3, p1, v3

    sub-float v4, v3, p3

    add-float/2addr v1, p3

    add-float/2addr v3, p3

    invoke-virtual {p5, v2, v4, v1, v3}, Lkn/u;->i(FFFF)Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkn/f;

    if-ne v1, p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lkn/f;->i:[F

    invoke-static {p1, v2}, Ljn/g;->W([F[F)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, v1, Lkn/f;->n:Lkn/h;

    iget v5, v5, Lkn/h;->b:F

    add-float/2addr v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v2}, Ljn/g;->L([F)F

    move-result v2

    invoke-static {p3}, Ljn/g;->s(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lkn/e$a;

    invoke-direct {v3, p0, v1, v2}, Lkn/e$a;-><init>(Lkn/e;Lkn/f;F)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lkn/b;

    invoke-direct {p1}, Lkn/b;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public p(I)Lkn/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lkn/e;->d:[Lkn/n$a;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public q()Lkn/r;
    .locals 1

    iget-object v0, p0, Lkn/e;->c:Lkn/r;

    return-object v0
.end method

.method public r()[F
    .locals 1

    iget-object v0, p0, Lkn/e;->g:[F

    return-object v0
.end method

.method public final s(Ljava/util/Collection;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    const-string v2, "handleCollisions"

    invoke-virtual {v1, v2}, Lkn/l;->k(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkn/f;

    iget-wide v6, v5, Lkn/f;->a:J

    iget-object v8, v5, Lkn/f;->b:Lkn/f$a;

    sget-object v9, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v8, v9, :cond_1

    goto :goto_1

    :cond_1
    iget-object v8, v5, Lkn/f;->j:[F

    const/4 v9, 0x0

    invoke-static {v8, v9, v9, v9}, Ljn/g;->U([FFFF)V

    move v10, v9

    const/4 v8, 0x0

    :goto_2
    iget-object v11, v5, Lkn/f;->g:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_5

    iget-object v11, v5, Lkn/f;->g:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkn/e$a;

    iget-object v11, v11, Lkn/e$a;->a:Lkn/f;

    iget-wide v14, v11, Lkn/f;->a:J

    iget-object v13, v5, Lkn/f;->i:[F

    iget-object v1, v11, Lkn/f;->i:[F

    invoke-static {v13, v1}, Ljn/g;->W([F[F)[F

    move-result-object v1

    const/4 v13, 0x1

    aput v9, v1, v13

    invoke-static {v1}, Ljn/g;->L([F)F

    move-result v13

    iget-object v9, v5, Lkn/f;->n:Lkn/h;

    iget v9, v9, Lkn/h;->a:F

    iget-object v12, v11, Lkn/f;->n:Lkn/h;

    iget v12, v12, Lkn/h;->a:F

    add-float/2addr v9, v12

    invoke-static {v9}, Ljn/g;->s(F)F

    move-result v9

    cmpl-float v9, v13, v9

    if-lez v9, :cond_2

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_5

    :cond_2
    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    iget-object v12, v5, Lkn/f;->n:Lkn/h;

    iget v12, v12, Lkn/h;->a:F

    iget-object v11, v11, Lkn/f;->n:Lkn/h;

    iget v11, v11, Lkn/h;->a:F

    add-float/2addr v12, v11

    sub-float/2addr v12, v9

    const v11, 0x38d1b717    # 1.0E-4f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_4

    cmp-long v9, v6, v14

    const/4 v11, 0x2

    if-lez v9, :cond_3

    iget-object v9, v5, Lkn/f;->k:[F

    aget v11, v9, v11

    neg-float v11, v11

    const/4 v13, 0x0

    aget v9, v9, v13

    const/4 v14, 0x0

    invoke-static {v1, v11, v14, v9}, Ljn/g;->U([FFFF)V

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v9, v5, Lkn/f;->k:[F

    aget v11, v9, v11

    aget v9, v9, v13

    neg-float v9, v9

    invoke-static {v1, v11, v14, v9}, Ljn/g;->U([FFFF)V

    :goto_3
    const v9, 0x3c23d70a    # 0.01f

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    div-float v9, v11, v9

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v12, v15

    mul-float/2addr v9, v12

    iget-object v12, v0, Lkn/e;->k:Lkn/i;

    iget v12, v12, Lkn/i;->i:F

    mul-float/2addr v9, v12

    :goto_4
    iget-object v12, v5, Lkn/f;->j:[F

    invoke-static {v12, v1, v9}, Ljn/g;->O([F[FF)[F

    move-result-object v1

    iput-object v1, v5, Lkn/f;->j:[F

    add-float/2addr v10, v11

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move v9, v14

    goto/16 :goto_2

    :cond_5
    const v1, 0x38d1b717    # 1.0E-4f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    div-float v1, v11, v10

    iget-object v6, v5, Lkn/f;->j:[F

    invoke-static {v6, v1}, Ljn/g;->T([FF)[F

    move-result-object v1

    iput-object v1, v5, Lkn/f;->j:[F

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkn/f;

    iget-object v5, v4, Lkn/f;->b:Lkn/f$a;

    sget-object v6, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v5, v6, :cond_7

    goto :goto_6

    :cond_7
    iget-object v5, v4, Lkn/f;->i:[F

    iget-object v6, v4, Lkn/f;->j:[F

    invoke-static {v5, v6}, Ljn/g;->v([F[F)[F

    move-result-object v5

    iput-object v5, v4, Lkn/f;->i:[F

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, Lkn/e;->l:Lkn/l;

    invoke-virtual {v1, v2}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final t(FLjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dt",
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "integrate"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/f;

    iget-object v2, v0, Lkn/f;->b:Lkn/f$a;

    sget-object v3, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lkn/f;->d(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "moveAgents"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/f;

    iget-object v2, v0, Lkn/f;->b:Lkn/f$a;

    sget-object v3, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lkn/f;->d:Lkn/o;

    iget-object v3, v0, Lkn/f;->i:[F

    iget-object v4, p0, Lkn/e;->i:Ljn/A;

    iget-object v5, p0, Lkn/e;->h:[Ljn/L;

    iget-object v6, v0, Lkn/f;->n:Lkn/h;

    iget v6, v6, Lkn/h;->j:I

    aget-object v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lkn/o;->n([FLjn/A;Ljn/L;)Z

    iget-object v2, v0, Lkn/f;->i:[F

    iget-object v3, v0, Lkn/f;->d:Lkn/o;

    invoke-virtual {v3}, Lkn/o;->g()[F

    move-result-object v3

    invoke-static {v2, v3}, Ljn/g;->w([F[F)V

    iget-object v2, v0, Lkn/f;->p:Lkn/f$b;

    sget-object v3, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    if-eq v2, v3, :cond_2

    sget-object v3, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v2, v0, Lkn/f;->d:Lkn/o;

    invoke-virtual {v2}, Lkn/o;->c()J

    move-result-wide v3

    iget-object v5, v0, Lkn/f;->i:[F

    invoke-virtual {v2, v3, v4, v5}, Lkn/o;->r(J[F)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lkn/f;->c:Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final z(Lln/a;Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "debug",
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln/a;",
            "Ljava/util/Collection<",
            "Lkn/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/e;->l:Lkn/l;

    const-string v1, "planVelocity"

    invoke-virtual {v0, v1}, Lkn/l;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lln/a;->a:Lkn/f;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkn/f;

    iget-object v4, v3, Lkn/f;->b:Lkn/f$a;

    sget-object v5, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lkn/f;->n:Lkn/h;

    iget v4, v4, Lkn/h;->h:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lkn/e;->e:Lkn/n;

    invoke-virtual {v4}, Lkn/n;->l()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    iget-object v6, v3, Lkn/f;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v3, Lkn/f;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkn/e$a;

    iget-object v6, v6, Lkn/e$a;->a:Lkn/f;

    iget-object v7, p0, Lkn/e;->e:Lkn/n;

    iget-object v8, v6, Lkn/f;->i:[F

    iget-object v9, v6, Lkn/f;->n:Lkn/h;

    iget v9, v9, Lkn/h;->a:F

    iget-object v10, v6, Lkn/f;->m:[F

    iget-object v6, v6, Lkn/f;->k:[F

    invoke-virtual {v7, v8, v9, v10, v6}, Lkn/n;->a([FF[F[F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v5, v3, Lkn/f;->e:Lkn/m;

    invoke-virtual {v5}, Lkn/m;->d()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, v3, Lkn/f;->e:Lkn/m;

    invoke-virtual {v5, v4}, Lkn/m;->c(I)[F

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v6

    iget-object v7, v3, Lkn/f;->i:[F

    invoke-static {v7, v5, v6}, Ljn/g;->u([F[F[F)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    goto :goto_4

    :cond_3
    iget-object v7, p0, Lkn/e;->e:Lkn/n;

    invoke-virtual {v7, v5, v6}, Lkn/n;->b([F[F)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-ne v2, v3, :cond_5

    iget-object v4, p1, Lln/a;->d:Lln/b;

    move-object v12, v4

    goto :goto_5

    :cond_5
    move-object v12, v0

    :goto_5
    iget-object v4, p0, Lkn/e;->d:[Lkn/n$a;

    iget-object v5, v3, Lkn/f;->n:Lkn/h;

    iget v6, v5, Lkn/h;->i:I

    aget-object v11, v4, v6

    iget-object v4, p0, Lkn/e;->e:Lkn/n;

    iget-object v6, v3, Lkn/f;->i:[F

    iget v7, v5, Lkn/h;->a:F

    iget v8, v3, Lkn/f;->h:F

    iget-object v9, v3, Lkn/f;->m:[F

    iget-object v10, v3, Lkn/f;->k:[F

    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, Lkn/n;->m([FFF[F[FLkn/n$a;Lln/b;)Ljn/U;

    move-result-object v4

    iget-object v5, v4, Ljn/U;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v4, Ljn/U;->b:Ljava/lang/Object;

    check-cast v4, [F

    iput-object v4, v3, Lkn/f;->l:[F

    iget v3, p0, Lkn/e;->m:I

    add-int/2addr v3, v5

    iput v3, p0, Lkn/e;->m:I

    goto/16 :goto_1

    :cond_6
    iget-object v4, v3, Lkn/f;->l:[F

    iget-object v3, v3, Lkn/f;->k:[F

    invoke-static {v4, v3}, Ljn/g;->w([F[F)V

    goto/16 :goto_1

    :cond_7
    iget-object p1, p0, Lkn/e;->l:Lkn/l;

    invoke-virtual {p1, v1}, Lkn/l;->l(Ljava/lang/String;)V

    return-void
.end method
