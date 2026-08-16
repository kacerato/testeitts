.class public final LXg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXg/i;


# instance fields
.field public final a:[F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, LXg/c;-><init>([F)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
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

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-direct {p0, v0}, LXg/c;-><init>([F)V

    return-void
.end method

.method public constructor <init>(FFF)V
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

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-direct {p0, v0}, LXg/c;-><init>([F)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
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
            "w"
        }
    .end annotation

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    invoke-direct {p0, v0}, LXg/c;-><init>([F)V

    return-void
.end method

.method public constructor <init>(LXg/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7
    invoke-static {p1}, LXg/c;->a(LXg/i;)[F

    move-result-object p1

    invoke-direct {p0, p1}, LXg/c;-><init>([F)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LXg/c;->a:[F

    return-void
.end method

.method public static a(LXg/i;)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    instance-of v0, p0, LXg/c;

    if-eqz v0, :cond_0

    check-cast p0, LXg/c;

    iget-object p0, p0, LXg/c;->a:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0

    :cond_0
    invoke-interface {p0}, LXg/i;->getDimensions()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, LXg/i;->get(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    return-void
.end method

.method public c(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public d(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public e(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, LXg/c;

    if-eqz v2, :cond_2

    check-cast p1, LXg/c;

    iget-object v0, p0, LXg/c;->a:[F

    iget-object p1, p1, LXg/c;->a:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_2
    instance-of v2, p1, LXg/i;

    if-eqz v2, :cond_6

    check-cast p1, LXg/i;

    invoke-interface {p1}, LXg/i;->getDimensions()I

    move-result v2

    invoke-virtual {p0}, LXg/c;->getDimensions()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, LXg/c;->getDimensions()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, LXg/c;->get(I)F

    move-result v3

    invoke-interface {p1, v2}, LXg/i;->get(I)F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    return v1
.end method

.method public get(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LXg/c;->a:[F

    aget p1, v0, p1

    return p1
.end method

.method public getDimensions()I
    .locals 1

    iget-object v0, p0, LXg/c;->a:[F

    array-length v0, v0

    return v0
.end method

.method public getW()F
    .locals 2

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getX()F
    .locals 2

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getZ()F
    .locals 2

    iget-object v0, p0, LXg/c;->a:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LXg/c;->a:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, LXg/c;->getDimensions()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, LXg/c;->get(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LXg/c;->getDimensions()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
