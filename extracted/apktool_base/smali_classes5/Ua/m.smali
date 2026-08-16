.class public LUa/m;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInOutExpo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInOutExpo"

    const-string v1, "Ease In Out Expo"

    const-class v2, LUa/m;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInOutExpo"

    const-string v1, "Ease In Out Expo"

    invoke-direct {p0, v0, v1}, LUa/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_2

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p1, v0

    sub-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x3e600000    # -20.0f

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    div-double/2addr v0, v2

    double-to-float p1, v0

    :goto_0
    return p1
.end method
