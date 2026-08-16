.class public Lcom/android/tools/r8/internal/o8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(ILcom/android/tools/r8/internal/q8;)V
    .locals 1

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 4
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 5
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    and-int/lit16 p0, p0, 0xff

    .line 6
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    return-void
.end method

.method public static a(JLcom/android/tools/r8/internal/q8;)V
    .locals 2

    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 7
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 8
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 9
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 10
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 11
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 12
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 13
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    .line 14
    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/q8;->a(I)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .line 2
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
