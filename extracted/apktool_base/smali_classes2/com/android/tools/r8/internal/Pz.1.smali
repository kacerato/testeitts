.class public final Lcom/android/tools/r8/internal/Pz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/pv;

.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/lw;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Z

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Lcom/android/tools/r8/internal/os0;

.field public final m:Lcom/android/tools/r8/internal/ps0;

.field public final n:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/pv;->e:Lcom/android/tools/r8/internal/pv;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pz;->a:Lcom/android/tools/r8/internal/pv;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Pz;->b:I

    sget-object v1, Lcom/android/tools/r8/internal/sw;->b:Lcom/android/tools/r8/internal/lw;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Pz;->c:Lcom/android/tools/r8/internal/lw;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Pz;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Pz;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Pz;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/Pz;->g:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/tools/r8/internal/Pz;->h:I

    iput v1, p0, Lcom/android/tools/r8/internal/Pz;->i:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Pz;->j:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Pz;->k:Z

    sget-object v0, Lcom/android/tools/r8/internal/ss0;->b:Lcom/android/tools/r8/internal/os0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pz;->l:Lcom/android/tools/r8/internal/os0;

    sget-object v0, Lcom/android/tools/r8/internal/ss0;->c:Lcom/android/tools/r8/internal/ps0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pz;->m:Lcom/android/tools/r8/internal/ps0;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pz;->n:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Oz;
    .locals 13

    .line 14
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pz;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pz;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pz;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 19
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/Pz;->h:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pz;->i:I

    .line 21
    sget-boolean v2, Lcom/android/tools/r8/internal/Nn0;->a:Z

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v1, v3, :cond_1

    .line 22
    sget-object v3, Lcom/android/tools/r8/internal/vj;->b:Lcom/android/tools/r8/internal/uj;

    .line 23
    new-instance v4, Lcom/android/tools/r8/internal/wj;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/tools/r8/internal/wj;-><init>(Lcom/android/tools/r8/internal/vj;II)V

    .line 24
    sget-object v3, Lcom/android/tools/r8/internal/ku0;->a:Lcom/android/tools/r8/internal/Wt0;

    .line 25
    new-instance v3, Lcom/android/tools/r8/internal/Wt0;

    const-class v5, Ljava/util/Date;

    invoke-direct {v3, v5, v4}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    if-eqz v2, :cond_0

    .line 26
    sget-object v4, Lcom/android/tools/r8/internal/Nn0;->c:Lcom/android/tools/r8/internal/Mn0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v5, Lcom/android/tools/r8/internal/wj;

    invoke-direct {v5, v4, v0, v1}, Lcom/android/tools/r8/internal/wj;-><init>(Lcom/android/tools/r8/internal/vj;II)V

    .line 28
    iget-object v4, v4, Lcom/android/tools/r8/internal/vj;->a:Ljava/lang/Class;

    .line 29
    new-instance v6, Lcom/android/tools/r8/internal/Wt0;

    invoke-direct {v6, v4, v5}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 30
    sget-object v4, Lcom/android/tools/r8/internal/Nn0;->b:Lcom/android/tools/r8/internal/Ln0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v5, Lcom/android/tools/r8/internal/wj;

    invoke-direct {v5, v4, v0, v1}, Lcom/android/tools/r8/internal/wj;-><init>(Lcom/android/tools/r8/internal/vj;II)V

    .line 32
    iget-object v0, v4, Lcom/android/tools/r8/internal/vj;->a:Ljava/lang/Class;

    .line 33
    new-instance v1, Lcom/android/tools/r8/internal/Wt0;

    invoke-direct {v1, v0, v5}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, v6

    .line 34
    :goto_0
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    new-instance v12, Lcom/android/tools/r8/internal/Oz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pz;->a:Lcom/android/tools/r8/internal/pv;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pz;->c:Lcom/android/tools/r8/internal/lw;

    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pz;->d:Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/Pz;->g:Z

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/Pz;->j:Z

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/Pz;->k:Z

    iget v7, p0, Lcom/android/tools/r8/internal/Pz;->b:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/tools/r8/internal/Pz;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/tools/r8/internal/Pz;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/android/tools/r8/internal/Pz;->l:Lcom/android/tools/r8/internal/os0;

    iget-object v10, p0, Lcom/android/tools/r8/internal/Pz;->m:Lcom/android/tools/r8/internal/ps0;

    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pz;->n:Ljava/util/LinkedList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/tools/r8/internal/Oz;-><init>(Lcom/android/tools/r8/internal/pv;Lcom/android/tools/r8/internal/sw;Ljava/util/Map;ZZZILjava/util/List;Lcom/android/tools/r8/internal/ss0;Lcom/android/tools/r8/internal/ss0;Ljava/util/List;)V

    return-object v12
.end method

.method public final a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;
    .locals 4

    if-nez p2, :cond_1

    .line 1
    instance-of v0, p2, Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pz;->e:Ljava/util/ArrayList;

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    .line 6
    iget-object v3, v0, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_1
    new-instance v3, Lcom/android/tools/r8/internal/dt0;

    invoke-direct {v3, p2, v0, v2}, Lcom/android/tools/r8/internal/dt0;-><init>(Lcom/android/tools/r8/internal/cL;Lcom/android/tools/r8/internal/Cu0;Z)V

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    instance-of v0, p2, Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 11
    check-cast p2, Lcom/android/tools/r8/internal/vt0;

    sget-object p1, Lcom/android/tools/r8/internal/ku0;->a:Lcom/android/tools/r8/internal/Wt0;

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Vt0;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/Vt0;-><init>(Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/vt0;)V

    .line 13
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pz;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method
