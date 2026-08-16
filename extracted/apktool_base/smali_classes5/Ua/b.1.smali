.class public LUa/b;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInBack"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInBack"

    const-string v1, "Ease In Back"

    const-class v2, LUa/b;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInBack"

    const-string v1, "Ease In Back"

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

    const v0, 0x402ce6b0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const v1, 0x3fd9cd60

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method
