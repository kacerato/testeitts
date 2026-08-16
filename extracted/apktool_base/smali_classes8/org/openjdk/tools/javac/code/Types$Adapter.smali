.class Lorg/openjdk/tools/javac/code/Types$Adapter;
.super Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$SimpleVisitor<",
        "Ljava/lang/Void;",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Types$TypePair;",
            ">;"
        }
    .end annotation
.end field

.field from:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;

.field to:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->from:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->to:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    return-void
.end method

.method private adaptRecursive(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/code/Types$TypePair;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/code/Types$TypePair;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    .line 2
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private adaptRecursive(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/code/Types$Adapter;->adaptRecursive(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    .line 9
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    .line 10
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public adapt(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->from:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->to:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    iput-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->adaptRecursive(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->adaptRecursive(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->wildLowerBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p2}, Lorg/openjdk/tools/javac/code/Types;->wildLowerBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p2}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/code/Types$AdaptFailure;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/code/Types$AdaptFailure;-><init>()V

    throw p1

    .line 9
    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->from:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->to:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 11
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->adaptRecursive(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->wildLowerBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Adapter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->wildLowerBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Adapter;->adaptRecursive(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
