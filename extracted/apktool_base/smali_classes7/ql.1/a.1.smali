.class public final Lql/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final n:J = 0x1L


# instance fields
.field public transient b:Lql/k;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lql/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Lql/E;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lql/E;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lql/E;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lql/E;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lql/E;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Z

.field public transient m:I


# direct methods
.method public constructor <init>(Lql/H;II)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lql/H;->i()Lql/k;

    move-result-object v0

    invoke-virtual {p1}, Lql/H;->b()I

    move-result v1

    invoke-virtual {p1}, Lql/H;->c()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, p3}, Lql/a;-><init>(Lql/k;III)V

    iput p2, p0, Lql/a;->m:I

    iput p3, p0, Lql/a;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lql/a;->l:Z

    return-void
.end method

.method public constructor <init>(Lql/H;[B[BLql/j;)V
    .locals 4

    .line 7
    invoke-virtual {p1}, Lql/H;->i()Lql/k;

    move-result-object v0

    invoke-virtual {p1}, Lql/H;->b()I

    move-result v1

    invoke-virtual {p1}, Lql/H;->c()I

    move-result v2

    invoke-virtual {p1}, Lql/H;->b()I

    move-result p1

    const/4 v3, 0x1

    shl-int p1, v3, p1

    sub-int/2addr p1, v3

    invoke-direct {p0, v0, v1, v2, p1}, Lql/a;-><init>(Lql/k;III)V

    invoke-virtual {p0, p2, p3, p4}, Lql/a;->h([B[BLql/j;)V

    return-void
.end method

.method public constructor <init>(Lql/H;[B[BLql/j;I)V
    .locals 4

    .line 8
    invoke-virtual {p1}, Lql/H;->i()Lql/k;

    move-result-object v0

    invoke-virtual {p1}, Lql/H;->b()I

    move-result v1

    invoke-virtual {p1}, Lql/H;->c()I

    move-result v2

    invoke-virtual {p1}, Lql/H;->b()I

    move-result p1

    const/4 v3, 0x1

    shl-int p1, v3, p1

    sub-int/2addr p1, v3

    invoke-direct {p0, v0, v1, v2, p1}, Lql/a;-><init>(Lql/k;III)V

    invoke-virtual {p0, p2, p3, p4}, Lql/a;->h([B[BLql/j;)V

    :goto_0
    iget p1, p0, Lql/a;->k:I

    if-ge p1, p5, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lql/a;->k([B[BLql/j;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lql/a;->l:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lql/a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lql/k;

    iget-object v1, p1, Lql/a;->b:Lql/k;

    invoke-virtual {v1}, Lql/k;->e()Lql/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lql/k;-><init>(Lql/m;)V

    iput-object v0, p0, Lql/a;->b:Lql/k;

    iget v0, p1, Lql/a;->c:I

    iput v0, p0, Lql/a;->c:I

    iget v0, p1, Lql/a;->e:I

    iput v0, p0, Lql/a;->e:I

    iget-object v0, p1, Lql/a;->f:Lql/E;

    iput-object v0, p0, Lql/a;->f:Lql/E;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lql/a;->g:Ljava/util/List;

    iget-object v1, p1, Lql/a;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lql/a;->h:Ljava/util/Map;

    iget-object v0, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lql/a;->h:Ljava/util/Map;

    iget-object v3, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lql/a;->i:Ljava/util/Stack;

    iget-object v1, p1, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lql/a;->d:Ljava/util/List;

    iget-object v0, p1, Lql/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lql/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/c;

    invoke-virtual {v2}, Lql/c;->a()Lql/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lql/a;->j:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lql/a;->j:Ljava/util/Map;

    iget v0, p1, Lql/a;->k:I

    iput v0, p0, Lql/a;->k:I

    iget v0, p1, Lql/a;->m:I

    iput v0, p0, Lql/a;->m:I

    iget-boolean p1, p1, Lql/a;->l:Z

    iput-boolean p1, p0, Lql/a;->l:Z

    return-void
.end method

.method public constructor <init>(Lql/a;ILoh/x;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lql/k;

    new-instance v1, Lql/m;

    invoke-direct {v1, p3}, Lql/m;-><init>(Loh/x;)V

    invoke-direct {v0, v1}, Lql/k;-><init>(Lql/m;)V

    iput-object v0, p0, Lql/a;->b:Lql/k;

    iget p3, p1, Lql/a;->c:I

    iput p3, p0, Lql/a;->c:I

    iget p3, p1, Lql/a;->e:I

    iput p3, p0, Lql/a;->e:I

    iget-object p3, p1, Lql/a;->f:Lql/E;

    iput-object p3, p0, Lql/a;->f:Lql/E;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lql/a;->g:Ljava/util/List;

    iget-object v0, p1, Lql/a;->g:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    iput-object p3, p0, Lql/a;->h:Ljava/util/Map;

    iget-object p3, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lql/a;->h:Ljava/util/Map;

    iget-object v2, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/util/Stack;

    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    iput-object p3, p0, Lql/a;->i:Ljava/util/Stack;

    iget-object v0, p1, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {p3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lql/a;->d:Ljava/util/List;

    iget-object p3, p1, Lql/a;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lql/a;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lql/c;

    invoke-virtual {v1}, Lql/c;->a()Lql/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/util/TreeMap;

    iget-object v0, p1, Lql/a;->j:Ljava/util/Map;

    invoke-direct {p3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p3, p0, Lql/a;->j:Ljava/util/Map;

    iget p3, p1, Lql/a;->k:I

    iput p3, p0, Lql/a;->k:I

    iput p2, p0, Lql/a;->m:I

    iget-boolean p1, p1, Lql/a;->l:Z

    iput-boolean p1, p0, Lql/a;->l:Z

    invoke-virtual {p0}, Lql/a;->m()V

    return-void
.end method

.method public constructor <init>(Lql/a;Loh/x;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lql/k;

    new-instance v1, Lql/m;

    invoke-direct {v1, p2}, Lql/m;-><init>(Loh/x;)V

    invoke-direct {v0, v1}, Lql/k;-><init>(Lql/m;)V

    iput-object v0, p0, Lql/a;->b:Lql/k;

    iget p2, p1, Lql/a;->c:I

    iput p2, p0, Lql/a;->c:I

    iget p2, p1, Lql/a;->e:I

    iput p2, p0, Lql/a;->e:I

    iget-object p2, p1, Lql/a;->f:Lql/E;

    iput-object p2, p0, Lql/a;->f:Lql/E;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lql/a;->g:Ljava/util/List;

    iget-object v0, p1, Lql/a;->g:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lql/a;->h:Ljava/util/Map;

    iget-object p2, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lql/a;->h:Ljava/util/Map;

    iget-object v2, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lql/a;->i:Ljava/util/Stack;

    iget-object v0, p1, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lql/a;->d:Ljava/util/List;

    iget-object p2, p1, Lql/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lql/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lql/c;

    invoke-virtual {v1}, Lql/c;->a()Lql/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/TreeMap;

    iget-object v0, p1, Lql/a;->j:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lql/a;->j:Ljava/util/Map;

    iget p2, p1, Lql/a;->k:I

    iput p2, p0, Lql/a;->k:I

    iget p2, p1, Lql/a;->m:I

    iput p2, p0, Lql/a;->m:I

    iget-boolean p1, p1, Lql/a;->l:Z

    iput-boolean p1, p0, Lql/a;->l:Z

    invoke-virtual {p0}, Lql/a;->m()V

    return-void
.end method

.method public constructor <init>(Lql/a;[B[BLql/j;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lql/k;

    iget-object v1, p1, Lql/a;->b:Lql/k;

    invoke-virtual {v1}, Lql/k;->e()Lql/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lql/k;-><init>(Lql/m;)V

    iput-object v0, p0, Lql/a;->b:Lql/k;

    iget v0, p1, Lql/a;->c:I

    iput v0, p0, Lql/a;->c:I

    iget v0, p1, Lql/a;->e:I

    iput v0, p0, Lql/a;->e:I

    iget-object v0, p1, Lql/a;->f:Lql/E;

    iput-object v0, p0, Lql/a;->f:Lql/E;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lql/a;->g:Ljava/util/List;

    iget-object v1, p1, Lql/a;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lql/a;->h:Ljava/util/Map;

    iget-object v0, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lql/a;->h:Ljava/util/Map;

    iget-object v3, p1, Lql/a;->h:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lql/a;->i:Ljava/util/Stack;

    iget-object v1, p1, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lql/a;->d:Ljava/util/List;

    iget-object v0, p1, Lql/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lql/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/c;

    invoke-virtual {v2}, Lql/c;->a()Lql/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lql/a;->j:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lql/a;->j:Ljava/util/Map;

    iget v0, p1, Lql/a;->k:I

    iput v0, p0, Lql/a;->k:I

    iget p1, p1, Lql/a;->m:I

    iput p1, p0, Lql/a;->m:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lql/a;->l:Z

    invoke-virtual {p0, p2, p3, p4}, Lql/a;->k([B[BLql/j;)V

    return-void
.end method

.method public constructor <init>(Lql/k;III)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lql/a;->b:Lql/k;

    iput p2, p0, Lql/a;->c:I

    iput p4, p0, Lql/a;->m:I

    iput p3, p0, Lql/a;->e:I

    if-gt p3, p2, :cond_1

    const/4 p1, 0x2

    if-lt p3, p1, :cond_1

    sub-int/2addr p2, p3

    rem-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lql/a;->g:Ljava/util/List;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lql/a;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lql/a;->i:Ljava/util/Stack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lql/a;->d:Ljava/util/List;

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object p4, p0, Lql/a;->d:Ljava/util/List;

    new-instance v0, Lql/c;

    invoke-direct {v0, p3}, Lql/c;-><init>(I)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lql/a;->j:Ljava/util/Map;

    iput p1, p0, Lql/a;->k:I

    iput-boolean p1, p0, Lql/a;->l:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal value for BDS parameter k"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lql/E;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lql/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/E;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b()Lql/c;
    .locals 5

    iget-object v0, p0, Lql/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/c;

    invoke-virtual {v2}, Lql/c;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lql/c;->g()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lql/c;->b()I

    move-result v3

    invoke-virtual {v1}, Lql/c;->b()I

    move-result v4

    if-ge v3, v4, :cond_3

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lql/c;->b()I

    move-result v3

    invoke-virtual {v1}, Lql/c;->b()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lql/c;->c()I

    move-result v3

    invoke-virtual {v1}, Lql/c;->c()I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lql/a;->k:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lql/a;->m:I

    return v0
.end method

.method public e([B[BLql/j;)Lql/a;
    .locals 1

    new-instance v0, Lql/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lql/a;-><init>(Lql/a;[B[BLql/j;)V

    return-object v0
.end method

.method public f()Lql/E;
    .locals 1

    iget-object v0, p0, Lql/a;->f:Lql/E;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lql/a;->c:I

    return v0
.end method

.method public final h([B[BLql/j;)V
    .locals 10

    if-eqz p3, :cond_6

    new-instance v0, Lql/i$b;

    invoke-direct {v0}, Lql/i$b;-><init>()V

    invoke-virtual {p3}, Lql/r;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/i$b;

    invoke-virtual {p3}, Lql/r;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/i$b;

    invoke-virtual {v0}, Lql/i$b;->e()Lql/r;

    move-result-object v0

    check-cast v0, Lql/i;

    new-instance v1, Lql/g$b;

    invoke-direct {v1}, Lql/g$b;-><init>()V

    invoke-virtual {p3}, Lql/r;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {p3}, Lql/r;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {v1}, Lql/g$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/g;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lql/a;->c:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    if-ge v2, v3, :cond_5

    new-instance v3, Lql/j$b;

    invoke-direct {v3}, Lql/j$b;-><init>()V

    invoke-virtual {p3}, Lql/r;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/j$b;

    invoke-virtual {p3}, Lql/r;->c()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/j$b;

    invoke-virtual {v3, v2}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v3

    invoke-virtual {p3}, Lql/j;->f()I

    move-result v5

    invoke-virtual {v3, v5}, Lql/j$b;->n(I)Lql/j$b;

    move-result-object v3

    invoke-virtual {p3}, Lql/j;->g()I

    move-result v5

    invoke-virtual {v3, v5}, Lql/j$b;->o(I)Lql/j$b;

    move-result-object v3

    invoke-virtual {p3}, Lql/r;->a()I

    move-result p3

    invoke-virtual {v3, p3}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object p3

    check-cast p3, Lql/j$b;

    invoke-virtual {p3}, Lql/j$b;->e()Lql/r;

    move-result-object p3

    check-cast p3, Lql/j;

    iget-object v3, p0, Lql/a;->b:Lql/k;

    invoke-virtual {v3, p2, p3}, Lql/k;->k([BLql/j;)[B

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lql/k;->l([B[B)V

    iget-object v3, p0, Lql/a;->b:Lql/k;

    invoke-virtual {v3, p3}, Lql/k;->g(Lql/j;)Lql/o;

    move-result-object v3

    new-instance v5, Lql/i$b;

    invoke-direct {v5}, Lql/i$b;-><init>()V

    invoke-virtual {v0}, Lql/r;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/i$b;

    invoke-virtual {v0}, Lql/r;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/i$b;

    invoke-virtual {v5, v2}, Lql/i$b;->n(I)Lql/i$b;

    move-result-object v5

    invoke-virtual {v0}, Lql/i;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Lql/i$b;->o(I)Lql/i$b;

    move-result-object v5

    invoke-virtual {v0}, Lql/i;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Lql/i$b;->p(I)Lql/i$b;

    move-result-object v5

    invoke-virtual {v0}, Lql/r;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/i$b;

    invoke-virtual {v0}, Lql/i$b;->e()Lql/r;

    move-result-object v0

    check-cast v0, Lql/i;

    iget-object v5, p0, Lql/a;->b:Lql/k;

    invoke-static {v5, v3, v0}, Lql/F;->a(Lql/k;Lql/o;Lql/i;)Lql/E;

    move-result-object v3

    new-instance v5, Lql/g$b;

    invoke-direct {v5}, Lql/g$b;-><init>()V

    invoke-virtual {v1}, Lql/r;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/g$b;

    invoke-virtual {v1}, Lql/r;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/g$b;

    invoke-virtual {v5, v2}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object v5

    invoke-virtual {v1}, Lql/r;->a()I

    move-result v1

    invoke-virtual {v5, v1}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {v1}, Lql/g$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/g;

    :goto_1
    iget-object v5, p0, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lql/E;

    invoke-virtual {v5}, Lql/E;->a()I

    move-result v5

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v5

    shl-int v5, v4, v5

    div-int v5, v2, v5

    if-ne v5, v4, :cond_0

    iget-object v6, p0, Lql/a;->g:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v7

    iget v8, p0, Lql/a;->c:I

    iget v9, p0, Lql/a;->e:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lql/a;->d:Ljava/util/List;

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lql/c;

    invoke-virtual {v7, v3}, Lql/c;->h(Lql/E;)V

    :cond_1
    if-lt v5, v6, :cond_3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_3

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v5

    iget v6, p0, Lql/a;->c:I

    iget v7, p0, Lql/a;->e:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_3

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v5

    iget v6, p0, Lql/a;->c:I

    add-int/lit8 v6, v6, -0x2

    if-gt v5, v6, :cond_3

    iget-object v5, p0, Lql/a;->h:Ljava/util/Map;

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lql/a;->h:Ljava/util/Map;

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lql/a;->h:Ljava/util/Map;

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    new-instance v5, Lql/g$b;

    invoke-direct {v5}, Lql/g$b;-><init>()V

    invoke-virtual {v1}, Lql/r;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/g$b;

    invoke-virtual {v1}, Lql/r;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/g$b;

    invoke-virtual {v1}, Lql/g;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Lql/g$b;->m(I)Lql/g$b;

    move-result-object v5

    invoke-virtual {v1}, Lql/g;->h()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object v5

    invoke-virtual {v1}, Lql/r;->a()I

    move-result v1

    invoke-virtual {v5, v1}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {v1}, Lql/g$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/g;

    iget-object v5, p0, Lql/a;->b:Lql/k;

    iget-object v6, p0, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lql/E;

    invoke-static {v5, v6, v3, v1}, Lql/F;->b(Lql/k;Lql/E;Lql/E;Lql/r;)Lql/E;

    move-result-object v3

    new-instance v5, Lql/E;

    invoke-virtual {v3}, Lql/E;->a()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Lql/E;->b()[B

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lql/E;-><init>(I[B)V

    new-instance v3, Lql/g$b;

    invoke-direct {v3}, Lql/g$b;-><init>()V

    invoke-virtual {v1}, Lql/r;->b()I

    move-result v6

    invoke-virtual {v3, v6}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/g$b;

    invoke-virtual {v1}, Lql/r;->c()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/g$b;

    invoke-virtual {v1}, Lql/g;->g()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Lql/g$b;->m(I)Lql/g$b;

    move-result-object v3

    invoke-virtual {v1}, Lql/g;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object v3

    invoke-virtual {v1}, Lql/r;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {v1}, Lql/g$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/g;

    move-object v3, v5

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lql/a;->i:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lql/E;

    iput-object p1, p0, Lql/a;->f:Lql/E;

    return-void

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lql/a;->l:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lql/a;->l:Z

    return-void
.end method

.method public final k([B[BLql/j;)V
    .locals 11

    if-eqz p3, :cond_a

    iget-boolean v0, p0, Lql/a;->l:Z

    if-nez v0, :cond_9

    iget v0, p0, Lql/a;->k:I

    iget v1, p0, Lql/a;->m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_8

    iget v1, p0, Lql/a;->c:I

    invoke-static {v0, v1}, Lql/O;->c(II)I

    move-result v0

    iget v1, p0, Lql/a;->k:I

    add-int/lit8 v3, v0, 0x1

    shr-int/2addr v1, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lql/a;->c:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lql/a;->j:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lql/a;->g:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lql/E;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lql/i$b;

    invoke-direct {v1}, Lql/i$b;-><init>()V

    invoke-virtual {p3}, Lql/r;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/i$b;

    invoke-virtual {p3}, Lql/r;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/i$b;

    invoke-virtual {v1}, Lql/i$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/i;

    new-instance v3, Lql/g$b;

    invoke-direct {v3}, Lql/g$b;-><init>()V

    invoke-virtual {p3}, Lql/r;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/g$b;

    invoke-virtual {p3}, Lql/r;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/g$b;

    invoke-virtual {v3}, Lql/g$b;->e()Lql/r;

    move-result-object v3

    check-cast v3, Lql/g;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lql/j$b;

    invoke-direct {v0}, Lql/j$b;-><init>()V

    invoke-virtual {p3}, Lql/r;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/j$b;

    invoke-virtual {p3}, Lql/r;->c()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/j$b;

    iget v3, p0, Lql/a;->k:I

    invoke-virtual {v0, v3}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v0

    invoke-virtual {p3}, Lql/j;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lql/j$b;->n(I)Lql/j$b;

    move-result-object v0

    invoke-virtual {p3}, Lql/j;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Lql/j$b;->o(I)Lql/j$b;

    move-result-object v0

    invoke-virtual {p3}, Lql/r;->a()I

    move-result p3

    invoke-virtual {v0, p3}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object p3

    check-cast p3, Lql/j$b;

    invoke-virtual {p3}, Lql/j$b;->e()Lql/r;

    move-result-object p3

    check-cast p3, Lql/j;

    iget-object v0, p0, Lql/a;->b:Lql/k;

    invoke-virtual {v0, p2, p3}, Lql/k;->k([BLql/j;)[B

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lql/k;->l([B[B)V

    iget-object v0, p0, Lql/a;->b:Lql/k;

    invoke-virtual {v0, p3}, Lql/k;->g(Lql/j;)Lql/o;

    move-result-object v0

    new-instance v3, Lql/i$b;

    invoke-direct {v3}, Lql/i$b;-><init>()V

    invoke-virtual {v1}, Lql/r;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/i$b;

    invoke-virtual {v1}, Lql/r;->c()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v3

    check-cast v3, Lql/i$b;

    iget v5, p0, Lql/a;->k:I

    invoke-virtual {v3, v5}, Lql/i$b;->n(I)Lql/i$b;

    move-result-object v3

    invoke-virtual {v1}, Lql/i;->g()I

    move-result v5

    invoke-virtual {v3, v5}, Lql/i$b;->o(I)Lql/i$b;

    move-result-object v3

    invoke-virtual {v1}, Lql/i;->h()I

    move-result v5

    invoke-virtual {v3, v5}, Lql/i$b;->p(I)Lql/i$b;

    move-result-object v3

    invoke-virtual {v1}, Lql/r;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/i$b;

    invoke-virtual {v1}, Lql/i$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/i;

    iget-object v3, p0, Lql/a;->b:Lql/k;

    invoke-static {v3, v0, v1}, Lql/F;->a(Lql/k;Lql/o;Lql/i;)Lql/E;

    move-result-object v0

    iget-object v1, p0, Lql/a;->g:Ljava/util/List;

    invoke-interface {v1, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    new-instance v1, Lql/g$b;

    invoke-direct {v1}, Lql/g$b;-><init>()V

    invoke-virtual {v3}, Lql/r;->b()I

    move-result v5

    invoke-virtual {v1, v5}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {v3}, Lql/r;->c()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1, v5}, Lql/g$b;->m(I)Lql/g$b;

    move-result-object v1

    iget v6, p0, Lql/a;->k:I

    shr-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object v1

    invoke-virtual {v3}, Lql/r;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {v1}, Lql/g$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/g;

    iget-object v3, p0, Lql/a;->b:Lql/k;

    invoke-virtual {v3, p2, p3}, Lql/k;->k([BLql/j;)[B

    move-result-object v6

    invoke-virtual {v3, v6, p1}, Lql/k;->l([B[B)V

    iget-object v3, p0, Lql/a;->b:Lql/k;

    iget-object v6, p0, Lql/a;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lql/E;

    iget-object v7, p0, Lql/a;->j:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lql/E;

    invoke-static {v3, v6, v7, v1}, Lql/F;->b(Lql/k;Lql/E;Lql/E;Lql/r;)Lql/E;

    move-result-object v1

    new-instance v3, Lql/E;

    invoke-virtual {v1}, Lql/E;->a()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v1}, Lql/E;->b()[B

    move-result-object v1

    invoke-direct {v3, v6, v1}, Lql/E;-><init>(I[B)V

    iget-object v1, p0, Lql/a;->g:Ljava/util/List;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lql/a;->j:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_3

    iget v3, p0, Lql/a;->c:I

    iget v5, p0, Lql/a;->e:I

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lql/a;->g:Ljava/util/List;

    iget-object v5, p0, Lql/a;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lql/c;

    invoke-virtual {v5}, Lql/c;->d()Lql/E;

    move-result-object v5

    :goto_1
    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lql/a;->g:Ljava/util/List;

    iget-object v5, p0, Lql/a;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lql/E;

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lql/a;->c:I

    iget v3, p0, Lql/a;->e:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_5

    iget v3, p0, Lql/a;->k:I

    add-int/2addr v3, v2

    shl-int v5, v2, v1

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    iget v5, p0, Lql/a;->c:I

    shl-int v5, v2, v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lql/a;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lql/c;

    invoke-virtual {v5, v3}, Lql/c;->e(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget v0, p0, Lql/a;->c:I

    iget v1, p0, Lql/a;->e:I

    sub-int/2addr v0, v1

    shr-int/2addr v0, v2

    if-ge v4, v0, :cond_7

    invoke-virtual {p0}, Lql/a;->b()Lql/c;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lql/a;->i:Ljava/util/Stack;

    iget-object v7, p0, Lql/a;->b:Lql/k;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lql/c;->i(Ljava/util/Stack;Lql/k;[B[BLql/j;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    iget p1, p0, Lql/a;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lql/a;->k:I

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index already used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_0
    iput v0, p0, Lql/a;->m:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lql/a;->c:I

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iget v0, p0, Lql/a;->m:I

    iget v2, p0, Lql/a;->c:I

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    iget v2, p0, Lql/a;->k:I

    add-int/2addr v0, v1

    if-gt v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->available()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "inconsistent BDS data detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lql/a;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lql/a;->h:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lql/a;->i:Ljava/util/Stack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lql/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lql/a;->j:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget v0, p0, Lql/a;->c:I

    iget v1, p0, Lql/a;->k:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lql/O;->n(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index in BDS state out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keep == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "treeHashInstances == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stack == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "retain == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "authenticationPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(ILoh/x;)Lql/a;
    .locals 1

    new-instance v0, Lql/a;

    invoke-direct {v0, p0, p1, p2}, Lql/a;-><init>(Lql/a;ILoh/x;)V

    return-object v0
.end method

.method public o(Loh/x;)Lql/a;
    .locals 1

    new-instance v0, Lql/a;

    invoke-direct {v0, p0, p1}, Lql/a;-><init>(Lql/a;Loh/x;)V

    return-object v0
.end method

.method public final p(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Lql/a;->m:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method
