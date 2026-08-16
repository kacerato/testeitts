.class public Ljn/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:[F

.field public final c:[F


# direct methods
.method public constructor <init>(F[F[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "distance",
            "position",
            "normal"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljn/h;->a:F

    iput-object p2, p0, Ljn/h;->b:[F

    iput-object p3, p0, Ljn/h;->c:[F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Ljn/h;->a:F

    return v0
.end method

.method public b()[F
    .locals 1

    iget-object v0, p0, Ljn/h;->c:[F

    return-object v0
.end method

.method public c()[F
    .locals 1

    iget-object v0, p0, Ljn/h;->b:[F

    return-object v0
.end method
