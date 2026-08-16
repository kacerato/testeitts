.class public Lcom/google/common/primitives/i$b;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/primitives/i;


# direct methods
.method public constructor <init>(Lcom/google/common/primitives/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/primitives/i;Lcom/google/common/primitives/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/primitives/i$b;-><init>(Lcom/google/common/primitives/i;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/i$b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/primitives/i$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/primitives/i$b;

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    iget-object p1, p1, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/common/primitives/i$b;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-static {v0}, Lcom/google/common/primitives/i;->b(Lcom/google/common/primitives/i;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-static {v3}, Lcom/google/common/primitives/i;->a(Lcom/google/common/primitives/i;)[D

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, v3, v0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Lcom/google/common/primitives/i;->d(DD)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/i$b;->j(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-virtual {v0}, Lcom/google/common/primitives/i;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/primitives/i;->n(D)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public j(I)Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/i;->m(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/primitives/i;->q(D)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-virtual {v0}, Lcom/google/common/primitives/i;->r()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/i;->C(II)Lcom/google/common/primitives/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/primitives/i;->f()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/primitives/i$b;->b:Lcom/google/common/primitives/i;

    invoke-virtual {v0}, Lcom/google/common/primitives/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
