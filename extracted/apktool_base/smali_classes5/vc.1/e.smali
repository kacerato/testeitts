.class public Lvc/e;
.super Lvc/k;
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
    invoke-direct {p0, p1, p2, v0}, Lvc/e;-><init>(IIZ)V

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
    invoke-direct {p0, v0}, Lvc/k;-><init>(I)V

    .line 3
    iput p1, p0, Lvc/e;->c:I

    .line 4
    iput p2, p0, Lvc/e;->d:I

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-super {p0}, Lvc/k;->a()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p2, 0x0

    .line 6
    invoke-super {p0, p2}, Lvc/k;->k(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "countX",
            "countY"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lvc/k;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p1

    mul-int v0, p2, p3

    if-lt p1, v0, :cond_0

    .line 9
    iput p2, p0, Lvc/e;->c:I

    .line 10
    iput p3, p0, Lvc/e;->d:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer capacity is smaller than countX * countY"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "countX and countY must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(IIF)V
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

    invoke-virtual {p0, p1, p2}, Lvc/e;->u(II)I

    move-result p1

    invoke-super {p0, p1, p3}, Lvc/k;->p(IF)V

    return-void
.end method

.method public B(IIF)V
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

    invoke-virtual {p0, p1, p2}, Lvc/e;->v(II)I

    move-result p1

    invoke-super {p0, p1, p3}, Lvc/k;->p(IF)V

    return-void
.end method

.method public final u(II)I
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

    iget v0, p0, Lvc/e;->c:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lvc/e;->d:I

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

.method public final v(II)I
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

    iget v0, p0, Lvc/e;->d:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public w(II)F
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

    invoke-virtual {p0, p1, p2}, Lvc/e;->u(II)I

    move-result p1

    invoke-super {p0, p1}, Lvc/k;->f(I)F

    move-result p1

    return p1
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lvc/e;->c:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lvc/e;->d:I

    return v0
.end method

.method public z(II)F
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

    invoke-virtual {p0, p1, p2}, Lvc/e;->v(II)I

    move-result p1

    invoke-super {p0, p1}, Lvc/k;->f(I)F

    move-result p1

    return p1
.end method
