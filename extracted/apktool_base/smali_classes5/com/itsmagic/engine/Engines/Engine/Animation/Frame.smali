.class public Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private arg:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private colorValue:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private event:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private floatValue:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private frameTime:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private imageValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private intValue:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private interpolateEvent:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private quatValue:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private square5Value:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vec2Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vec3Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->interpolateEvent:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method public static F(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->square5Value:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object p0
.end method

.method public static G(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec2Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p0
.end method

.method public static H(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec3Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->colorValue:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->floatValue:F

    return p0
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->imageValue:Ljava/lang/String;

    return-object p0
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->intValue:I

    return p0
.end method

.method public static s(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->quatValue:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object p0
.end method


# virtual methods
.method public A(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolateEvent"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->interpolateEvent:Z

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quatValue"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->quatValue:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "square5Value"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->square5Value:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-void
.end method

.method public D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec2Value"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec2Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec3Value"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec3Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->frameTime:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->frameTime:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->floatValue:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->floatValue:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->intValue:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->intValue:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->colorValue:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->colorValue:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec3Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec3Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec2Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec2Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->quatValue:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->quatValue:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->square5Value:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->square5Value:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->imageValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->imageValue:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->arg:F

    return v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->colorValue:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->easingCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->event:Ljava/lang/String;

    return-object v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->floatValue:F

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->frameTime:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->imageValue:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->intValue:I

    return v0
.end method

.method public l()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->quatValue:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->square5Value:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object v0
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec2Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->vec3Value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->interpolateEvent:Z

    return v0
.end method

.method public t(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->arg:F

    return-void
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->colorValue:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->event:Ljava/lang/String;

    return-void
.end method

.method public w(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatValue"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->floatValue:F

    return-void
.end method

.method public x(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTime"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->frameTime:I

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageValue"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->imageValue:Ljava/lang/String;

    return-void
.end method

.method public z(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intValue"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->intValue:I

    return-void
.end method
