.class Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;
.super Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/InferenceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReachabilityVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$UnaryVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field equiv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field min:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field minMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->equiv:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->min:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->minMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isEquiv(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Z
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    filled-new-array {v5}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    if-ne v5, p3, :cond_0

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    :cond_0
    filled-new-array {v5}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->complement()Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v8

    if-ne v5, v8, :cond_1

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v5}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v7, v6}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public scan(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/comp/w0;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/w0;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    .line 4
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    .line 3
    sget-object p2, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Void;)Ljava/lang/Void;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->min:Ljava/util/Set;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->minMap:Ljava/util/Map;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 4
    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 5
    filled-new-array {v3}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    .line 6
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    .line 7
    sget-object v7, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 8
    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, v5, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->isEquiv(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->equiv:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->minMap:Ljava/util/Map;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
