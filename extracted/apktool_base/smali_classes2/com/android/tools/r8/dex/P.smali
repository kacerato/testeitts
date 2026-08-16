.class public final Lcom/android/tools/r8/dex/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, p2, v0, v3, v2}, Lcom/android/tools/r8/dex/P;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;)V

    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-static {p1, p2, v0, v6, v2}, Lcom/android/tools/r8/dex/P;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/android/tools/r8/dex/P;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/dex/P;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p3, v0, :cond_0

    move-object p0, p4

    goto :goto_0

    :cond_0
    invoke-interface {p0, p3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lu/V;

    invoke-direct {p1}, Lu/V;-><init>()V

    .line 6
    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 7
    invoke-interface {p0, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H2;)Ljava/util/Collection;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Collection;
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/dex/P;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/P;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/P;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method
