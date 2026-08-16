.class public final Lcom/android/tools/r8/internal/XQ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:Lcom/android/tools/r8/internal/XQ;


# instance fields
.field public a:Lcom/android/tools/r8/internal/YQ;

.field public b:S

.field public c:S

.field public d:[I

.field public e:I

.field public f:[I

.field public g:S

.field public h:S

.field public i:S

.field public j:S

.field public k:Lcom/android/tools/r8/internal/gy;

.field public l:Lcom/android/tools/r8/internal/XQ;

.field public m:Lcom/android/tools/r8/internal/At;

.field public n:Lcom/android/tools/r8/internal/XQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/XQ;->o:Lcom/android/tools/r8/internal/XQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 6

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/XQ;->f:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 9
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/XQ;->f:[I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/XQ;->f:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v4, v3, 0x2

    .line 11
    array-length v5, v0

    if-lt v4, v5, :cond_1

    .line 12
    array-length v5, v0

    add-int/2addr v5, v1

    new-array v1, v5, [I

    .line 13
    array-length v5, v0

    invoke-static {v0, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-object v1, p0, Lcom/android/tools/r8/internal/XQ;->f:[I

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/XQ;->f:[I

    add-int/lit8 v3, v3, 0x1

    aput p1, v0, v3

    or-int p1, p2, p3

    .line 16
    aput p1, v0, v4

    .line 17
    aput v4, v0, v2

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/p8;IZ)V
    .locals 2

    .line 1
    iget-short v0, p0, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    .line 2
    iget p3, p1, Lcom/android/tools/r8/internal/p8;->b:I

    const/high16 v1, 0x20000000

    invoke-virtual {p0, p2, v1, p3}, Lcom/android/tools/r8/internal/XQ;->a(III)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 4
    :cond_0
    iget p3, p1, Lcom/android/tools/r8/internal/p8;->b:I

    const/high16 v1, 0x10000000

    invoke-virtual {p0, p2, v1, p3}, Lcom/android/tools/r8/internal/XQ;->a(III)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    iget p3, p0, Lcom/android/tools/r8/internal/XQ;->e:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    return-void

    .line 7
    :cond_2
    iget p3, p0, Lcom/android/tools/r8/internal/XQ;->e:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    return-void
.end method

.method public final a([BLcom/android/tools/r8/internal/p8;I)Z
    .locals 7

    .line 18
    iget-short v0, p0, Lcom/android/tools/r8/internal/XQ;->b:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/tools/r8/internal/XQ;->b:S

    .line 19
    iput p3, p0, Lcom/android/tools/r8/internal/XQ;->e:I

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/XQ;->f:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 21
    :cond_0
    aget v0, v0, v1

    :goto_0
    if-lez v0, :cond_6

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/XQ;->f:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    .line 23
    aget v2, v2, v0

    sub-int v4, p3, v3

    const v5, 0xfffffff

    and-int/2addr v5, v2

    const/high16 v6, -0x10000000

    and-int/2addr v2, v6

    const/high16 v6, 0x10000000

    if-ne v2, v6, :cond_4

    const/16 v2, -0x8000

    if-lt v4, v2, :cond_1

    const/16 v2, 0x7fff

    if-le v4, v2, :cond_3

    .line 24
    :cond_1
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc6

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    .line 25
    aput-byte v1, p1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    .line 26
    aput-byte v1, p1, v3

    :goto_1
    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    .line 27
    aput-byte v3, p1, v5

    int-to-byte v3, v4

    .line 28
    aput-byte v3, p1, v2

    goto :goto_2

    :cond_4
    const/high16 v3, 0x20000000

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x18

    int-to-byte v3, v3

    .line 29
    aput-byte v3, p1, v5

    add-int/lit8 v3, v5, 0x2

    ushr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    .line 30
    aput-byte v6, p1, v2

    add-int/lit8 v5, v5, 0x3

    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    .line 31
    aput-byte v2, p1, v3

    int-to-byte v2, v4

    .line 32
    aput-byte v2, p1, v5

    goto :goto_2

    .line 33
    :cond_5
    iget-object v2, p2, Lcom/android/tools/r8/internal/p8;->a:[B

    add-int/lit8 v3, v5, 0x1

    ushr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    int-to-byte v4, p3

    .line 34
    aput-byte v4, v2, v3

    :goto_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_6
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "L"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
