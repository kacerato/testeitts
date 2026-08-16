.class public Ltn/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:F

.field public e:Lwn/u$a;

.field public f:Lwn/a;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:I

.field public p:Z

.field public q:F

.field public r:F

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(ZIIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "useTiles",
            "tileSizeX",
            "tileSizeZ",
            "cellSize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lwn/u$a;->WATERSHED:Lwn/u$a;

    iput-object v0, p0, Ltn/s;->e:Lwn/u$a;

    new-instance v0, Lwn/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lwn/a;-><init>(I)V

    iput-object v0, p0, Ltn/s;->f:Lwn/a;

    iput-boolean v1, p0, Ltn/s;->s:Z

    iput-boolean v1, p0, Ltn/s;->t:Z

    iput-boolean v1, p0, Ltn/s;->u:Z

    iput-boolean v1, p0, Ltn/s;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltn/s;->w:Z

    iput-boolean p1, p0, Ltn/s;->a:Z

    iput p2, p0, Ltn/s;->b:I

    iput p3, p0, Ltn/s;->c:I

    iput p4, p0, Ltn/s;->d:F

    return-void
.end method
