.class public LUa/r;
.super LUa/a;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "EaseInQuad"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EaseInQuad"

    const-string v1, "Ease In Quad"

    const-class v2, LUa/r;

    invoke-static {v2, v0, v1}, LUa/a;->H0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EaseInQuad"

    const-string v1, "Ease In Quad"

    invoke-direct {p0, v0, v1}, LUa/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    mul-float/2addr p1, p1

    return p1
.end method
