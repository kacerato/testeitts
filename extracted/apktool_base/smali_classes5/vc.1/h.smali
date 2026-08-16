.class public Lvc/h;
.super Lvc/l;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:LJAVARuntime/OH3LevelIntArray;


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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lvc/h;-><init>(IIIZ)V

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
    invoke-direct {p0, v0}, Lvc/l;-><init>(I)V

    .line 3
    iput p1, p0, Lvc/h;->c:I

    .line 4
    iput p2, p0, Lvc/h;->d:I

    .line 5
    iput p3, p0, Lvc/h;->e:I

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-super {p0, p1}, Lvc/l;->d(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()LJAVARuntime/OH3LevelIntArray;
    .locals 1

    iget-object v0, p0, Lvc/h;->f:LJAVARuntime/OH3LevelIntArray;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/OH3LevelIntArray;

    invoke-direct {v0, p0}, LJAVARuntime/OH3LevelIntArray;-><init>(Lvc/h;)V

    iput-object v0, p0, Lvc/h;->f:LJAVARuntime/OH3LevelIntArray;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic s()LJAVARuntime/OHIntDataBase;
    .locals 1

    invoke-virtual {p0}, Lvc/h;->A()LJAVARuntime/OH3LevelIntArray;

    move-result-object v0

    return-object v0
.end method

.method public final t(III)I
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

    iget v0, p0, Lvc/h;->c:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lvc/h;->d:I

    if-ge p2, v0, :cond_0

    iget v1, p0, Lvc/h;->e:I

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

.method public u(III)I
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

    invoke-virtual {p0, p1, p2, p3}, Lvc/h;->t(III)I

    move-result p1

    invoke-super {p0, p1}, Lvc/l;->e(I)I

    move-result p1

    return p1
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lvc/h;->c:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lvc/h;->d:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lvc/h;->e:I

    return v0
.end method

.method public y(IIII)V
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

    invoke-virtual {p0, p1, p2, p3}, Lvc/h;->t(III)I

    move-result p1

    invoke-super {p0, p1, p4}, Lvc/l;->o(II)V

    return-void
.end method

.method public z(LJAVARuntime/OH3LevelIntArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lvc/h;->f:LJAVARuntime/OH3LevelIntArray;

    return-void
.end method
