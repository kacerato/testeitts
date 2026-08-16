.class public LXg/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXg/q;)LXg/f;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    invoke-interface {p0}, LXg/q;->a()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, LXg/q;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, LXg/q;->f(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LXg/q;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p0}, LXg/q;->a()I

    move-result v2

    new-array v2, v2, [I

    move v4, v1

    :goto_1
    invoke-interface {p0}, LXg/q;->a()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {p0, v4}, LXg/q;->e(I)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    invoke-interface {p0}, LXg/q;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, LXg/q;->a()I

    move-result v3

    new-array v3, v3, [I

    :goto_2
    invoke-interface {p0}, LXg/q;->a()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-interface {p0, v1}, LXg/q;->c(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, LXg/f;

    invoke-direct {p0, v0, v2, v3}, LXg/f;-><init>([I[I[I)V

    return-object p0
.end method

.method public static varargs b(LXg/q;[I)LXg/f;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "face",
            "n"
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    invoke-interface {p0, v3}, LXg/q;->f(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LXg/q;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    array-length v2, p1

    new-array v2, v2, [I

    move v4, v1

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget v5, p1, v4

    invoke-interface {p0, v5}, LXg/q;->e(I)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    invoke-interface {p0}, LXg/q;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v3, p1

    new-array v3, v3, [I

    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_3

    aget v4, p1, v1

    invoke-interface {p0, v4}, LXg/q;->c(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, LXg/f;

    invoke-direct {p0, v0, v2, v3}, LXg/f;-><init>([I[I[I)V

    return-object p0
.end method

.method public static c([I[I[I)LXg/q;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "vt",
            "vn"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LXg/s;->d([I[I[I)LXg/f;

    move-result-object p0

    return-object p0
.end method

.method public static d([I[I[I)LXg/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "vt",
            "vn"
        }
    .end annotation

    new-instance v0, LXg/f;

    invoke-direct {v0, p0, p1, p2}, LXg/f;-><init>([I[I[I)V

    return-object v0
.end method

.method public static e(LXg/q;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, LXg/q;->a()I

    move-result v2

    if-ge v1, v2, :cond_5

    if-lez v1, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0, v1}, LXg/q;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/q;->d()Z

    move-result v2

    const-string v3, "/"

    if-nez v2, :cond_1

    invoke-interface {p0}, LXg/q;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p0}, LXg/q;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, LXg/q;->e(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {p0}, LXg/q;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, LXg/q;->c(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(LXg/q;III)LXg/f;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "face",
            "verticesOffset",
            "texCoordsOffset",
            "normalsOffset"
        }
    .end annotation

    invoke-interface {p0}, LXg/q;->a()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, LXg/q;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, LXg/q;->f(I)I

    move-result v3

    add-int/2addr v3, p1

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LXg/q;->d()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p0}, LXg/q;->a()I

    move-result p1

    new-array p1, p1, [I

    move v3, v1

    :goto_1
    invoke-interface {p0}, LXg/q;->a()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p0, v3}, LXg/q;->e(I)I

    move-result v4

    add-int/2addr v4, p2

    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :cond_2
    invoke-interface {p0}, LXg/q;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, LXg/q;->a()I

    move-result p2

    new-array v2, p2, [I

    :goto_2
    invoke-interface {p0}, LXg/q;->a()I

    move-result p2

    if-ge v1, p2, :cond_3

    invoke-interface {p0, v1}, LXg/q;->c(I)I

    move-result p2

    add-int/2addr p2, p3

    aput p2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, LXg/f;

    invoke-direct {p0, v0, p1, v2}, LXg/f;-><init>([I[I[I)V

    return-object p0
.end method
