.class public LUa/p;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInOutQuint"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInOutQuint"

    const-string v1, "Ease In Out Quint"

    const-class v2, LUa/p;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInOutQuint"

    const-string v1, "Ease In Out Quint"

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

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    :goto_0
    return v0
.end method
