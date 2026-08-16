.class public Lvn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0xf000

.field public static final B:I = 0xf00

.field public static final C:I = 0x1000

.field public static final D:I = 0x100

.field public static final y:Ljava/nio/ByteOrder;

.field public static final z:I = 0x564f584c


# instance fields
.field public a:I

.field public b:Lwn/u$a;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:I

.field public p:Z

.field public q:F

.field public r:F

.field public s:Z

.field public t:I

.field public u:I

.field public v:[F

.field public w:[F

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvn/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lvn/c;->y:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lwn/u$a;->WATERSHED:Lwn/u$a;

    iput-object v0, p0, Lvn/c;->b:Lwn/u$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvn/c;->c:Z

    iput-boolean v0, p0, Lvn/c;->d:Z

    iput-boolean v0, p0, Lvn/c;->e:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lvn/c;->v:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lvn/c;->w:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvn/c;->x:Ljava/util/List;

    return-void
.end method

.method public static b(Ltn/r;)Lvn/c;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    new-instance v0, Lvn/c;

    invoke-direct {v0}, Lvn/c;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lvn/c;->a:I

    iget-object v2, p0, Ltn/r;->a:Ltn/s;

    iget-object v3, v2, Ltn/s;->e:Lwn/u$a;

    iput-object v3, v0, Lvn/c;->b:Lwn/u$a;

    iget-boolean v3, v2, Ltn/s;->s:Z

    iput-boolean v3, v0, Lvn/c;->c:Z

    iget-boolean v3, v2, Ltn/s;->t:Z

    iput-boolean v3, v0, Lvn/c;->d:Z

    iget-boolean v3, v2, Ltn/s;->u:Z

    iput-boolean v3, v0, Lvn/c;->e:Z

    iget v3, v2, Ltn/s;->i:F

    iput v3, v0, Lvn/c;->f:F

    iget v3, v2, Ltn/s;->g:F

    iput v3, v0, Lvn/c;->g:F

    iget v3, v2, Ltn/s;->j:F

    iput v3, v0, Lvn/c;->h:F

    iget v3, v2, Ltn/s;->h:F

    iput v3, v0, Lvn/c;->i:F

    iget v3, v2, Ltn/s;->d:F

    iput v3, v0, Lvn/c;->j:F

    iget v3, v2, Ltn/s;->n:F

    iput v3, v0, Lvn/c;->k:F

    iget v3, v2, Ltn/s;->m:F

    iput v3, v0, Lvn/c;->l:F

    iget v3, v2, Ltn/s;->k:F

    iput v3, v0, Lvn/c;->m:F

    iget v3, v2, Ltn/s;->l:F

    iput v3, v0, Lvn/c;->n:F

    iget v3, v2, Ltn/s;->o:I

    iput v3, v0, Lvn/c;->o:I

    iget-boolean v3, v2, Ltn/s;->p:Z

    iput-boolean v3, v0, Lvn/c;->p:Z

    iget v3, v2, Ltn/s;->q:F

    iput v3, v0, Lvn/c;->q:F

    iget v3, v2, Ltn/s;->r:F

    iput v3, v0, Lvn/c;->r:F

    iget-boolean v3, v2, Ltn/s;->a:Z

    iput-boolean v3, v0, Lvn/c;->s:Z

    iget v3, v2, Ltn/s;->b:I

    iput v3, v0, Lvn/c;->t:I

    iget v2, v2, Ltn/s;->c:I

    iput v2, v0, Lvn/c;->u:I

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, v0, Lvn/c;->w:[F

    invoke-virtual {p0}, Ltn/r;->W()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvn/f;

    invoke-virtual {v2}, Lvn/f;->a()Lwn/h;

    move-result-object v3

    iget-object v4, v0, Lvn/c;->x:Ljava/util/List;

    new-instance v5, Lvn/f;

    iget v6, v2, Lvn/f;->a:I

    iget v7, v2, Lvn/f;->b:I

    invoke-direct {v5, v6, v7, v3}, Lvn/f;-><init>(IILwn/h;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lvn/c;->w:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    iget-object v6, v2, Lvn/f;->f:[F

    aget v6, v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v3, v4

    iget-object v3, v0, Lvn/c;->w:[F

    aget v5, v3, v1

    iget-object v6, v2, Lvn/f;->f:[F

    aget v6, v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v3, v1

    iget-object v3, v0, Lvn/c;->w:[F

    const/4 v5, 0x2

    aget v6, v3, v5

    iget-object v7, v2, Lvn/f;->f:[F

    aget v7, v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v3, v5

    iget-object v3, v0, Lvn/c;->w:[F

    const/4 v6, 0x3

    aget v7, v3, v6

    iget-object v8, v2, Lvn/f;->g:[F

    aget v4, v8, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v3, v6

    iget-object v3, v0, Lvn/c;->w:[F

    const/4 v4, 0x4

    aget v6, v3, v4

    iget-object v7, v2, Lvn/f;->g:[F

    aget v7, v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v3, v4

    iget-object v3, v0, Lvn/c;->w:[F

    const/4 v4, 0x5

    aget v6, v3, v4

    iget-object v2, v2, Lvn/f;->g:[F

    aget v2, v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v3, v4

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method

.method public static c(Lwn/t;Ljava/util/List;)Lvn/c;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/t;",
            "Ljava/util/List<",
            "Lwn/p$b;",
            ">;)",
            "Lvn/c;"
        }
    .end annotation

    new-instance v0, Lvn/c;

    invoke-direct {v0}, Lvn/c;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lvn/c;->a:I

    iget-object v2, p0, Lwn/t;->a:Lwn/u$a;

    iput-object v2, v0, Lvn/c;->b:Lwn/u$a;

    iget-boolean v2, p0, Lwn/t;->s:Z

    iput-boolean v2, v0, Lvn/c;->c:Z

    iget-boolean v2, p0, Lwn/t;->t:Z

    iput-boolean v2, v0, Lvn/c;->d:Z

    iget-boolean v2, p0, Lwn/t;->u:Z

    iput-boolean v2, v0, Lvn/c;->e:Z

    iget v2, p0, Lwn/t;->B:F

    iput v2, v0, Lvn/c;->f:F

    iget v2, p0, Lwn/t;->z:F

    iput v2, v0, Lvn/c;->g:F

    iget v2, p0, Lwn/t;->A:F

    iput v2, v0, Lvn/c;->h:F

    iget v2, p0, Lwn/t;->g:F

    iput v2, v0, Lvn/c;->i:F

    iget v2, p0, Lwn/t;->e:F

    iput v2, v0, Lvn/c;->j:F

    iget v2, p0, Lwn/t;->l:F

    iput v2, v0, Lvn/c;->k:F

    iget v2, p0, Lwn/t;->C:F

    iput v2, v0, Lvn/c;->l:F

    iget v2, p0, Lwn/t;->x:F

    iput v2, v0, Lvn/c;->m:F

    iget v2, p0, Lwn/t;->y:F

    iput v2, v0, Lvn/c;->n:F

    iget v2, p0, Lwn/t;->o:I

    iput v2, v0, Lvn/c;->o:I

    iget-boolean v2, p0, Lwn/t;->v:Z

    iput-boolean v2, v0, Lvn/c;->p:Z

    iget v2, p0, Lwn/t;->p:F

    iput v2, v0, Lvn/c;->q:F

    iget v2, p0, Lwn/t;->q:F

    iput v2, v0, Lvn/c;->r:F

    iget-boolean v2, p0, Lwn/t;->b:Z

    iput-boolean v2, v0, Lvn/c;->s:Z

    iget v2, p0, Lwn/t;->c:I

    iput v2, v0, Lvn/c;->t:I

    iget p0, p0, Lwn/t;->d:I

    iput p0, v0, Lvn/c;->u:I

    const/4 p0, 0x6

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    iput-object p0, v0, Lvn/c;->w:[F

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwn/p$b;

    iget-object v2, v0, Lvn/c;->x:Ljava/util/List;

    new-instance v3, Lvn/f;

    iget v4, p1, Lwn/p$b;->a:I

    iget v5, p1, Lwn/p$b;->b:I

    invoke-virtual {p1}, Lwn/p$b;->e()Lwn/h;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lvn/f;-><init>(IILwn/h;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lvn/c;->w:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    invoke-virtual {p1}, Lwn/p$b;->e()Lwn/h;

    move-result-object v5

    iget-object v5, v5, Lwn/h;->c:[F

    aget v5, v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v3

    iget-object v2, v0, Lvn/c;->w:[F

    aget v4, v2, v1

    invoke-virtual {p1}, Lwn/p$b;->e()Lwn/h;

    move-result-object v5

    iget-object v5, v5, Lwn/h;->c:[F

    aget v5, v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v1

    iget-object v2, v0, Lvn/c;->w:[F

    const/4 v4, 0x2

    aget v5, v2, v4

    invoke-virtual {p1}, Lwn/p$b;->e()Lwn/h;

    move-result-object v6

    iget-object v6, v6, Lwn/h;->c:[F

    aget v6, v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v4

    iget-object v2, v0, Lvn/c;->w:[F

    const/4 v5, 0x3

    aget v6, v2, v5

    invoke-virtual {p1}, Lwn/p$b;->e()Lwn/h;

    move-result-object v7

    iget-object v7, v7, Lwn/h;->d:[F

    aget v3, v7, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v5

    iget-object v2, v0, Lvn/c;->w:[F

    const/4 v3, 0x4

    aget v5, v2, v3

    invoke-virtual {p1}, Lwn/p$b;->e()Lwn/h;

    move-result-object v6

    iget-object v6, v6, Lwn/h;->d:[F

    aget v6, v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v2, v3

    iget-object v2, v0, Lvn/c;->w:[F

    const/4 v3, 0x5

    aget v5, v2, v3

    invoke-virtual {p1}, Lwn/p$b;->e()Lwn/h;

    move-result-object p1

    iget-object p1, p1, Lwn/h;->d:[F

    aget p1, p1, v4

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v2, v3

    goto/16 :goto_0

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method


# virtual methods
.method public a(Lvn/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    iget-object v0, p0, Lvn/c;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lvn/f;Lwn/u$a;IIZZZLwn/a;ZFF)Lwn/t;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "partitionType",
            "maxPolyVerts",
            "regionMergeSize",
            "filterLowHangingObstacles",
            "filterLedgeSpans",
            "filterWalkableLowHeightSpans",
            "walkbableAreaMod",
            "buildMeshDetail",
            "detailSampleDist",
            "detailSampleMaxError"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v21, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v25, p8

    move/from16 v22, p9

    move/from16 v23, p10

    move/from16 v24, p11

    new-instance v26, Lwn/t;

    move-object/from16 v2, v26

    iget-boolean v3, v0, Lvn/c;->s:Z

    iget v4, v0, Lvn/c;->t:I

    iget v5, v0, Lvn/c;->u:I

    iget v6, v1, Lvn/f;->c:I

    iget v8, v0, Lvn/c;->j:F

    iget v9, v1, Lvn/f;->i:F

    iget v10, v0, Lvn/c;->i:F

    iget v14, v0, Lvn/c;->g:F

    iget v15, v0, Lvn/c;->f:F

    iget v1, v0, Lvn/c;->h:F

    move/from16 v16, v1

    iget v1, v0, Lvn/c;->m:F

    move/from16 v17, v1

    iget v1, v0, Lvn/c;->n:F

    move/from16 v18, v1

    iget v1, v0, Lvn/c;->l:F

    move/from16 v19, v1

    iget v1, v0, Lvn/c;->k:F

    move/from16 v20, v1

    invoke-direct/range {v2 .. v25}, Lwn/t;-><init>(ZIIILwn/u$a;FFFZZZFFFFFFFIZFFLwn/a;)V

    return-object v26
.end method
