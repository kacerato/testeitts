.class public LUa/B;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseOutQuad"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseOutQuad"

    const-string v1, "Ease Out Quad"

    const-class v2, LUa/B;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseOutQuad"

    const-string v1, "Ease Out Quad"

    invoke-direct {p0, v0, v1}, LUa/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    mul-float/2addr p1, p1

    sub-float/2addr v0, p1

    return v0
.end method
