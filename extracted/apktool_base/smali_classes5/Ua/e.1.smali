.class public LUa/e;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInCubic"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInCubic"

    const-string v1, "Ease In Cubic"

    const-class v2, LUa/e;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInCubic"

    const-string v1, "Ease In Cubic"

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

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method
