.class public Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
.super LK8/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;


# instance fields
.field public b:LJAVARuntime/Vector2;

.field public x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LK8/f;-><init>()V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
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

    .line 3
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 4
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    .line 5
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 7
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    .line 8
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public static B(FFFF)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ax",
            "ay",
            "bx",
            "by"
        }
    .end annotation

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static D0(FFFF)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ax",
            "ay",
            "bx",
            "by"
        }
    .end annotation

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static F0(FF)F
    .locals 0
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

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static L0(FFI)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "decimals"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static M(FFFF)F
    .locals 0
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
            "ox",
            "oy"
        }
    .end annotation

    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    return p0
.end method

.method public static M0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object v0
.end method

.method public static P(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    :try_start_0
    sget-object v0, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static Q(DD)D
    .locals 0
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

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static T(FF)F
    .locals 0
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

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, LNc/b;->q1(F)F

    move-result p0

    return p0
.end method

.method public static y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v1, Lcom/jme3/math/Vector2f;

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v1, v2, p1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->cross(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public B0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    return-void
.end method

.method public C(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public C0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public D(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public G(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v1, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public G0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public H(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public H0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public I(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public J0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public K0()LJAVARuntime/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->b:LJAVARuntime/Vector2;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Vector2;

    invoke-direct {v0, p0}, LJAVARuntime/Vector2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->b:LJAVARuntime/Vector2;

    :cond_0
    return-object v0
.end method

.method public L(FF)F
    .locals 1
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public O(FF)Z
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FF)Z

    move-result p1

    return p1
.end method

.method public S()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->q1(F)F

    move-result v0

    return v0
.end method

.method public U(FFF)V
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
            "speed"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, p1, p3}, LNc/b;->N0(FFF)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {p1, p2, p3}, LNc/b;->N0(FFF)F

    :cond_0
    return-void
.end method

.method public V(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "speed"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, v1, p2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v0, p1, p2}, LNc/b;->N0(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :cond_0
    return-void
.end method

.method public W(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, p1, p2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v0, p1, p2}, LNc/b;->N0(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public X(FFF)V
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
            "speed"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, p1, p3}, LNc/b;->N0(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {p1, p2, p3}, LNc/b;->N0(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public Y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "speed"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, v1, p2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v0, p1, p2}, LNc/b;->N0(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public Z(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public a0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public blendLocal(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, p1, p2}, LNc/b;->z(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v0, p1, p2}, LNc/b;->z(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public d(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public d0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public distance(FF)F
    .locals 4
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

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public dot(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public e(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public e0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
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

    .line 3
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    return p1
.end method

.method public equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1
.end method

.method public f(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr p1, p2

    invoke-virtual {p3, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p3
.end method

.method public f0(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p2
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public get(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p1

    return p1
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return v0
.end method

.method public h(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p2
.end method

.method public h0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public i(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float p1, p1

    add-float/2addr v1, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public i0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector",
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p2
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vector2"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    return-object v0
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Vector2",
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p2
.end method

.method public k0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :goto_0
    return-object p0
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public l0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public lengthF()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->q1(F)F

    move-result v0

    return v0
.end method

.method public m(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public m0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public n(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public n0(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr p1, p2

    invoke-virtual {p3, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p3
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public o0(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p2
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector",
            "multiplier"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public p0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p0
.end method

.method public q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public r(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, p1, p2}, LNc/b;->z(FFF)F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v1, p1, p2}, LNc/b;->z(FFF)F

    move-result p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object p2
.end method

.method public r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector",
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p2
.end method

.method public s(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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
            "blend"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, p1, p3}, LNc/b;->z(FFF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v0, p2, p3}, LNc/b;->z(FFF)F

    move-result p2

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p3, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object p3
.end method

.method public s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
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

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    :goto_0
    return-void
.end method

.method public sqrtLength()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public t0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pivot",
            "angle"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {p2}, LNc/b;->d0(F)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {p2}, LNc/b;->m1(F)F

    move-result v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-static {p2}, LNc/b;->m1(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {p2}, LNc/b;->d0(F)F

    move-result p2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    add-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    add-float/2addr v0, p1

    invoke-virtual {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    sget-object v0, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6
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

    const-string v1, "("

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

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    .line 3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, v1, p2}, LNc/b;->z(FFF)F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v1, p1, p2}, LNc/b;->z(FFF)F

    move-result p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object p2
.end method

.method public u0(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->d0(F)F

    move-result v0

    invoke-static {p1}, LNc/b;->m1(F)F

    move-result p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float v2, v1, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float v4, v3, p1

    sub-float/2addr v2, v4

    mul-float/2addr v1, p1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void
.end method

.method public v(FFF)V
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
            "blend"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, p1, p3}, LNc/b;->z(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {p1, p2, p3}, LNc/b;->z(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public v0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)V
    .locals 2
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, v1, p2}, LNc/b;->z(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v0, p1, p2}, LNc/b;->z(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public w0(FF)V
    .locals 0
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec2"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public y0(Ljavax/vecmath/Vector2f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public z(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
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

    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, p1, p2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->cross(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    return-object p2
.end method

.method public z0(LJAVARuntime/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->b:LJAVARuntime/Vector2;

    return-void
.end method
