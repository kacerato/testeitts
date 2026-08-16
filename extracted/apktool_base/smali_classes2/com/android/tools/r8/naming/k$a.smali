.class public Lcom/android/tools/r8/naming/k$a;
.super Lcom/android/tools/r8/naming/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public g:Ljava/util/List;

.field public final h:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/naming/g;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$a;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$a;->f:Ljava/util/HashMap;

    sget-object v0, Lcom/android/tools/r8/naming/k;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$a;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/naming/k$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/naming/k$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/naming/k$a;->h:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;)Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/naming/k$b;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget p0, p0, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/V$c;)Lcom/android/tools/r8/naming/V;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/naming/V$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/naming/g;
    .locals 3

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->b()Lcom/android/tools/r8/naming/V$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->b()Lcom/android/tools/r8/naming/V$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->f:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/naming/m3;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/m3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)Lcom/android/tools/r8/naming/k$b;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/naming/k$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/naming/k$a;->e:Ljava/util/HashMap;

    new-instance p2, Lcom/android/tools/r8/naming/l3;

    invoke-direct {p2}, Lcom/android/tools/r8/naming/l3;-><init>()V

    invoke-virtual {p1, p4, p2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->g:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/naming/k;->h:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$a;->g:Ljava/util/List;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 17
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/naming/k$a;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    instance-of p1, p2, Lcom/android/tools/r8/naming/mappinginformation/a;

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/naming/k$a;->h:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->a:Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/naming/mappinginformation/a;

    .line 22
    iget-object p2, p2, Lcom/android/tools/r8/naming/mappinginformation/a;->a:Ljava/lang/String;

    .line 23
    invoke-interface {p1, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/V$b;)Z
    .locals 8

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$a;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 25
    :cond_0
    new-instance v1, Lcom/android/tools/r8/naming/j3;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/j3;-><init>()V

    .line 26
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 28
    :cond_1
    new-instance v1, Lcom/android/tools/r8/naming/k$c;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/k$c;-><init>(Ljava/util/List;)V

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/k$c;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$c;

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/naming/k3;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/k3;-><init>()V

    .line 31
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 34
    new-instance v1, Lcom/android/tools/r8/naming/M0;

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v2, v2, v4}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/naming/k$b;

    .line 37
    iget-object v7, v6, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v7, v1}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    iget-object v6, v6, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v7, v6, Lcom/android/tools/r8/naming/M0;->a:I

    iget v1, v1, Lcom/android/tools/r8/naming/M0;->b:I

    if-gt v7, v1, :cond_5

    .line 39
    sget-boolean p1, Lcom/android/tools/r8/naming/k$a;->i:Z

    if-eqz p1, :cond_4

    return v4

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    move-object v1, v6

    goto :goto_0

    :cond_6
    return v0
.end method
