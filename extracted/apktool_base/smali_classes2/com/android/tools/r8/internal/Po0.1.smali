.class public final Lcom/android/tools/r8/internal/Po0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b6;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r60;

.field public final b:Lcom/android/tools/r8/internal/r60;

.field public final c:Lcom/android/tools/r8/internal/V50;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/FR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FR0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/U50;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Po0;->a:Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/uK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/uK0;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Po0;->b:Lcom/android/tools/r8/internal/r60;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/tools/r8/internal/T50;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-instance v0, Lcom/android/tools/r8/internal/V50;

    invoke-direct {v0, v3, v2}, Lcom/android/tools/r8/internal/V50;-><init>(Z[Lcom/android/tools/r8/internal/T50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Po0;->c:Lcom/android/tools/r8/internal/V50;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jS;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Po0;->c:Lcom/android/tools/r8/internal/V50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/V50;->a(Lcom/android/tools/r8/internal/jS;)Lcom/android/tools/r8/internal/yV;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Po0;->a:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v2, v2, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->M0()Lcom/android/tools/r8/internal/Oo0;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Po0;->b:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v3, v3, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v0

    iget-object v3, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v5, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    iget-object v5, v3, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    iget-object v3, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    iget-object v3, v1, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iput-object v2, v1, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    invoke-static {p1, v4}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/jS;I)V

    return v4

    :cond_2
    :goto_0
    return v1
.end method
