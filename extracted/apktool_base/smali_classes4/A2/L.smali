.class public abstract LA2/L;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "LA2/u<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public final c:LA2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/k<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/k<",
            "TN;>;TN;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, LA2/L;->c:LA2/k;

    iput-object p2, p0, LA2/L;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, LA2/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LA2/u;

    iget-object v0, p0, LA2/L;->c:LA2/k;

    invoke-interface {v0}, LA2/k;->c()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, LA2/u;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, LA2/u;->m()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->n()Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LA2/L;->c:LA2/k;

    iget-object v4, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v3, v4}, LA2/k;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LA2/L;->c:LA2/k;

    iget-object v3, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {p1, v3}, LA2/k;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, LA2/u;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, LA2/L;->c:LA2/k;

    iget-object v3, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v3}, LA2/k;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    iget-object v4, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    iget-object v4, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, LA2/L;->c:LA2/k;

    invoke-interface {v0}, LA2/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LA2/L;->c:LA2/k;

    iget-object v1, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LA2/k;->f(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LA2/L;->c:LA2/k;

    iget-object v2, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, LA2/k;->l(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, LA2/L;->c:LA2/k;

    iget-object v2, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, LA2/k;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, LA2/L;->c:LA2/k;

    iget-object v1, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LA2/k;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
