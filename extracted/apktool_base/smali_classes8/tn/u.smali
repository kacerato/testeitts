.class public Ltn/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvn/f;

.field public b:Ltn/v;

.field public c:Lwn/p$b;

.field public d:Ljn/q;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lun/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lvn/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voxelTile"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltn/u;->e:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltn/u;->f:Z

    iput-object p1, p0, Ltn/u;->a:Lvn/f;

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;Lwn/h;Lwn/N;Ljava/lang/Long;Lun/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ltn/u;->h(Ljava/util/Collection;Lwn/h;Lwn/N;Ljava/lang/Long;Lun/d;)V

    return-void
.end method

.method public static synthetic h(Ljava/util/Collection;Lwn/h;Lwn/N;Ljava/lang/Long;Lun/d;)V
    .locals 4

    invoke-interface {p0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lwn/h;->d:[F

    const/4 p3, 0x1

    aget v0, p0, p3

    invoke-interface {p4}, Lun/d;->a()[F

    move-result-object v1

    const/4 v2, 0x4

    aget v1, v1, v2

    iget v2, p1, Lwn/h;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p0, p3

    invoke-interface {p4, p1, p2}, Lun/d;->b(Lwn/h;Lwn/N;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(JLun/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cid",
            "collider"
        }
    .end annotation

    iget-object v0, p0, Ltn/u;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltn/u;->f:Z

    return-void
.end method

.method public c(Ljn/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "navMesh"
        }
    .end annotation

    iget-object v0, p0, Ltn/u;->d:Ljn/q;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Ljn/v;->c(Ljn/q;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Ltn/u;->g:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Ltn/u;->g:J

    invoke-virtual {p1, v3, v4}, Ljn/v;->W(J)J

    iput-wide v1, p0, Ltn/u;->g:J

    :goto_0
    return-void
.end method

.method public d(Lwn/p;Ltn/s;Lwn/N;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "config",
            "telemetry"
        }
    .end annotation

    iget-boolean v0, p0, Ltn/u;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Ltn/u;->e(Ltn/s;Lwn/N;)Lwn/h;

    move-result-object v4

    iget-object v3, p0, Ltn/u;->a:Lvn/f;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ltn/u;->f(Lwn/p;Ltn/s;Lvn/f;Lwn/h;Lwn/N;)Lwn/p$b;

    move-result-object v7

    iget-object v0, p0, Ltn/u;->a:Lvn/f;

    iget v1, v0, Lvn/f;->a:I

    iget v2, v0, Lvn/f;->b:I

    iget v3, v0, Lvn/f;->h:F

    iget v4, v0, Lvn/f;->i:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Ltn/u;->i(IIFFLtn/s;Lwn/p$b;)Ljn/x;

    move-result-object v0

    invoke-static {v0}, Ljn/w;->d(Ljn/x;)Ljn/q;

    move-result-object v0

    iput-object v0, p0, Ltn/u;->d:Ljn/q;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ltn/s;Lwn/N;)Lwn/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "telemetry"
        }
    .end annotation

    iget-object v0, p0, Ltn/u;->b:Ltn/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ltn/v;->b:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ltn/u;->b:Ltn/v;

    if-eqz v1, :cond_1

    iget-object v1, v1, Ltn/v;->a:Lwn/h;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ltn/u;->a:Lvn/f;

    invoke-virtual {v1}, Lvn/f;->a()Lwn/h;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Ltn/u;->e:Ljava/util/Map;

    new-instance v3, Ltn/t;

    invoke-direct {v3, v0, v1, p2}, Ltn/t;-><init>(Ljava/util/Collection;Lwn/h;Lwn/N;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-boolean p1, p1, Ltn/s;->v:Z

    if-eqz p1, :cond_2

    new-instance p1, Ltn/v;

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Ltn/u;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, v1, p2}, Ltn/v;-><init>(Lwn/h;Ljava/util/Set;)V

    iput-object p1, p0, Ltn/u;->b:Ltn/v;

    :cond_2
    return-object v1
.end method

.method public final f(Lwn/p;Ltn/s;Lvn/f;Lwn/h;Lwn/N;)Lwn/p$b;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "config",
            "vt",
            "heightfield",
            "telemetry"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v26, Lwn/t;

    move-object/from16 v2, v26

    iget-boolean v3, v0, Ltn/s;->a:Z

    iget v4, v0, Ltn/s;->b:I

    iget v5, v0, Ltn/s;->c:I

    iget v6, v1, Lvn/f;->c:I

    iget-object v7, v0, Ltn/s;->e:Lwn/u$a;

    iget v8, v1, Lvn/f;->h:F

    iget v9, v1, Lvn/f;->i:F

    iget v10, v0, Ltn/s;->h:F

    iget v14, v0, Ltn/s;->g:F

    iget v15, v0, Ltn/s;->i:F

    iget v11, v0, Ltn/s;->j:F

    move/from16 v16, v11

    iget v11, v0, Ltn/s;->k:F

    move/from16 v17, v11

    iget v11, v0, Ltn/s;->l:F

    move/from16 v18, v11

    iget v11, v0, Ltn/s;->m:F

    move/from16 v19, v11

    iget v11, v0, Ltn/s;->n:F

    move/from16 v20, v11

    const/4 v11, 0x6

    iget v12, v0, Ltn/s;->o:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v21

    iget v11, v0, Ltn/s;->q:F

    move/from16 v23, v11

    iget v11, v0, Ltn/s;->r:F

    move/from16 v24, v11

    const/16 v25, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v22, 0x1

    invoke-direct/range {v2 .. v25}, Lwn/t;-><init>(ZIIILwn/u$a;FFFZZZFFFFFFFIZFFLwn/a;)V

    iget v2, v1, Lvn/f;->a:I

    iget v3, v1, Lvn/f;->b:I

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v5, v26

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lwn/p;->b(IILxn/b;Lwn/t;Lwn/h;Lwn/N;)Lwn/p$b;

    move-result-object v1

    iget-boolean v0, v0, Ltn/s;->w:Z

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iput-object v1, v0, Ltn/u;->c:Lwn/p$b;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    return-object v1
.end method

.method public g(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cid"
        }
    .end annotation

    iget-object v0, p0, Ltn/u;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i(IIFFLtn/s;Lwn/p$b;)Ljn/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tilex",
            "tileZ",
            "cellSize",
            "cellHeight",
            "config",
            "rcResult"
        }
    .end annotation

    invoke-virtual {p6}, Lwn/p$b;->c()Lwn/k;

    move-result-object v0

    invoke-virtual {p6}, Lwn/p$b;->d()Lwn/l;

    move-result-object p6

    new-instance v1, Ljn/x;

    invoke-direct {v1}, Ljn/x;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Lwn/k;->f:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lwn/k;->i:[I

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput p1, v1, Ljn/x;->u:I

    iput p2, v1, Ljn/x;->v:I

    iget-object p1, v0, Lwn/k;->a:[I

    iput-object p1, v1, Ljn/x;->a:[I

    iget p1, v0, Lwn/k;->e:I

    iput p1, v1, Ljn/x;->b:I

    iget-object p1, v0, Lwn/k;->b:[I

    iput-object p1, v1, Ljn/x;->c:[I

    iget-object p1, v0, Lwn/k;->d:[I

    iput-object p1, v1, Ljn/x;->e:[I

    iget-object p1, v0, Lwn/k;->i:[I

    iput-object p1, v1, Ljn/x;->d:[I

    iput v4, v1, Ljn/x;->f:I

    iget p1, v0, Lwn/k;->g:I

    iput p1, v1, Ljn/x;->g:I

    if-eqz p6, :cond_1

    iget-object p1, p6, Lwn/l;->a:[I

    iput-object p1, v1, Ljn/x;->h:[I

    iget-object p1, p6, Lwn/l;->b:[F

    iput-object p1, v1, Ljn/x;->i:[F

    iget p1, p6, Lwn/l;->e:I

    iput p1, v1, Ljn/x;->j:I

    iget-object p1, p6, Lwn/l;->c:[I

    iput-object p1, v1, Ljn/x;->k:[I

    iget p1, p6, Lwn/l;->f:I

    iput p1, v1, Ljn/x;->l:I

    :cond_1
    iget p1, p5, Ltn/s;->g:F

    iput p1, v1, Ljn/x;->z:F

    iget p1, p5, Ltn/s;->i:F

    iput p1, v1, Ljn/x;->A:F

    iget p1, p5, Ltn/s;->j:F

    iput p1, v1, Ljn/x;->B:F

    iget-object p1, v0, Lwn/k;->j:[F

    iput-object p1, v1, Ljn/x;->x:[F

    iget-object p1, v0, Lwn/k;->k:[F

    iput-object p1, v1, Ljn/x;->y:[F

    iput p3, v1, Ljn/x;->C:F

    iput p4, v1, Ljn/x;->D:F

    iput-boolean v5, v1, Ljn/x;->E:Z

    iput v2, v1, Ljn/x;->s:I

    new-array p1, v2, [F

    iput-object p1, v1, Ljn/x;->m:[F

    new-array p1, v2, [F

    iput-object p1, v1, Ljn/x;->n:[F

    new-array p1, v2, [I

    iput-object p1, v1, Ljn/x;->q:[I

    new-array p1, v2, [I

    iput-object p1, v1, Ljn/x;->p:[I

    new-array p1, v2, [I

    iput-object p1, v1, Ljn/x;->o:[I

    new-array p1, v2, [I

    iput-object p1, v1, Ljn/x;->r:[I

    return-object v1
.end method

.method public j(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colliderId"
        }
    .end annotation

    iget-object v0, p0, Ltn/u;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltn/u;->f:Z

    const/4 p1, 0x0

    iput-object p1, p0, Ltn/u;->b:Ltn/v;

    :cond_0
    return-void
.end method
