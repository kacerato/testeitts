.class public Lcom/google/common/reflect/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "Lcom/google/common/reflect/n$d;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/n$c;->a:Lcom/google/common/collect/i1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "Lcom/google/common/reflect/n$d;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/reflect/n$c;->a:Lcom/google/common/collect/i1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/n$c$a;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/reflect/n$c$a;-><init>(Lcom/google/common/reflect/n$c;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/n$c;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/n$c;->b(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/n$c;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/n$c;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/google/common/reflect/n$c;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/n$c;->a:Lcom/google/common/collect/i1;

    new-instance v1, Lcom/google/common/reflect/n$d;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/n$d;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    new-instance v2, Lcom/google/common/reflect/n;

    invoke-direct {v2, p2, v1}, Lcom/google/common/reflect/n;-><init>(Lcom/google/common/reflect/n$c;Lcom/google/common/reflect/n$a;)V

    invoke-static {v2, v0}, Lcom/google/common/reflect/n;->c(Lcom/google/common/reflect/n;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p2

    sget-boolean v1, Lcom/google/common/reflect/s$e;->a:Z

    if-eqz v1, :cond_1

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/common/reflect/s;->k(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/common/reflect/n;

    invoke-direct {p1, p2, v1}, Lcom/google/common/reflect/n;-><init>(Lcom/google/common/reflect/n$c;Lcom/google/common/reflect/n$a;)V

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/Map;)Lcom/google/common/reflect/n$c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/n$d;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/n$c;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/n$c;->a:Lcom/google/common/collect/i1;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/i1$b;->l(Ljava/util/Map;)Lcom/google/common/collect/i1$b;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/n$d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1}, Lcom/google/common/reflect/n$d;->a(Ljava/lang/reflect/Type;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Type variable %s bound to itself"

    invoke-static {v3, v4, v2}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/reflect/n$c;

    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/common/reflect/n$c;-><init>(Lcom/google/common/collect/i1;)V

    return-object p1
.end method
