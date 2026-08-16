.class public final Lcom/android/tools/r8/internal/K5;
.super Lcom/android/tools/r8/internal/M5;
.source "SourceFile"


# instance fields
.field public final d:[C


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/J5;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/M5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/tools/r8/internal/K5;->d:[C

    iget-object v0, p1, Lcom/android/tools/r8/internal/J5;->b:[C

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/K5;->d:[C

    ushr-int/lit8 v2, v0, 0x4

    iget-object v3, p1, Lcom/android/tools/r8/internal/J5;->b:[C

    aget-char v2, v3, v2

    aput-char v2, v1, v0

    or-int/lit16 v2, v0, 0x100

    and-int/lit8 v4, v0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/J5;)Lcom/android/tools/r8/internal/N5;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/K5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/K5;-><init>(Lcom/android/tools/r8/internal/J5;)V

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;[BI)V
    .locals 3

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcom/android/tools/r8/internal/U60;->a(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    .line 2
    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xff

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/K5;->d:[C

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/K5;->d:[C

    or-int/lit16 v0, v0, 0x100

    aget-char v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
