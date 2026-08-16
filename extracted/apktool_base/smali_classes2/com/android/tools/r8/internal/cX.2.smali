.class public final Lcom/android/tools/r8/internal/cX;
.super Lcom/android/tools/r8/internal/ii;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/E50;)V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/S3;

    new-instance v1, Lcom/android/tools/r8/internal/o71;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/o71;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/S3;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/util/function/Function;)V

    new-instance p1, Lcom/android/tools/r8/internal/p71;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p71;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/ii;-><init>(Lcom/android/tools/r8/internal/y80;Ljava/util/function/Function;)V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/android/tools/r8/internal/UO;
    .locals 5

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/DP;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    if-ge v4, v3, :cond_0

    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/android/tools/r8/internal/TO;->b:Lcom/android/tools/r8/internal/TO;

    return-object p0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/TO;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/TO;-><init>(Ljava/util/List;)V

    return-object v0
.end method
