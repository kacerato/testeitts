.class public LUa/v;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseOutBack"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseOutBack"

    const-string v1, "Ease Out Back"

    const-class v2, LUa/v;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseOutBack"

    const-string v1, "Ease Out Back"

    invoke-direct {p0, v0, v1}, LUa/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const v1, 0x402ce6b0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    const v0, 0x3fd9cd60

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method
