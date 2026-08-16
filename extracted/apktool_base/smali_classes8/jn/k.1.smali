.class public Ljn/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:[F

.field public final c:Z


# direct methods
.method public constructor <init>(J[FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nearestRef",
            "nearestPos",
            "overPoly"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljn/k;->a:J

    iput-object p3, p0, Ljn/k;->b:[F

    iput-boolean p4, p0, Ljn/k;->c:Z

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 1

    iget-object v0, p0, Ljn/k;->b:[F

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Ljn/k;->a:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Ljn/k;->c:Z

    return v0
.end method
