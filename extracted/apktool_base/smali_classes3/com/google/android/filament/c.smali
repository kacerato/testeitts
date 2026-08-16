.class public final Lcom/google/android/filament/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([D)[D
    .locals 2
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x2L
    .end annotation

    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-array p0, v0, [D

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 2"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([D)[D
    .locals 2
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-nez p0, :cond_0

    new-array p0, v0, [D

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 4"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([D)V
    .locals 1
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length p0, p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 4"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d([F)[F
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x2L
    .end annotation

    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-array p0, v0, [F

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 2"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e([F)[F
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    const/4 v0, 0x3

    if-nez p0, :cond_0

    new-array p0, v0, [F

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 3"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f([F)V
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length p0, p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 3"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g([F)[F
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x4L
    .end annotation

    const/4 v0, 0x4

    if-nez p0, :cond_0

    new-array p0, v0, [F

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 4"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h([F)V
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length p0, p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 4"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i([F)[F
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x9L
    .end annotation

    const/16 v0, 0x9

    if-nez p0, :cond_0

    new-array p0, v0, [F

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 9"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j([F)V
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x9L
        .end annotation
    .end param

    array-length p0, p0

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 9"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k([D)[D
    .locals 2
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    const/16 v0, 0x10

    if-nez p0, :cond_0

    new-array p0, v0, [D

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 16"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l([D)V
    .locals 1
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    array-length p0, p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 16"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m([D)[D
    .locals 2
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    const/16 v0, 0x10

    if-nez p0, :cond_0

    new-array p0, v0, [D

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 16"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n([D)V
    .locals 1
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    array-length p0, p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 16"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o([F)[F
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    const/16 v0, 0x10

    if-nez p0, :cond_0

    new-array p0, v0, [F

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-lt v1, v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 16"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p([F)V
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    array-length p0, p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Array length must be at least 16"

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
