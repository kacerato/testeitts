.class public Lmk/V0$a;
.super Ljk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmk/V0;->g([Ljk/i;II)Ljk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[J

.field public final synthetic c:Lmk/V0;


# direct methods
.method public constructor <init>(Lmk/V0;I[J)V
    .locals 0

    iput-object p1, p0, Lmk/V0$a;->c:Lmk/V0;

    iput p2, p0, Lmk/V0$a;->a:I

    iput-object p3, p0, Lmk/V0$a;->b:[J

    invoke-direct {p0}, Ljk/a;-><init>()V

    return-void
.end method

.method private c([J[J)Ljk/i;
    .locals 2

    iget-object v0, p0, Lmk/V0$a;->c:Lmk/V0;

    new-instance v1, Lmk/S0;

    invoke-direct {v1, p1}, Lmk/S0;-><init>([J)V

    new-instance p1, Lmk/S0;

    invoke-direct {p1, p2}, Lmk/S0;-><init>([J)V

    invoke-static {}, Lmk/V0;->R()[Ljk/f;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lmk/V0;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)Ljk/i;
    .locals 13

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v0

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lmk/V0$a;->a:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    move v7, v2

    :goto_1
    const/16 v8, 0x9

    if-ge v7, v8, :cond_0

    aget-wide v8, v0, v7

    iget-object v10, p0, Lmk/V0$a;->b:[J

    add-int v11, v4, v7

    aget-wide v11, v10, v11

    and-long/2addr v11, v5

    xor-long/2addr v8, v11

    aput-wide v8, v0, v7

    aget-wide v8, v1, v7

    add-int/lit8 v11, v4, 0x9

    add-int/2addr v11, v7

    aget-wide v11, v10, v11

    and-long v10, v11, v5

    xor-long/2addr v8, v10

    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x12

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lmk/V0$a;->c([J[J)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljk/i;
    .locals 7

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v0

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v1

    mul-int/lit8 p1, p1, 0x12

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lmk/V0$a;->b:[J

    add-int v5, p1, v2

    aget-wide v5, v4, v5

    aput-wide v5, v0, v2

    add-int/2addr v3, p1

    add-int/2addr v3, v2

    aget-wide v3, v4, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lmk/V0$a;->c([J[J)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lmk/V0$a;->a:I

    return v0
.end method
