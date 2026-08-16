.class public Ljn/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/M;


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x3f7fbe77    # 0.999f

    .line 1
    invoke-direct {p0, v0}, Ljn/e;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ljn/e;->a:F

    return-void
.end method


# virtual methods
.method public a([F[F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "neighbourPos",
            "endPos"
        }
    .end annotation

    invoke-static {p1, p2}, Ljn/g;->z([F[F)F

    move-result p1

    iget p2, p0, Ljn/e;->a:F

    mul-float/2addr p1, p2

    return p1
.end method
