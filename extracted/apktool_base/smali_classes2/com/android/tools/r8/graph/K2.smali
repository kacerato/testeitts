.class public final Lcom/android/tools/r8/graph/K2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:I

.field public final synthetic b:Lcom/android/tools/r8/graph/L2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/L2;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/graph/K2;->b:Lcom/android/tools/r8/graph/L2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/K2;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/K2;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/K2;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()C
    .locals 7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/graph/K2;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    iget v1, p0, Lcom/android/tools/r8/graph/K2;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/graph/K2;->a:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    sget-boolean v4, Lcom/android/tools/r8/graph/K2;->c:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/16 v4, 0x80

    if-ge v3, v4, :cond_2

    return v3

    :cond_2
    and-int/lit16 v5, v3, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_4

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/tools/r8/graph/K2;->a:I

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0xc0

    if-ne v2, v4, :cond_3

    and-int/lit8 v1, v3, 0x1f

    shl-int/lit8 v1, v1, 0x6

    :goto_1
    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :cond_3
    invoke-static {v3, v1}, Lcom/android/tools/r8/graph/L2;->e(II)Ljava/io/UTFDataFormatException;

    move-result-object v0

    throw v0

    :cond_4
    and-int/lit16 v5, v3, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v1, 0x2

    iput v5, p0, Lcom/android/tools/r8/graph/K2;->a:I

    aget-byte v2, v0, v2

    and-int/lit16 v6, v2, 0xff

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/tools/r8/graph/K2;->a:I

    aget-byte v0, v0, v5

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v5, v2, 0xc0

    if-ne v5, v4, :cond_5

    and-int/lit16 v5, v0, 0xc0

    if-ne v5, v4, :cond_5

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    goto :goto_1

    :cond_5
    invoke-static {v3, v6, v1}, Lcom/android/tools/r8/graph/L2;->a(III)Ljava/io/UTFDataFormatException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-static {v3}, Lcom/android/tools/r8/graph/L2;->k(I)Ljava/io/UTFDataFormatException;

    move-result-object v0

    throw v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
