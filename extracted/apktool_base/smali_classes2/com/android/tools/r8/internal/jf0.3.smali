.class public final Lcom/android/tools/r8/internal/jf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b6;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r60;

.field public final b:Lcom/android/tools/r8/internal/r60;

.field public final c:Lcom/android/tools/r8/internal/V50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/Of1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Of1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jf0;->a:Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/Pf1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Pf1;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/jf0;->b:Lcom/android/tools/r8/internal/r60;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/tools/r8/internal/T50;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-instance v0, Lcom/android/tools/r8/internal/V50;

    invoke-direct {v0, v3, v2}, Lcom/android/tools/r8/internal/V50;-><init>(Z[Lcom/android/tools/r8/internal/T50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jf0;->c:Lcom/android/tools/r8/internal/V50;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/hj;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jS;)Z
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/jf0;->c:Lcom/android/tools/r8/internal/V50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/V50;->a(Lcom/android/tools/r8/internal/jS;)Lcom/android/tools/r8/internal/yV;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/jf0;->a:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v3, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v2, v2, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->N()Lcom/android/tools/r8/internal/hj;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/internal/jf0;->b:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v3, v3, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    return v5

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 13
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 14
    sget-boolean v6, Lcom/android/tools/r8/internal/jf0;->d:Z

    if-nez v6, :cond_3

    if-ne v4, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    move v0, v1

    .line 15
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 16
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 17
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/B60;)V

    move v0, v5

    move-object v4, v6

    goto :goto_1

    .line 20
    :cond_5
    :goto_2
    new-instance v3, Lcom/android/tools/r8/internal/Qf1;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Qf1;-><init>(Lcom/android/tools/r8/internal/hj;)V

    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/s70;->d(Ljava/util/function/Predicate;)V

    if-eqz v0, :cond_6

    .line 21
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 22
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    return v5

    :cond_6
    return v1
.end method
