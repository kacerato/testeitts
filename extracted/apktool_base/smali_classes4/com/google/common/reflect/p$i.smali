.class public abstract Lcom/google/common/reflect/p$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/p$i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/reflect/p$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/p$i<",
            "Lcom/google/common/reflect/p<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/common/reflect/p$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/p$i<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/reflect/p$i$a;

    invoke-direct {v0}, Lcom/google/common/reflect/p$i$a;-><init>()V

    sput-object v0, Lcom/google/common/reflect/p$i;->a:Lcom/google/common/reflect/p$i;

    new-instance v0, Lcom/google/common/reflect/p$i$b;

    invoke-direct {v0}, Lcom/google/common/reflect/p$i$b;-><init>()V

    sput-object v0, Lcom/google/common/reflect/p$i;->b:Lcom/google/common/reflect/p$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/reflect/p$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/reflect/p$i;-><init>()V

    return-void
.end method

.method public static h(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/g1<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$i$d;

    invoke-direct {v0, p1, p0}, Lcom/google/common/reflect/p$i$d;-><init>(Ljava/util/Comparator;Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/Ordering;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/reflect/p$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p$i<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$i$c;

    invoke-direct {v0, p0, p0}, Lcom/google/common/reflect/p$i$c;-><init>(Lcom/google/common/reflect/p$i;Lcom/google/common/reflect/p$i;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$i;->f(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$i;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/google/common/reflect/p$i;->b(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/google/common/reflect/p$i;->b(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/g1<",
            "TK;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/common/reflect/p$i;->b(Ljava/lang/Object;Ljava/util/Map;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/reflect/p$i;->h(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/common/collect/g1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/g1<",
            "TK;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$i;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public abstract e(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method
