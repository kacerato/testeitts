.class public Ljn/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/I;


# instance fields
.field public final a:Ljn/A;

.field public final b:[F

.field public c:J

.field public d:[F

.field public e:Z

.field public f:F


# direct methods
.method public constructor <init>(Ljn/A;[F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "center"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn/j;->a:Ljn/A;

    iput-object p2, p0, Ljn/j;->b:[F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Ljn/j;->f:F

    const/4 p1, 0x0

    aget v0, p2, p1

    const/4 v1, 0x1

    aget v2, p2, v1

    const/4 v3, 0x2

    aget p2, p2, v3

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v0, v4, p1

    aput v2, v4, v1

    aput p2, v4, v3

    iput-object v4, p0, Ljn/j;->d:[F

    return-void
.end method


# virtual methods
.method public a(Ljn/s;Ljn/G;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "poly",
            "ref"
        }
    .end annotation

    iget-object p2, p0, Ljn/j;->a:Ljn/A;

    iget-object v0, p0, Ljn/j;->b:[F

    invoke-virtual {p2, p3, p4, v0}, Ljn/A;->d(J[F)Ljn/O;

    move-result-object p2

    iget-object v0, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/b;

    invoke-virtual {v0}, Ljn/b;->b()Z

    move-result v0

    iget-object p2, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p2, Ljn/b;

    invoke-virtual {p2}, Ljn/b;->a()[F

    move-result-object p2

    iget-object v1, p0, Ljn/j;->b:[F

    invoke-static {v1, p2}, Ljn/g;->W([F[F)[F

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object p1, p1, Ljn/s;->c:Ljn/q;

    iget-object p1, p1, Ljn/q;->a:Ljn/r;

    iget p1, p1, Ljn/r;->r:F

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    mul-float p1, v1, v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljn/g;->L([F)F

    move-result p1

    :cond_1
    :goto_0
    iget v1, p0, Ljn/j;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iput-object p2, p0, Ljn/j;->d:[F

    iput p1, p0, Ljn/j;->f:F

    iput-wide p3, p0, Ljn/j;->c:J

    iput-boolean v0, p0, Ljn/j;->e:Z

    :cond_2
    return-void
.end method

.method public b()Ljn/k;
    .locals 5

    new-instance v0, Ljn/k;

    iget-wide v1, p0, Ljn/j;->c:J

    iget-object v3, p0, Ljn/j;->d:[F

    iget-boolean v4, p0, Ljn/j;->e:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljn/k;-><init>(J[FZ)V

    return-object v0
.end method
