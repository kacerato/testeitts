.class public Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
.super LK8/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final i:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public g:LJAVARuntime/Quaternion;

.field w:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field z:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    double-to-float p1, p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    double-to-float p1, p3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    double-to-float p1, p5

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    double-to-float p1, p7

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    .line 29
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    .line 17
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    .line 18
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    .line 19
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    .line 20
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    .line 23
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    .line 24
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    .line 25
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    .line 26
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationMatrix"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    .line 8
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    .line 11
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    .line 12
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    .line 13
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    .line 14
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    .line 5
    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    const/4 v0, 0x0

    .line 44
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    const/4 v0, 0x1

    .line 45
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    const/4 v0, 0x2

    .line 46
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    const/4 v0, 0x3

    .line 47
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-void
.end method

.method public constructor <init>([Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    const/4 v0, 0x0

    .line 38
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    const/4 v0, 0x1

    .line 39
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    const/4 v0, 0x2

    .line 40
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    const/4 v0, 0x3

    .line 41
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-void
.end method

.method public static B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "up"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3f7fbe77    # 0.999f

    cmpg-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-gez p0, :cond_0

    invoke-virtual {p1, v1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    return-void
.end method

.method public static H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "q1",
            "q2",
            "t"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->e(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static J()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object v0
.end method

.method public static K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static K0(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static L(Lcom/jme3/math/Vector3f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method

.method public static S(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method

.method public static T(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "out"
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object p2
.end method

.method public static X0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object v0
.end method

.method public static d(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "x"
        }
    .end annotation

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static h(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p0

    neg-float p1, p1

    invoke-static {p1, p0}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result p0

    invoke-static {p0}, LNc/b;->J1(F)F

    move-result p0

    return p0
.end method

.method public static i(FF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result p0

    invoke-static {p0}, LNc/b;->J1(F)F

    move-result p0

    return p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(FFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "xx",
            "yy",
            "zz",
            "degress"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "xx",
            "yy",
            "zz",
            "degress",
            "out"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v1

    if-gtz v2, :cond_2

    cmpg-float v2, p1, v0

    if-ltz v2, :cond_1

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_0

    invoke-static {p3}, LNc/b;->o(F)F

    move-result p3

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p3, v2

    mul-float/2addr p0, p3

    mul-float/2addr p1, p3

    mul-float/2addr p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p3, v0

    invoke-virtual {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p4, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    return-object p4

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the z angle factor can\'t be < 0 or > 1, make sure the arguments are inside the 0 - 1 limits, otherwise the angle can be any degrees, could you be confusing this method with \"fromEuler\" or \"setFromEuler\"?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the y angle factor can\'t be < 0 or > 1, make sure the arguments are inside the 0 - 1 limits, otherwise the angle can be any degrees, could you be confusing this method with \"fromEuler\" or \"setFromEuler\"?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the x angle factor can\'t be < 0 or > 1, make sure the arguments are inside the 0 - 1 limits, otherwise the angle can be any degrees, could you be confusing this method with \"fromEuler\" or \"setFromEuler\"?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(FFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-object v0
.end method

.method public static o(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "yawRad",
            "pitchRad",
            "outDir"
        }
    .end annotation

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    neg-float p0, v0

    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    mul-float/2addr v1, p1

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p0

    const p1, 0x2b8cbccc    # 1.0E-12f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    return-void
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "up"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    const v4, 0x3f7fbe77    # 0.999f

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_3

    invoke-virtual {p1, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p1, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRight",
            "outUp",
            "outForward"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v6

    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float v9, v7, v8

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v9, v11, v9

    mul-float v12, v3, v4

    mul-float v13, v5, v6

    add-float v14, v12, v13

    mul-float/2addr v14, v10

    mul-float v15, v3, v5

    mul-float v16, v4, v6

    sub-float v17, v15, v16

    mul-float v11, v17, v10

    invoke-virtual {v0, v9, v14, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v9

    const v11, 0x2b8cbccc    # 1.0E-12f

    cmpl-float v9, v9, v11

    const/4 v14, 0x0

    if-lez v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v14, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    sub-float/2addr v12, v13

    mul-float/2addr v12, v10

    mul-float v0, v3, v3

    add-float/2addr v8, v0

    mul-float/2addr v8, v10

    sub-float v8, v9, v8

    mul-float/2addr v4, v5

    mul-float/2addr v3, v6

    add-float v5, v4, v3

    mul-float/2addr v5, v10

    invoke-virtual {v1, v12, v8, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v5

    cmpl-float v5, v5, v11

    if-lez v5, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v14, v9, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    add-float v15, v15, v16

    mul-float/2addr v15, v10

    sub-float/2addr v4, v3

    mul-float/2addr v4, v10

    add-float/2addr v0, v7

    mul-float/2addr v0, v10

    sub-float v0, v9, v0

    invoke-virtual {v2, v15, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v14, v14, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    return-void
.end method

.method public B()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float v5, v2, v3

    add-float/2addr v5, v4

    add-float/2addr v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v7, v6

    float-to-double v9, v5

    const-wide v11, 0x3fdfef9db22d0e56L    # 0.499

    mul-double/2addr v11, v9

    cmpl-double v11, v7, v11

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    if-lez v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    invoke-static {v1, v2}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v1

    mul-float/2addr v1, v13

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    const v1, 0x3fc90fdb

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    goto :goto_0

    :cond_0
    const-wide v14, -0x402010624dd2f1aaL    # -0.499

    mul-double/2addr v9, v14

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    invoke-static {v1, v2}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v1

    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    const v1, -0x4036f025

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v7

    mul-float/2addr v7, v13

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v13

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float v8, v2, v3

    sub-float/2addr v8, v4

    add-float/2addr v8, v1

    invoke-static {v7, v8}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    mul-float/2addr v6, v13

    div-float/2addr v6, v5

    invoke-static {v6}, LNc/b;->r(F)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    mul-float/2addr v5, v13

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v6

    mul-float/2addr v6, v13

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    neg-float v2, v2

    add-float/2addr v2, v3

    sub-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-static {v5, v2}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    cmpg-float v1, v1, v12

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    cmpg-float v1, v1, v12

    if-gez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    cmpg-float v1, v1, v12

    if-gez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C0()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public D()F
    .locals 15

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v4, v1, v2

    add-float/2addr v4, v3

    add-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v4

    const-wide v9, 0x3fdfef9db22d0e56L    # 0.499

    mul-double/2addr v9, v7

    cmpl-double v4, v5, v9

    const-wide/16 v9, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    if-lez v4, :cond_1

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v12

    if-gez v1, :cond_0

    add-float/2addr v0, v11

    :cond_0
    return v0

    :cond_1
    const-wide v13, -0x402010624dd2f1aaL    # -0.499

    mul-double/2addr v7, v13

    cmpg-double v4, v5, v7

    if-gez v4, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v12

    if-gez v1, :cond_2

    add-float/2addr v0, v11

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v6

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    neg-float v1, v1

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    add-float/2addr v1, v0

    invoke-static {v4, v1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v12

    if-gez v1, :cond_4

    add-float/2addr v0, v11

    :cond_4
    return v0
.end method

.method public D0(Ljavax/vecmath/Quat4f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    neg-float p1, p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public E()F
    .locals 14

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v4, v1, v2

    add-float/2addr v4, v3

    add-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v4

    const-wide v9, 0x3fdfef9db22d0e56L    # 0.499

    mul-double/2addr v9, v7

    cmpl-double v4, v5, v9

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v0

    mul-float/2addr v0, v11

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v10

    if-gez v1, :cond_0

    add-float/2addr v0, v9

    :cond_0
    return v0

    :cond_1
    const-wide v12, -0x402010624dd2f1aaL    # -0.499

    mul-double/2addr v7, v12

    cmpg-double v4, v5, v7

    if-gez v4, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v10

    if-gez v1, :cond_2

    add-float/2addr v0, v9

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    mul-float/2addr v4, v11

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    mul-float/2addr v5, v11

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    add-float/2addr v1, v0

    invoke-static {v4, v1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v10

    if-gez v1, :cond_4

    add-float/2addr v0, v9

    :cond_4
    return v0
.end method

.method public final E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "preferredUp",
            "preserveRollOnPole"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v6, 0x0

    if-eqz p3, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    if-eqz p3, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_3
    move-object v8, v6

    :goto_1
    if-eqz p3, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_4
    move-object/from16 v0, p1

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :goto_2
    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_5
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v9

    if-eqz v9, :cond_7

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    :goto_3
    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_4

    :cond_8
    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_4
    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_9

    move v0, v9

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    const v1, 0x2edbe6ff    # 1.0E-10f

    if-lez v0, :cond_a

    if-eqz p3, :cond_a

    move-object/from16 v15, p0

    invoke-virtual {v15, v7, v8, v6}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v10

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v11

    mul-float/2addr v11, v0

    sub-float/2addr v10, v11

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v12

    mul-float/2addr v12, v0

    sub-float/2addr v11, v12

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v13

    mul-float/2addr v13, v0

    sub-float/2addr v12, v13

    invoke-virtual {v4, v10, v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_5

    :cond_a
    move-object/from16 v15, p0

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_b
    :goto_5
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_c
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0, v9, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_6
    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_e
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v11

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v12

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v14

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v16

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v17

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v18

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v19

    move-object/from16 v10, p0

    move v15, v0

    invoke-virtual/range {v10 .. v19}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y(FFFFFFFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_7
    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw v0

    :cond_10
    :goto_8
    return-void
.end method

.method public F()F
    .locals 11

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    float-to-double v4, v1

    const-wide v6, 0x3fdfef9db22d0e56L    # 0.499

    mul-double/2addr v6, v4

    cmpl-double v6, v2, v6

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    if-lez v6, :cond_1

    const-wide v0, 0x3ff921fb60000000L    # 1.5707963705062866

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v8

    if-gez v1, :cond_0

    add-float/2addr v0, v7

    :cond_0
    return v0

    :cond_1
    const-wide v9, -0x402010624dd2f1aaL    # -0.499

    mul-double/2addr v4, v9

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    const-wide v0, -0x4006de04a0000000L    # -1.5707963705062866

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v8

    if-gez v1, :cond_2

    add-float/2addr v0, v7

    :cond_2
    return v0

    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->r(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v0, v8

    if-gez v1, :cond_4

    add-float/2addr v0, v7

    :cond_4
    return v0
.end method

.method public F0(LJAVARuntime/Quaternion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->g:LJAVARuntime/Quaternion;

    return-void
.end method

.method public final G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outForward",
            "outUp"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v3

    mul-float v4, v0, v2

    mul-float v5, v1, v3

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    mul-float v6, v1, v2

    mul-float v7, v0, v3

    sub-float v8, v6, v7

    mul-float/2addr v8, v5

    mul-float v9, v0, v0

    mul-float v10, v1, v1

    add-float/2addr v10, v9

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    invoke-virtual {p1, v4, v8, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v4

    const v8, 0x2b8cbccc    # 1.0E-12f

    cmpl-float v4, v4, v8

    const/4 v10, 0x0

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v10, v10, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    mul-float/2addr v0, v1

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, v5

    mul-float/2addr v2, v2

    add-float/2addr v9, v2

    mul-float/2addr v9, v5

    sub-float p1, v11, v9

    add-float/2addr v6, v7

    mul-float/2addr v6, v5

    invoke-virtual {p2, v0, p1, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    cmpl-float p1, p1, v8

    if-lez p1, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v10, v11, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    return-void
.end method

.method public G0(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H()F
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->q1(F)F

    move-result v0

    return v0
.end method

.method public I()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    return v0
.end method

.method public I0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "q2",
            "t"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->f(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    return-object p0
.end method

.method public J0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "q1",
            "q2",
            "t"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->e(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object p0
.end method

.method public L0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axisStore"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-static {v1}, LNc/b;->n(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    :cond_1
    :goto_0
    return v1
.end method

.method public M()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public M0(Lcom/jme3/math/Vector3f;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axisStore"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    iput v3, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v1, p1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-static {v1}, LNc/b;->n(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    :cond_1
    :goto_0
    return v1
.end method

.method public N()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0}, LNc/b;->m1(F)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0}, LNc/b;->d0(F)F

    move-result v0

    invoke-direct {v1, v2, v3, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public N0()LJAVARuntime/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->g:LJAVARuntime/Quaternion;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0, p0}, LJAVARuntime/Quaternion;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->g:LJAVARuntime/Quaternion;

    :cond_0
    return-object v0
.end method

.method public O()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0}, LNc/b;->m1(F)F

    move-result v2

    invoke-static {v0}, LNc/b;->d0(F)F

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public O0()Ljavax/vecmath/Quat4f;
    .locals 1

    new-instance v0, Ljavax/vecmath/Quat4f;

    invoke-direct {v0}, Ljavax/vecmath/Quat4f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->P0(Ljavax/vecmath/Quat4f;)Ljavax/vecmath/Quat4f;

    move-result-object v0

    return-object v0
.end method

.method public P()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0}, LNc/b;->m1(F)F

    move-result v2

    invoke-static {v0}, LNc/b;->d0(F)F

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public P0(Ljavax/vecmath/Quat4f;)Ljavax/vecmath/Quat4f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    iput v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    iput v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    iput v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    iput v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    return-object p1
.end method

.method public Q0()Lcom/jme3/math/Quaternion;
    .locals 5

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public R0(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    mul-float/2addr v5, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v7

    mul-float/2addr v7, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v10

    mul-float/2addr v10, v4

    add-float v4, v0, v2

    sub-float v4, v1, v4

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    sub-float v4, v5, v10

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    add-float v4, v6, v9

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    add-float/2addr v5, v10

    iput v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    add-float/2addr v2, v3

    sub-float v2, v1, v2

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    sub-float v2, v8, v7

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    sub-float/2addr v6, v9

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    add-float/2addr v8, v7

    iput v8, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    add-float/2addr v3, v0

    sub-float/2addr v1, v3

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object p1
.end method

.method public U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public U0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v1(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->setScale(FFF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v3

    cmpl-float v4, v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    cmpl-float v6, v3, v4

    if-lez v6, :cond_1

    div-float/2addr v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v11

    mul-float/2addr v11, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v3, v4

    sub-float v6, v2, v6

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    sub-float v6, v7, v12

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    add-float v6, v8, v11

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    add-float/2addr v7, v12

    iput v7, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    add-float/2addr v4, v5

    sub-float v4, v2, v4

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    sub-float v4, v10, v9

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    sub-float/2addr v8, v11

    iput v8, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    add-float/2addr v10, v9

    iput v10, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    add-float/2addr v5, v3

    sub-float/2addr v2, v5

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->H0(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p1
.end method

.method public V(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    sub-float/2addr p3, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float/2addr p4, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public V0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
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
            "from",
            "x",
            "y",
            "z",
            "up"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p5

    invoke-virtual {v1, v3, v6, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    invoke-virtual {v1, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p5

    sub-float/2addr p2, p5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p5

    sub-float/2addr p3, p5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float/2addr p4, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p3

    if-eqz p3, :cond_6

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v1, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_7
    :goto_5
    return-void
.end method

.method public W0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    mul-float/2addr v5, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v7

    mul-float/2addr v7, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v10

    mul-float/2addr v10, v4

    add-float v4, v0, v2

    sub-float v4, v1, v4

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    sub-float v4, v5, v10

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    add-float v4, v6, v9

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    add-float/2addr v5, v10

    iput v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    add-float/2addr v2, v3

    sub-float v2, v1, v2

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    sub-float v2, v8, v7

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    sub-float/2addr v6, v9

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    add-float/2addr v8, v7

    iput v8, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    add-float/2addr v3, v0

    sub-float/2addr v1, v3

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    return-object p1
.end method

.method public X(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "x",
            "y",
            "z",
            "up",
            "yaw",
            "pitch"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    sub-float v2, p2, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    sub-float v3, p3, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float v4, p4, p1

    move-object v1, p0

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->e0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void
.end method

.method public Y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFZZ)V
    .locals 8
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
            "from",
            "x",
            "y",
            "z",
            "yaw",
            "pitch"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    sub-float v2, p2, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    sub-float v3, p3, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float v4, p4, p1

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->e0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void
.end method

.method public Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {v0, v2, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "up"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p3

    invoke-virtual {v1, v3, v6, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    invoke-virtual {v1, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    sub-float/2addr p3, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {v0, p3, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p3

    if-eqz p3, :cond_6

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v1, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_7
    :goto_5
    return-void
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "up",
            "yaw",
            "pitch"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    sub-float v3, v0, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    sub-float v4, v0, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float v5, p2, p1

    move-object v2, p0

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->e0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "up",
            "yaw",
            "pitch"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->e0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "yaw",
            "pitch"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "blend"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->h(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public final e0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V
    .locals 19
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
            "x",
            "y",
            "z",
            "up",
            "yaw",
            "pitch"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_d

    :cond_1
    if-eqz p4, :cond_2

    invoke-static/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v3, p4

    :goto_0
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v5, v4

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    const v7, 0x322bcc77    # 1.0E-8f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    return-void

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    const-class v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v9, 0x0

    if-eqz p5, :cond_8

    if-eqz p6, :cond_8

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {v4, v9, v5, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {v4, v8, v10, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v8

    if-eqz v8, :cond_6

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v4, v9, v5, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_3
    invoke-virtual {v6, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_7

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v11, v6, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_4
    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw v0

    :cond_8
    add-float/2addr v4, v6

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K0(F)F

    move-result v4

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d(FF)F

    move-result v0

    neg-float v1, v1

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d(FF)F

    move-result v1

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_2
    invoke-virtual {v11, v12, v13, v14}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K0(F)F

    move-result v2

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    invoke-static {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d(FF)F

    move-result v4

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    neg-float v6, v6

    invoke-static {v6, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d(FF)F

    move-result v2

    if-eqz p5, :cond_9

    goto :goto_5

    :cond_9
    move v0, v4

    :goto_5
    if-eqz p6, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    :goto_6
    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v0, v1, v15}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->o(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v12, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    mul-float/2addr v6, v0

    sub-float/2addr v4, v6

    invoke-virtual {v10, v1, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    const v1, 0x2edbe6ff    # 1.0E-10f

    cmpg-float v0, v0, v1

    const v1, 0x2b8cbccc    # 1.0E-12f

    if-gez v0, :cond_e

    if-eqz v3, :cond_c

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    invoke-virtual {v0, v2, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_b

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    goto/16 :goto_b

    :cond_b
    invoke-virtual {v0, v9, v5, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_7

    :cond_c
    move-object v0, v13

    :goto_7
    invoke-virtual {v10, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_d

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_8

    :cond_d
    invoke-virtual {v10, v5, v9, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_8
    if-eqz v3, :cond_f

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_f
    :goto_9
    invoke-virtual {v7, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_a

    :cond_10
    invoke-virtual {v7, v9, v5, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_a
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v17, v7

    move v7, v0

    move-object/from16 v18, v10

    move/from16 v10, v16

    :try_start_4
    invoke-virtual/range {v1 .. v10}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y(FFFFFFFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v15}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v12}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v13}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v14}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_b
    :try_start_6
    invoke-static {v15}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_c
    invoke-static {v12}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v13}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v14}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw v0

    :cond_11
    :goto_d
    return-void
.end method

.method public equally(F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->a(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "blend"
        }
    .end annotation

    invoke-static {p0, p1, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->i(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public f0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {v0, v2, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public fixNan()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, LIc/A;->c(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-void
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "up"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v1, v3, v6, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    invoke-virtual {v1, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, p2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_6

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v1, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    return v0
.end method

.method public h0(FFFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    mul-float/2addr v2, p3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v3

    mul-float/2addr v3, p4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p4

    mul-float/2addr p1, p4

    add-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result p1

    mul-float/2addr p1, p3

    add-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result p1

    mul-float/2addr p1, p2

    sub-float/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    return-void
.end method

.method public i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q1"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result p1

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    return-void
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public j0()F
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public k0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H()F

    move-result v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    div-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    div-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    div-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public l0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public m0(FFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v3, v1, v1, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    cmpl-float p1, p2, v1

    if-eqz p1, :cond_1

    invoke-static {v1, v3, v1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    :cond_1
    cmpl-float p1, p3, v1

    if-eqz p1, :cond_2

    invoke-static {v1, v1, v3, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public n0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 6
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
            "z",
            "out"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "out",
            "convertToLeftHanded"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v6

    float-to-double v6, v6

    move/from16 v8, p1

    float-to-double v8, v8

    move/from16 v10, p2

    float-to-double v10, v10

    move/from16 v12, p3

    float-to-double v12, v12

    mul-double v14, v2, v12

    mul-double v16, v4, v10

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    mul-double v18, v4, v8

    mul-double v20, v0, v12

    sub-double v18, v18, v20

    mul-double v18, v18, v16

    mul-double v20, v0, v10

    mul-double v22, v2, v8

    sub-double v20, v20, v22

    mul-double v20, v20, v16

    mul-double v16, v6, v14

    add-double v8, v8, v16

    mul-double v16, v2, v20

    mul-double v22, v4, v18

    sub-double v16, v16, v22

    add-double v8, v8, v16

    mul-double v16, v6, v18

    add-double v10, v10, v16

    mul-double/2addr v4, v14

    mul-double v16, v0, v20

    sub-double v4, v4, v16

    add-double/2addr v10, v4

    mul-double v6, v6, v20

    add-double/2addr v12, v6

    mul-double v0, v0, v18

    mul-double/2addr v2, v14

    sub-double/2addr v0, v2

    add-double/2addr v12, v0

    if-nez p5, :cond_0

    neg-double v12, v12

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    :goto_0
    double-to-float v1, v8

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public q(FFFF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->b(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FFFF)Z

    move-result p1

    return p1
.end method

.method public q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "out"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p2
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->c(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    move-result p1

    return p1
.end method

.method public r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "out",
            "convertToLeftHanded"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljavax/vecmath/Quat4f;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->d(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Ljavax/vecmath/Quat4f;)Z

    move-result p1

    return p1
.end method

.method public s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "convertToLeftHanded"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public set([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    const/4 v0, 0x1

    .line 6
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    const/4 v0, 0x2

    .line 7
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    const/4 v0, 0x3

    .line 8
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-void
.end method

.method public set([Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    const/4 v0, 0x1

    .line 2
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    const/4 v0, 0x2

    .line 3
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    const/4 v0, 0x3

    .line 4
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-void
.end method

.method public setFromIndex(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "idx"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    :cond_2
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    :cond_3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    :goto_0
    return-void
.end method

.method public setX(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setY(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZ(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t0(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nw",
            "nx",
            "ny",
            "nz"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decimals"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->fixNan()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    :cond_0
    return-void
.end method

.method public u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Quaternion can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(FFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xe",
            "ye",
            "ze"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->o(F)F

    move-result p1

    invoke-static {p2}, LNc/b;->o(F)F

    move-result p2

    invoke-static {p3}, LNc/b;->o(F)F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    invoke-static {p3}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    invoke-static {p3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p3

    mul-float/2addr p2, v0

    invoke-static {p2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    invoke-static {p2}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p2

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p1

    mul-float v3, p2, p3

    mul-float v4, v2, v1

    mul-float/2addr p2, v1

    mul-float/2addr v2, p3

    mul-float p3, v3, p1

    mul-float v1, v4, v0

    sub-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    mul-float/2addr v3, v0

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    mul-float p3, v2, p1

    mul-float v1, p2, v0

    add-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    mul-float/2addr p2, p1

    mul-float/2addr v2, v0

    sub-float/2addr p2, v2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    return-void
.end method

.method public v0(Lcom/jme3/math/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "euler"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method

.method public w0(Ljavax/vecmath/Quat4f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    return-void
.end method

.method public x()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public x0(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method

.method public y(FFFFFFFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 5
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
            0x0
        }
        names = {
            "m00",
            "m01",
            "m02",
            "m10",
            "m11",
            "m12",
            "m20",
            "m21",
            "m22"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p5}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p6}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p7}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p8}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p9}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    mul-float v0, p1, p1

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    mul-float v1, p7, p7

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p1, v0

    mul-float/2addr p4, v0

    mul-float/2addr p7, v0

    :cond_1
    mul-float v0, p2, p2

    mul-float v2, p5, p5

    add-float/2addr v0, v2

    mul-float v2, p8, p8

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p5, v0

    mul-float/2addr p8, v0

    :cond_2
    mul-float v0, p3, p3

    mul-float v2, p6, p6

    add-float/2addr v0, v2

    mul-float v2, p9, p9

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p3, v0

    mul-float/2addr p6, v0

    mul-float/2addr p9, v0

    :cond_3
    add-float v0, p1, p5

    add-float/2addr v0, p9

    cmpl-float v2, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-ltz v2, :cond_6

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    cmpl-float p5, p1, v3

    if-lez p5, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p5

    if-nez p5, :cond_4

    goto :goto_0

    :cond_4
    mul-float p5, p1, v4

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    div-float/2addr v4, p1

    sub-float/2addr p8, p6

    mul-float/2addr p8, v4

    invoke-virtual {p0, p8}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    sub-float/2addr p3, p7

    mul-float/2addr p3, v4

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    sub-float/2addr p4, p2

    mul-float/2addr p4, v4

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    goto/16 :goto_3

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object p0

    :cond_6
    cmpl-float v0, p1, p5

    if-lez v0, :cond_9

    cmpl-float v0, p1, p9

    if-lez v0, :cond_9

    add-float/2addr p1, v1

    sub-float/2addr p1, p5

    sub-float/2addr p1, p9

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    cmpl-float p5, p1, v3

    if-lez p5, :cond_8

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p5

    if-nez p5, :cond_7

    goto :goto_1

    :cond_7
    mul-float p5, p1, v4

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    div-float/2addr v4, p1

    add-float/2addr p4, p2

    mul-float/2addr p4, v4

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    add-float/2addr p3, p7

    mul-float/2addr p3, v4

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    sub-float/2addr p8, p6

    mul-float/2addr p8, v4

    invoke-virtual {p0, p8}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object p0

    :cond_9
    cmpl-float v0, p5, p9

    if-lez v0, :cond_c

    add-float/2addr p5, v1

    sub-float/2addr p5, p1

    sub-float/2addr p5, p9

    invoke-static {p5}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    cmpl-float p5, p1, v3

    if-lez p5, :cond_b

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p5

    if-nez p5, :cond_a

    goto :goto_2

    :cond_a
    mul-float p5, p1, v4

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    div-float/2addr v4, p1

    add-float/2addr p4, p2

    mul-float/2addr p4, v4

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    add-float/2addr p8, p6

    mul-float/2addr p8, v4

    invoke-virtual {p0, p8}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    sub-float/2addr p3, p7

    mul-float/2addr p3, v4

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    goto :goto_3

    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object p0

    :cond_c
    add-float/2addr p9, v1

    sub-float/2addr p9, p1

    sub-float/2addr p9, p5

    invoke-static {p9}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    cmpl-float p5, p1, v3

    if-lez p5, :cond_e

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p5

    if-nez p5, :cond_d

    goto :goto_4

    :cond_d
    mul-float p5, p1, v4

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    div-float/2addr v4, p1

    add-float/2addr p3, p7

    mul-float/2addr p3, v4

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    add-float/2addr p8, p6

    mul-float/2addr p8, v4

    invoke-virtual {p0, p8}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    sub-float/2addr p4, p2

    mul-float/2addr p4, v4

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    :goto_3
    return-object p0

    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object p0

    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object p0
.end method

.method public y0(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method

.method public z(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v7, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v8, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v9, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y(FFFFFFFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public z0(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method
