.class public Lwn/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[F

.field public final d:[F

.field public final e:F

.field public final f:F

.field public final g:[Lwn/K;

.field public final h:I


# direct methods
.method public constructor <init>(II[F[FFFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "bmin",
            "bmax",
            "cs",
            "ch",
            "borderSize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwn/h;->a:I

    iput p2, p0, Lwn/h;->b:I

    iput-object p3, p0, Lwn/h;->c:[F

    iput-object p4, p0, Lwn/h;->d:[F

    iput p5, p0, Lwn/h;->e:F

    iput p6, p0, Lwn/h;->f:F

    iput p7, p0, Lwn/h;->h:I

    mul-int/2addr p1, p2

    new-array p1, p1, [Lwn/K;

    iput-object p1, p0, Lwn/h;->g:[Lwn/K;

    return-void
.end method
