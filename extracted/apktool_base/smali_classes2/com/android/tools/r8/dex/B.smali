.class public final Lcom/android/tools/r8/dex/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:[Lcom/android/tools/r8/graph/z2;

.field public final c:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>([Lcom/android/tools/r8/graph/z2;Ljava/util/function/Supplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/dex/B;->a:I

    iput-object p1, p0, Lcom/android/tools/r8/dex/B;->b:[Lcom/android/tools/r8/graph/z2;

    iput-object p2, p0, Lcom/android/tools/r8/dex/B;->c:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/n1;
    .locals 3

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/dex/B;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/dex/B;->b:[Lcom/android/tools/r8/graph/z2;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/z2;->b:Lcom/android/tools/r8/graph/v2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/dex/B;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/dex/B;->a:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/dex/B;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/dex/B;->b:[Lcom/android/tools/r8/graph/z2;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/z2;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/dex/B;->b:[Lcom/android/tools/r8/graph/z2;

    iget v0, p0, Lcom/android/tools/r8/dex/B;->a:I

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/z2;->c:Lcom/android/tools/r8/graph/n1;

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/dex/B;->c:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    return-object p1
.end method
