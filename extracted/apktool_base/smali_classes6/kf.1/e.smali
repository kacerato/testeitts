.class public Lkf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final synthetic c:Z


# instance fields
.field public final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkf/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkf/e;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const v1, 0x7fffffff

    const-string v2, "length"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    new-array v0, p1, [I

    iput-object v0, p0, Lkf/e;->a:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lkf/e;->a:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p2, p3}, Ljava/util/Random;-><init>(J)V

    :goto_1
    if-ge v0, p1, :cond_1

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result p2

    invoke-static {p2, p1}, Ljf/f;->K(II)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lkf/e;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lkf/e;->a:[I

    array-length v0, v0

    invoke-static {p1, v0}, Ljf/f;->K(II)I

    move-result p1

    iget-object v0, p0, Lkf/e;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b(II)V
    .locals 3

    iget-object v0, p0, Lkf/e;->a:[I

    aget v1, v0, p1

    aget v2, v0, p2

    aput v2, v0, p1

    aput v1, v0, p2

    return-void
.end method
