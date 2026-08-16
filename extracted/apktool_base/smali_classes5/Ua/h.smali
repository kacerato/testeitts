.class public LUa/h;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInOutBack"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInOutBack"

    const-string v1, "Ease In Out Back"

    const-class v2, LUa/h;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInOutBack"

    const-string v1, "Ease In Out Back"

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

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v2

    const v2, 0x402612ff

    const v3, 0x406612ff

    if-gez p1, :cond_0

    mul-float p1, v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    :goto_0
    div-float/2addr p1, v0

    return p1

    :cond_0
    sub-float/2addr v1, v0

    mul-float p1, v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    goto :goto_0
.end method
