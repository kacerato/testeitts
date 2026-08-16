.class public LSl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, LSl/a$a;->a:[B

    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 6

    iget v0, p0, LSl/a$a;->b:I

    iget-object v1, p0, LSl/a$a;->a:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, LSl/a;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, LSl/a$a;->a:[B

    :cond_0
    iget v0, p0, LSl/a$a;->b:I

    const/16 v1, 0x8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, LSl/a$a;->b:I

    iget-object v0, p0, LSl/a$a;->a:[B

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    iput v1, p0, LSl/a$a;->c:I

    goto :goto_0

    :cond_1
    iget v2, p0, LSl/a$a;->c:I

    if-ne v2, v1, :cond_2

    iget-object v1, p0, LSl/a$a;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LSl/a$a;->b:I

    aput-byte p1, v1, v0

    goto :goto_0

    :cond_2
    rsub-int/lit8 v1, v2, 0x8

    iget-object v3, p0, LSl/a$a;->a:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v3, v4

    and-int/lit16 p1, p1, 0xff

    shl-int v2, p1, v2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LSl/a$a;->b:I

    shr-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    :goto_0
    return-void
.end method

.method public b([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, LSl/a$a;->a(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, LSl/a$a;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d(I)I
    .locals 3

    iget v0, p0, LSl/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, LSl/a$a;->c:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    div-int/lit8 p1, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, LSl/a$a;->a:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    ushr-int/2addr v1, v0

    rsub-int/lit8 v0, v0, 0x8

    :goto_0
    add-int/lit8 p1, p1, 0x1

    iget v2, p0, LSl/a$a;->b:I

    if-ge p1, v2, :cond_0

    iget-object v2, p0, LSl/a$a;->a:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return v1
.end method

.method public e(I)LSl/a$a;
    .locals 5

    new-instance v0, LSl/a$a;

    invoke-direct {v0}, LSl/a$a;-><init>()V

    add-int/lit8 v1, p1, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    iput v1, v0, LSl/a$a;->b:I

    new-array v1, v1, [B

    iput-object v1, v0, LSl/a$a;->a:[B

    const/4 v1, 0x0

    :goto_0
    iget v3, v0, LSl/a$a;->b:I

    if-ge v1, v3, :cond_0

    iget-object v3, v0, LSl/a$a;->a:[B

    iget-object v4, p0, LSl/a$a;->a:[B

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rem-int/2addr p1, v2

    iput p1, v0, LSl/a$a;->c:I

    if-nez p1, :cond_1

    iput v2, v0, LSl/a$a;->c:I

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x20

    iget-object v1, v0, LSl/a$a;->a:[B

    add-int/lit8 v2, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v1, v3

    shl-int/2addr v3, p1

    ushr-int p1, v3, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    :goto_1
    return-object v0
.end method
