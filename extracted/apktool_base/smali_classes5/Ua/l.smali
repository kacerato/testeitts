.class public LUa/l;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInOutElastic"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInOutElastic"

    const-string v1, "Ease In Out Elastic"

    const-class v2, LUa/l;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInOutElastic"

    const-string v1, "Ease In Out Elastic"

    invoke-direct {p0, v0, v1}, LUa/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 11
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

    const-wide v1, 0x3ff6571840000000L    # 1.3962633609771729

    const-wide v3, 0x4026400000000000L    # 11.125

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_2

    mul-float/2addr p1, v6

    sub-float v0, p1, v5

    float-to-double v5, v0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    neg-double v5, v5

    float-to-double v9, p1

    sub-double/2addr v9, v3

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    div-double/2addr v5, v7

    double-to-float p1, v5

    return p1

    :cond_2
    const/high16 v0, -0x3e600000    # -20.0f

    mul-float/2addr v0, p1

    add-float/2addr v0, v5

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-float/2addr p1, v6

    float-to-double v5, p1

    sub-double/2addr v5, v3

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v9, v0

    div-double/2addr v9, v7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v0

    double-to-float p1, v9

    return p1
.end method
