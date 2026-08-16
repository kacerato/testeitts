.class public final Ljf/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 1.3333333f

.field public static final b:F = 4.1887903f

.field public static final c:F = 1.0471976f

.field public static final d:Ljava/util/logging/Logger;

.field public static final synthetic e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/i;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/math/Vector3f;)F
    .locals 2

    const-string v0, "half extents"

    invoke-static {p0, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static b(FF)F
    .locals 2

    const-string v0, "radius"

    invoke-static {p0, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const-string v0, "height"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    const v1, 0x3faaaaaa

    mul-float/2addr p0, v1

    add-float/2addr p1, p0

    mul-float/2addr v0, p1

    return v0
.end method

.method public static c(FF)F
    .locals 1

    const-string v0, "radius"

    invoke-static {p0, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const-string v0, "height"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const v0, 0x3f860a92

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p1

    return v0
.end method

.method public static d(Lcom/jme3/math/Vector3f;)F
    .locals 2

    const-string v0, "half extents"

    invoke-static {p0, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const v1, 0x40c90fdb

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static e(F)F
    .locals 1

    const-string v0, "radius"

    invoke-static {p0, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const v0, 0x40860a92

    invoke-static {p0}, Ljf/f;->j(F)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "first vertex"

    invoke-static {v0, v4}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v4, "2nd vertex"

    invoke-static {v1, v4}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v4, "3rd vertex"

    invoke-static {v2, v4}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v4, "4th vertex"

    invoke-static {v3, v4}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v3, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v4, v5

    float-to-double v6, v4

    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v3, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v4, v8

    float-to-double v9, v4

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v3

    float-to-double v11, v0

    iget v0, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v5

    float-to-double v13, v0

    iget v0, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v8

    move-wide v15, v11

    float-to-double v11, v0

    iget v0, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v3

    float-to-double v0, v0

    iget v4, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    move-wide/from16 v17, v15

    iget v15, v2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v15, v8

    move-wide/from16 v19, v9

    float-to-double v8, v15

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v15, v11, v2

    mul-double v21, v0, v8

    sub-double v15, v15, v21

    mul-double/2addr v0, v4

    mul-double/2addr v2, v13

    sub-double/2addr v0, v2

    mul-double/2addr v13, v8

    mul-double/2addr v11, v4

    sub-double/2addr v13, v11

    mul-double/2addr v6, v15

    mul-double v9, v19, v0

    add-double/2addr v6, v9

    mul-double v11, v17, v13

    add-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    return-wide v0
.end method
