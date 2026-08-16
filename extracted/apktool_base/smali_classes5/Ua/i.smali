.class public LUa/i;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInOutBounce"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInOutBounce"

    const-string v1, "Ease In Out Bounce"

    const-class v2, LUa/i;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInOutBounce"

    const-string v1, "Ease In Out Bounce"

    invoke-direct {p0, v0, v1}, LUa/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private I0(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40f20000    # 7.5625f

    if-gez v0, :cond_0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    add-float/2addr v1, p1

    return v1

    :cond_1
    const v0, 0x3f68ba2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    add-float/2addr v1, p1

    return v1

    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    add-float/2addr v1, p1

    return v1
.end method


# virtual methods
.method public G0(F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    mul-float/2addr p1, v1

    sub-float p1, v2, p1

    invoke-direct {p0, p1}, LUa/i;->I0(F)F

    move-result p1

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2

    :cond_0
    mul-float/2addr p1, v1

    sub-float/2addr p1, v2

    invoke-direct {p0, p1}, LUa/i;->I0(F)F

    move-result p1

    add-float/2addr p1, v2

    div-float/2addr p1, v1

    return p1
.end method
