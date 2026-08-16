.class public Lnn/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnn/i;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnn/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lnn/u;

.field public final d:[F

.field public final e:[F

.field public final f:[F


# direct methods
.method public constructor <init>(Lnn/c;Lnn/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "edge",
            "trajectory"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnn/i;

    invoke-direct {v0}, Lnn/i;-><init>()V

    iput-object v0, p0, Lnn/e;->a:Lnn/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnn/e;->b:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lnn/e;->d:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lnn/e;->e:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lnn/e;->f:[F

    iput-object p2, p0, Lnn/e;->c:Lnn/u;

    iget-object p2, p1, Lnn/c;->b:[F

    iget-object p1, p1, Lnn/c;->a:[F

    invoke-static {p2, p1}, Ljn/g;->W([F[F)[F

    move-result-object p1

    invoke-static {v1, p1}, Ljn/g;->w([F[F)V

    invoke-static {v1}, Ljn/g;->R([F)V

    const/4 p1, 0x2

    aget p1, v1, p1

    const/4 p2, 0x0

    aget p2, v1, p2

    neg-float p2, p2

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Ljn/g;->U([FFFF)V

    invoke-static {v0}, Ljn/g;->R([F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v2, v1, p1, v1}, Ljn/g;->U([FFFF)V

    return-void
.end method
