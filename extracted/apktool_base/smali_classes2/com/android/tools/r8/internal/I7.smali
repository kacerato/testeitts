.class public final Lcom/android/tools/r8/internal/I7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/CH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>([Lcom/android/tools/r8/internal/TH;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    sget-boolean v0, Lcom/android/tools/r8/internal/I7;->b:Z

    if-nez v0, :cond_1

    array-length v0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    sget-boolean v3, Lcom/android/tools/r8/internal/I7;->b:Z

    if-nez v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CH;->size()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/CH;->a(ILcom/android/tools/r8/internal/TH;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/uJ;)J
    .locals 14

    iget-object v0, p0, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    iget v1, v0, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    int-to-long v4, v2

    iget-object v2, p0, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    iget v2, v2, Lcom/android/tools/r8/internal/CH;->c:I

    int-to-long v6, v2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0x4

    if-eqz v2, :cond_2

    const-wide/16 v12, 0x8

    mul-long/2addr v6, v12

    goto :goto_1

    :cond_2
    mul-long/2addr v6, v10

    add-long/2addr v6, v8

    :goto_1
    add-long/2addr v6, v4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v3, 0x10

    :cond_3
    int-to-long v2, v3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez p1, :cond_5

    const-wide v4, 0xffffffffL

    cmp-long p1, v0, v4

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    mul-long/2addr v0, v10

    goto :goto_3

    :cond_6
    mul-long/2addr v0, v8

    add-long/2addr v0, v10

    :goto_3
    add-long/2addr v0, v2

    sub-long/2addr v6, v0

    return-wide v6
.end method
