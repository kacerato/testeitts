.class public final Lcom/android/tools/r8/internal/n50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r90;

.field public final b:Lcom/android/tools/r8/internal/by0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/rM;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/tools/r8/internal/s90;->l:Lcom/android/tools/r8/internal/s90;

    new-instance v1, Lcom/android/tools/r8/internal/r90;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/r90;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/n50;->a:Lcom/android/tools/r8/internal/r90;

    new-instance v1, Lcom/android/tools/r8/internal/by0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/by0;-><init>(Lcom/android/tools/r8/internal/rM;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/sQ;)V
    .locals 13

    const-string v0, "kmPackage"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/n50;->a:Lcom/android/tools/r8/internal/r90;

    iget-object v1, p1, Lcom/android/tools/r8/internal/sQ;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/pQ;

    iget-object v7, p0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/m90;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/m90;->c()Lcom/android/tools/r8/internal/n90;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/n90;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw p1

    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    iget v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/n50;->a:Lcom/android/tools/r8/internal/r90;

    iget-object v1, p1, Lcom/android/tools/r8/internal/sQ;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/vQ;

    iget-object v8, p0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/u90;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/u90;->c()Lcom/android/tools/r8/internal/v90;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/v90;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw p1

    :cond_4
    iget v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    const/4 v5, 0x2

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    iget v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v1, v5

    iput v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/n50;->a:Lcom/android/tools/r8/internal/r90;

    iget-object v1, p1, Lcom/android/tools/r8/internal/sQ;->c:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/zQ;

    iget-object v8, p0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/zQ;)Lcom/android/tools/r8/internal/O90;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/O90;->c()Lcom/android/tools/r8/internal/P90;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/P90;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw p1

    :cond_7
    iget v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    iget v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v1, v5

    iput v1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    :cond_8
    iget-object v0, v0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/yW;

    iget-object v2, p0, Lcom/android/tools/r8/internal/n50;->a:Lcom/android/tools/r8/internal/r90;

    iget-object v5, p0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    check-cast v1, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "proto"

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "c"

    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object v1

    iget-object v6, v1, Lcom/android/tools/r8/internal/WL;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_4
    if-ge v8, v7, :cond_d

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/vQ;

    sget-object v10, Lcom/android/tools/r8/internal/oM;->n:Lcom/android/tools/r8/internal/Wy;

    invoke-static {v5, v9}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/u90;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/u90;->c()Lcom/android/tools/r8/internal/v90;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/v90;->isInitialized()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v10, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/r90;->b()Lcom/android/tools/r8/internal/Yy;

    move-result-object v12

    if-ne v11, v12, :cond_b

    iget-boolean v11, v2, Lcom/android/tools/r8/internal/Ry;->d:Z

    if-nez v11, :cond_a

    iget-object v11, v2, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Jw;->clone()Lcom/android/tools/r8/internal/Jw;

    move-result-object v11

    iput-object v11, v2, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    iput-boolean v3, v2, Lcom/android/tools/r8/internal/Ry;->d:Z

    :cond_a
    iget-object v11, v2, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    iget-object v12, v10, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw p1

    :cond_d
    iget-object v1, v1, Lcom/android/tools/r8/internal/WL;->b:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v6, "main"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Lcom/android/tools/r8/internal/oM;->m:Lcom/android/tools/r8/internal/Wy;

    iget-object v5, v5, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    goto/16 :goto_3

    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/by0;->b:Lcom/android/tools/r8/internal/YY;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/YY;->a()Lcom/android/tools/r8/internal/Yy;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ha0;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/tools/r8/internal/n50;->a:Lcom/android/tools/r8/internal/r90;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/android/tools/r8/internal/r90;->j:Lcom/android/tools/r8/internal/ha0;

    iget p1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Lcom/android/tools/r8/internal/r90;->e:I

    :cond_f
    return-void
.end method
