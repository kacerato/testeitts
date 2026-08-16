.class public final Lcom/android/tools/r8/internal/NK;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/NK;

.field public final c:Ljava/util/BitSet;

.field public final d:Ljava/util/HashMap;

.field public final e:Lcom/android/tools/r8/internal/YQ;

.field public final synthetic f:Lcom/android/tools/r8/internal/OK;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/OK;Lcom/android/tools/r8/internal/NK;Ljava/util/BitSet;)V
    .locals 4

    iput-object p1, p0, Lcom/android/tools/r8/internal/NK;->f:Lcom/android/tools/r8/internal/OK;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/NK;->c:Ljava/util/BitSet;

    if-eq v1, p3, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/NK;->b:Lcom/android/tools/r8/internal/NK;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Recursive invocation of "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p2, p0, Lcom/android/tools/r8/internal/NK;->b:Lcom/android/tools/r8/internal/NK;

    iput-object p3, p0, Lcom/android/tools/r8/internal/NK;->c:Ljava/util/BitSet;

    const/4 p3, 0x0

    if-nez p2, :cond_2

    move-object p2, p3

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/android/tools/r8/internal/YQ;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/YQ;-><init>()V

    :goto_1
    iput-object p2, p0, Lcom/android/tools/r8/internal/NK;->e:Lcom/android/tools/r8/internal/YQ;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    const/4 p2, 0x0

    move-object v0, p3

    :goto_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget v2, v1, Lcom/android/tools/r8/internal/OD;->b:I

    if-ge p2, v2, :cond_6

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/H;->a()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    check-cast v1, Lcom/android/tools/r8/internal/YQ;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/tools/r8/internal/YQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/YQ;-><init>()V

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/NK;->a(I)Lcom/android/tools/r8/internal/NK;

    move-result-object v1

    if-ne v1, p0, :cond_5

    move-object v0, p3

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/internal/NK;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/NK;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/NK;->f:Lcom/android/tools/r8/internal/OK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/OK;->A:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/NK;->b:Lcom/android/tools/r8/internal/NK;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v2, v0, Lcom/android/tools/r8/internal/NK;->c:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 5
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/NK;->b:Lcom/android/tools/r8/internal/NK;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/YQ;)Lcom/android/tools/r8/internal/YQ;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/NK;->f:Lcom/android/tools/r8/internal/OK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NK;->a(I)Lcom/android/tools/r8/internal/NK;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/YQ;

    return-object p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/YQ;

    iget-object v0, p0, Lcom/android/tools/r8/internal/NK;->f:Lcom/android/tools/r8/internal/OK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NK;->a(I)Lcom/android/tools/r8/internal/NK;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/YQ;

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
