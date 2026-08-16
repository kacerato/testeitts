.class public LUa/u;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInSine"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInSine"

    const-string v1, "Ease In Sine"

    const-class v2, LUa/u;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInSine"

    const-string v1, "Ease In Sine"

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

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p1, v2

    return p1
.end method
