.class public final Lcom/android/tools/r8/internal/sn0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/internal/H1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->u:Lcom/android/tools/r8/internal/H1;

    iput-object p1, p0, Lcom/android/tools/r8/internal/sn0;->e:Lcom/android/tools/r8/internal/H1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "SparseConditionalConstantPropagation"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/rn0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/rn0;-><init>(Lcom/android/tools/r8/internal/sn0;Lcom/android/tools/r8/internal/fB;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->a:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/rn0;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/rn0;->f:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->c:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rn0;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_4
    :goto_1
    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->d:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/f60;)V

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->f:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/rn0;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_3

    :cond_6
    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->f:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_7
    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->c:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/tools/r8/internal/rn0;->c:Lcom/android/tools/r8/internal/Yx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/rn0;->a(Lcom/android/tools/r8/internal/f60;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/rn0;->f:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/rn0;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_5
.end method
