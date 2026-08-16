.class public Lxd/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = -0x1


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lxd/h;->a:I

    iput v0, p0, Lxd/h;->b:I

    iput v0, p0, Lxd/h;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lxd/h;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lxd/h;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lxd/h;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxd/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lxd/h;

    iget v1, p0, Lxd/h;->a:I

    iget v3, p1, Lxd/h;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lxd/h;->c:I

    iget v3, p1, Lxd/h;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lxd/h;->b:I

    iget p1, p1, Lxd/h;->b:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lxd/h;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lxd/h;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lxd/h;->b:I

    add-int/2addr v0, v1

    return v0
.end method
