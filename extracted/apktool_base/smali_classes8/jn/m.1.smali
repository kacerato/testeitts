.class public Ljn/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:[F


# direct methods
.method public constructor <init>(J[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "randomRef",
            "randomPt"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljn/m;->a:J

    iput-object p3, p0, Ljn/m;->b:[F

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 1

    iget-object v0, p0, Ljn/m;->b:[F

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Ljn/m;->a:J

    return-wide v0
.end method
