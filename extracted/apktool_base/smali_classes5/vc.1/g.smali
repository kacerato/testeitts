.class public Lvc/g;
.super Lvc/k;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countX",
            "countY",
            "countZ"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lvc/g;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "countX",
            "countY",
            "countZ",
            "fill"
        }
    .end annotation

    mul-int v0, p3, p2

    mul-int/2addr v0, p1

    .line 2
    invoke-direct {p0, v0}, Lvc/k;-><init>(I)V

    .line 3
    iput p1, p0, Lvc/g;->c:I

    .line 4
    iput p2, p0, Lvc/g;->d:I

    .line 5
    iput p3, p0, Lvc/g;->e:I

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-super {p0}, Lvc/k;->a()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p2, 0x0

    .line 7
    invoke-super {p0, p2}, Lvc/k;->k(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final u(III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    iget v0, p0, Lvc/g;->c:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lvc/g;->d:I

    if-ge p2, v0, :cond_0

    iget v1, p0, Lvc/g;->e:I

    if-ge p3, v1, :cond_0

    mul-int/2addr p1, v0

    mul-int/2addr p1, v1

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public v(III)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvc/g;->u(III)I

    move-result p1

    invoke-super {p0, p1}, Lvc/k;->f(I)F

    move-result p1

    return p1
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lvc/g;->c:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lvc/g;->d:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lvc/g;->e:I

    return v0
.end method

.method public z(IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvc/g;->u(III)I

    move-result p1

    invoke-super {p0, p1, p4}, Lvc/k;->p(IF)V

    return-void
.end method
