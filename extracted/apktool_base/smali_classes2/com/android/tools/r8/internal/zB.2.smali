.class public abstract Lcom/android/tools/r8/internal/zB;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Z
    .locals 2

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_9

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_9

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_9

    :cond_2
    const/16 v0, 0x24

    if-eq p0, v0, :cond_9

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_9

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_9

    const/16 v0, 0xa1

    if-gt v0, p0, :cond_3

    const/16 v0, 0x1fff

    if-le p0, v0, :cond_9

    :cond_3
    const/16 v0, 0x2010

    if-gt v0, p0, :cond_4

    const/16 v0, 0x2027

    if-le p0, v0, :cond_9

    :cond_4
    const/16 v0, 0x2030

    if-gt v0, p0, :cond_5

    const v0, 0xd7ff

    if-le p0, v0, :cond_9

    :cond_5
    const v0, 0xe000

    const v1, 0xfeff

    if-gt v0, p0, :cond_6

    if-lt p0, v1, :cond_9

    :cond_6
    if-ge v1, p0, :cond_7

    const v0, 0xffef

    if-le p0, v0, :cond_9

    :cond_7
    const/high16 v0, 0x10000

    if-gt v0, p0, :cond_8

    const v0, 0x10ffff

    if-gt p0, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x202f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
