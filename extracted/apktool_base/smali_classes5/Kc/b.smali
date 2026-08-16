.class public LKc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[S


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [S

    iput-object p1, p0, LKc/b;->a:[S

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatArray"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, LKc/b;->a:[S

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, LKc/b;->a:[S

    aget v2, p1, v0

    invoke-static {v2}, LKc/a;->c(F)S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(LKc/b;)LKc/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKc/b;->b(LKc/b;)V

    new-instance v0, LKc/b;

    invoke-virtual {p0}, LKc/b;->i()I

    move-result v1

    invoke-direct {v0, v1}, LKc/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LKc/b;->a:[S

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, LKc/b;->c(I)F

    move-result v2

    invoke-virtual {p1, v1}, LKc/b;->c(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, LKc/b;->g(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(LKc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0}, LKc/b;->i()I

    move-result v0

    invoke-virtual {p1}, LKc/b;->i()I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arrays must be of the same size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LKc/b;->a:[S

    aget-short p1, v0, p1

    invoke-static {p1}, LKc/a;->f(S)F

    move-result p1

    return p1
.end method

.method public d(I)S
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LKc/b;->a:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public e()[S
    .locals 1

    iget-object v0, p0, LKc/b;->a:[S

    return-object v0
.end method

.method public f(LKc/b;)LKc/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKc/b;->b(LKc/b;)V

    new-instance v0, LKc/b;

    invoke-virtual {p0}, LKc/b;->i()I

    move-result v1

    invoke-direct {v0, v1}, LKc/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LKc/b;->a:[S

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, LKc/b;->c(I)F

    move-result v2

    invoke-virtual {p1, v1}, LKc/b;->c(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, LKc/b;->g(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public g(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, LKc/b;->a:[S

    invoke-static {p2}, LKc/a;->c(F)S

    move-result p2

    aput-short p2, v0, p1

    return-void
.end method

.method public h(IS)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "bits"
        }
    .end annotation

    iget-object v0, p0, LKc/b;->a:[S

    aput-short p2, v0, p1

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LKc/b;->a:[S

    array-length v0, v0

    return v0
.end method
