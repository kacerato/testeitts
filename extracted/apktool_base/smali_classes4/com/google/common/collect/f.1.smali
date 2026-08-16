.class public abstract Lcom/google/common/collect/f;
.super Lcom/google/common/collect/i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final f:J
    .annotation build Lv2/c;
    .end annotation
.end field


# instance fields
.field public transient d:Lcom/google/common/collect/d2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d2<",
            "TE;>;"
        }
    .end annotation
.end field

.field public transient e:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/i;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f;->j(I)Lcom/google/common/collect/d2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    return-void
.end method

.method private k(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {p1}, Lcom/google/common/collect/B2;->h(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/common/collect/f;->j(I)Lcom/google/common/collect/d2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/B2;->g(Lcom/google/common/collect/V1;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private l(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->k(Lcom/google/common/collect/V1;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public final Ad(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final P9(Ljava/lang/Object;I)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->w(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/d2;->v(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    sub-int/2addr p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    return p1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->D()I

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    return-void
.end method

.method public final d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f$a;-><init>(Lcom/google/common/collect/f;)V

    return-object v0
.end method

.method public final e7(Ljava/lang/Object;II)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->n(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    return v3

    :cond_0
    if-lez p3, :cond_1

    iget-object p2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/d2;->v(Ljava/lang/Object;I)I

    iget-wide p1, p0, Lcom/google/common/collect/f;->e:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/collect/f;->e:J

    :cond_1
    return v2

    :cond_2
    iget-object p1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/d2;->l(I)I

    move-result p1

    if-eq p1, p2, :cond_3

    return v3

    :cond_3
    if-nez p3, :cond_4

    iget-object p1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/d2;->y(I)I

    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    int-to-long p1, p2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {p1, v0, p3}, Lcom/google/common/collect/d2;->C(II)V

    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    sub-int/2addr p3, p2

    int-to-long p1, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    :goto_0
    return v2
.end method

.method public final g()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f$b;-><init>(Lcom/google/common/collect/f;)V

    return-object v0
.end method

.method public h(Lcom/google/common/collect/V1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->f()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/d2;->j(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/d2;->l(I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/common/collect/V1;->y6(Ljava/lang/Object;I)I

    iget-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/d2;->t(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/W1;->n(Lcom/google/common/collect/V1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract j(I)Lcom/google/common/collect/d2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/d2<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final pc(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-lez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const-string v2, "occurrences cannot be negative: %s"

    invoke-static {v1, v2, p2}, Lw2/H;->k(ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/d2;->n(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->l(I)I

    move-result v0

    if-le v0, p2, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    sub-int v2, v0, p2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/d2;->C(II)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/d2;->y(I)I

    move p2, v0

    :goto_1
    iget-wide v1, p0, Lcom/google/common/collect/f;->e:J

    int-to-long p1, p2

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/google/common/collect/f;->e:J

    return v0
.end method

.method public final size()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method

.method public final y6(Ljava/lang/Object;I)I
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v3, "occurrences cannot be negative: %s"

    invoke-static {v2, v3, p2}, Lw2/H;->k(ZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/d2;->n(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/d2;->v(Ljava/lang/Object;I)I

    iget-wide v2, p0, Lcom/google/common/collect/f;->e:J

    int-to-long p1, p2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/collect/f;->e:J

    return v1

    :cond_2
    iget-object p1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {p1, v2}, Lcom/google/common/collect/d2;->l(I)I

    move-result p1

    int-to-long v3, p1

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/32 v7, 0x7fffffff

    cmp-long p2, v3, v7

    if-gtz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    const-string p2, "too many occurrences: %s"

    invoke-static {v0, p2, v3, v4}, Lw2/H;->p(ZLjava/lang/String;J)V

    iget-object p2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    long-to-int v0, v3

    invoke-virtual {p2, v2, v0}, Lcom/google/common/collect/d2;->C(II)V

    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    return p1
.end method
