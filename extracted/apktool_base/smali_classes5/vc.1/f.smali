.class public Lvc/f;
.super Lvc/l;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "countX",
            "countY"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lvc/f;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
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
            "fill"
        }
    .end annotation

    mul-int v0, p2, p1

    .line 2
    invoke-direct {p0, v0}, Lvc/l;-><init>(I)V

    .line 3
    iput p1, p0, Lvc/f;->c:I

    .line 4
    iput p2, p0, Lvc/f;->d:I

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    move p2, p1

    .line 5
    :goto_0
    invoke-super {p0}, Lvc/l;->a()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 6
    invoke-super {p0, p1}, Lvc/l;->j(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final t(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lvc/f;->c:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lvc/f;->d:I

    if-ge p2, v0, :cond_0

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

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

.method public u(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lvc/f;->t(II)I

    move-result p1

    invoke-super {p0, p1}, Lvc/l;->e(I)I

    move-result p1

    return p1
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lvc/f;->c:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lvc/f;->d:I

    return v0
.end method

.method public x(III)V
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
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lvc/f;->t(II)I

    move-result p1

    invoke-super {p0, p1, p3}, Lvc/l;->o(II)V

    return-void
.end method
