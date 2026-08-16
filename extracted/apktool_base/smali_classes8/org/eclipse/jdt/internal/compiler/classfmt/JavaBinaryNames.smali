.class public Lorg/eclipse/jdt/internal/compiler/classfmt/JavaBinaryNames;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isClinit([C)Z
    .locals 3

    const/4 v0, 0x0

    aget-char v1, p0, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    array-length p0, p0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isConstructor([C)Z
    .locals 3

    const/4 v0, 0x0

    aget-char v1, p0, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    array-length p0, p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
