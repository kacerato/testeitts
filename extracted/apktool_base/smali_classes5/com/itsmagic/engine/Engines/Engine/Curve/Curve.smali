.class public Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
.super LK8/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;
    }
.end annotation


# static fields
.field public static final m:F = 1.0E-6f

.field public static final n:I = 0x100


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:[F

.field public d:[F

.field public e:I

.field public g:Z

.field public i:I

.field public j:F

.field public k:F

.field public l:LJAVARuntime/Curve;

.field public final points:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;->Loop:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    .line 6
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->g:Z

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    const v0, -0x3b864000    # -999.0f

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 12
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;->Loop:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    .line 16
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->g:Z

    .line 19
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    const v0, -0x3b864000    # -999.0f

    .line 20
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k:F

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i()V

    return-void
.end method

.method public static C([F[FII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "left",
            "right"
        }
    .end annotation

    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    move v1, p2

    move v2, p3

    :cond_0
    :goto_0
    if-gt v1, v2, :cond_3

    :goto_1
    aget v3, p0, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    aget v3, p0, v2

    cmpl-float v4, v3, v0

    if-lez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    if-gt v1, v2, :cond_0

    aget v4, p0, v1

    aput v3, p0, v1

    aput v4, p0, v2

    aget v3, p1, v1

    aget v4, p1, v2

    aput v4, p1, v1

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    if-ge p2, v2, :cond_4

    invoke-static {p0, p1, p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->C([F[FII)V

    :cond_4
    if-ge v1, p3, :cond_5

    invoke-static {p0, p1, v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->C([F[FII)V

    :cond_5
    return-void
.end method

.method public static H(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LJ9/b;

    invoke-direct {v0}, LJ9/b;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static I(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LJ9/a;

    invoke-direct {v0}, LJ9/a;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic d(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->v(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)I

    move-result p0

    return p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;)LJAVARuntime/Curve$WrapMode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapMode"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Curve$WrapMode;->valueOf(Ljava/lang/String;)LJAVARuntime/Curve$WrapMode;

    move-result-object p0

    return-object p0
.end method

.method public static m(LJAVARuntime/Curve$WrapMode;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapMode"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    move-result-object p0

    return-object p0
.end method

.method public static r(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p0, v0

    return p0
.end method

.method public static s(Ljava/lang/String;Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "context"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i()V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic v(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static x([FIF)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arr",
            "count",
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p0, v1

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public A(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p2
.end method

.method public B()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final D()V
    .locals 24

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->b:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_0
    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    const/4 v3, 0x0

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    iput-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->g:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    move v6, v3

    :goto_0
    iget-object v7, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v8, Landroid/graphics/PointF;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v8, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->H(Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    if-gtz v6, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    move v7, v3

    move v8, v7

    :goto_1
    const/high16 v9, 0x43800000    # 256.0f

    if-ge v7, v6, :cond_4

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v4, v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-nez v7, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    add-int/2addr v8, v9

    move v7, v10

    goto :goto_1

    :cond_4
    if-ge v8, v5, :cond_5

    monitor-exit v2

    return-void

    :cond_5
    new-array v6, v8, [F

    new-array v7, v8, [F

    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v10, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {v4, v8, v10}, LK9/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move v11, v3

    move v12, v11

    :goto_2
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_8

    invoke-virtual {v4, v11}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    invoke-virtual {v8, v11}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v9, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v9, 0x43800000    # 256.0f

    mul-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v9, 0x2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-nez v11, :cond_6

    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    const/4 v9, 0x1

    :goto_3
    if-gt v9, v5, :cond_7

    int-to-float v11, v9

    move/from16 v17, v0

    int-to-float v0, v5

    div-float/2addr v11, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v11

    mul-float v18, v11, v11

    mul-float v19, v0, v0

    mul-float v20, v19, v0

    mul-float v21, v18, v11

    move-object/from16 v22, v4

    iget v4, v13, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, v20

    const/high16 v23, 0x40400000    # 3.0f

    mul-float v19, v19, v23

    mul-float v19, v19, v11

    iget v11, v14, Landroid/graphics/PointF;->x:F

    mul-float v11, v11, v19

    add-float/2addr v4, v11

    mul-float v0, v0, v23

    mul-float v0, v0, v18

    iget v11, v15, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v0

    add-float/2addr v4, v11

    iget v11, v3, Landroid/graphics/PointF;->x:F

    mul-float v11, v11, v21

    add-float/2addr v4, v11

    aput v4, v6, v12

    iget v4, v13, Landroid/graphics/PointF;->y:F

    mul-float v20, v20, v4

    iget v4, v14, Landroid/graphics/PointF;->y:F

    mul-float v19, v19, v4

    add-float v20, v20, v19

    iget v4, v15, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v4

    add-float v20, v20, v0

    iget v0, v3, Landroid/graphics/PointF;->y:F

    mul-float v21, v21, v0

    add-float v20, v20, v21

    aput v20, v7, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v17

    move-object/from16 v4, v22

    goto :goto_3

    :cond_7
    move/from16 v17, v0

    move/from16 v11, v17

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/high16 v9, 0x43800000    # 256.0f

    goto/16 :goto_2

    :cond_8
    move v0, v5

    if-ge v12, v0, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    add-int/lit8 v0, v12, -0x1

    const/4 v3, 0x0

    invoke-static {v6, v7, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->C([F[FII)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v0, v12, :cond_c

    aget v4, v6, v0

    aget v5, v7, v0

    if-nez v3, :cond_a

    aput v4, v6, v3

    aput v5, v7, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v8, v3, -0x1

    aget v9, v6, v8

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x358637bd    # 1.0E-6f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    aput v4, v6, v8

    aput v5, v7, v8

    goto :goto_6

    :cond_b
    aput v4, v6, v3

    aput v5, v7, v3

    goto :goto_5

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x2

    if-ge v3, v0, :cond_d

    const/4 v0, 0x0

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    monitor-exit v2

    return-void

    :cond_d
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    if-eqz v0, :cond_e

    array-length v0, v0

    if-ge v0, v3, :cond_f

    :cond_e
    new-array v0, v3, [F

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    :cond_f
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    if-eqz v0, :cond_10

    array-length v0, v0

    if-ge v0, v3, :cond_11

    :cond_10
    new-array v0, v3, [F

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    :cond_11
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    const/4 v4, 0x0

    invoke-static {v6, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    invoke-static {v7, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    iput-boolean v4, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->g:Z

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    if-lt v0, v3, :cond_12

    const/4 v0, 0x1

    sub-int/2addr v3, v0

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    goto :goto_7

    :cond_12
    const/4 v0, 0x1

    :goto_7
    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    if-ge v3, v0, :cond_13

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    :cond_13
    monitor-exit v2

    return-void

    :goto_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->B()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->z(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->y()V

    return-void
.end method

.method public F(IFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->y()V

    return-void
.end method

.method public G(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapMode"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    return-void
.end method

.method public J()LJAVARuntime/Curve;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->l:LJAVARuntime/Curve;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Curve;

    invoke-direct {v0, p0}, LJAVARuntime/Curve;-><init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->l:LJAVARuntime/Curve;

    :cond_0
    return-object v0
.end method

.method public K(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->I(Ljava/util/List;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->D()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Curve needs to have at least 4 points"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->y()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v0

    return-object v0
.end method

.method public f(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->y()V

    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    return-void
.end method

.method public final i()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->D()V

    return-void
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>()V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->points:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i()V

    return-object v0
.end method

.method public final n()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->g:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->D()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needed"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    array-length v1, v0

    if-lt v1, p1, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x20

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    return-void
.end method

.method public p(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j:F

    return p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_2

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->q(F)F

    move-result v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j:F

    return v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int v0, v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    sub-float p1, v2, p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->q(F)F

    move-result v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j:F

    return v0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid wrap mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v0, p1, v2}, LNc/b;->E(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->q(F)F

    move-result v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j:F

    return v0

    :cond_6
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->r(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->q(F)F

    move-result v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j:F

    return v0
.end method

.method public final q(F)F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->n()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    cmpg-float v5, p1, v4

    const v6, 0x358637bd    # 1.0E-6f

    const/4 v7, 0x1

    if-gtz v5, :cond_2

    aget v0, v2, v7

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    aget p1, p1, v3

    return p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    aget v1, v1, v3

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    aget v1, v0, v3

    aget v0, v0, v7

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    return v1

    :cond_2
    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    sub-int/2addr v0, v1

    aget v0, v2, v0

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    sub-int/2addr v0, v7

    aget p1, p1, v0

    return p1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    add-int/lit8 v4, v2, -0x2

    aget v0, v0, v4

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    add-int/lit8 v3, v2, -0x2

    aget v3, v0, v3

    add-int/lit8 v4, v2, -0x1

    aget v4, v0, v4

    sub-int/2addr v2, v1

    aget v0, v0, v2

    sub-float/2addr v4, v0

    mul-float/2addr p1, v4

    add-float/2addr v3, p1

    return v3

    :cond_4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    if-ge v1, v7, :cond_5

    move v1, v7

    :cond_5
    if-lt v1, v0, :cond_6

    add-int/lit8 v1, v0, -0x1

    :cond_6
    aget v0, v2, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    :goto_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    sub-int/2addr v0, v7

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    aget v0, v0, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v1, -0x1

    aget v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    :goto_1
    if-le v1, v7, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    cmpl-float v0, v0, p1

    if-lez v0, :cond_8

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_9

    aget v2, v0, v1

    cmpg-float v2, p1, v2

    if-lez v2, :cond_b

    :cond_9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->x([FIF)I

    move-result v0

    if-ge v0, v7, :cond_a

    move v1, v7

    goto :goto_2

    :cond_a
    move v1, v0

    :goto_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e:I

    if-lt v1, v0, :cond_b

    add-int/lit8 v1, v0, -0x1

    :cond_b
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->i:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->c:[F

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    aget v0, v0, v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d:[F

    aget v2, v4, v2

    aget v1, v4, v1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c

    return v1

    :cond_c
    sub-float/2addr p1, v3

    div-float/2addr p1, v0

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v2, p1

    return v2
.end method

.method public u()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->wrapMode:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    return-object v0
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->g:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public z(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->A(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method
