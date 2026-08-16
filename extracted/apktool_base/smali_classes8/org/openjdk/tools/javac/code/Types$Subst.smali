.class Lorg/openjdk/tools/javac/code/Types$Subst;
.super Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Subst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field from:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;

.field to:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;-><init>()V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result p1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    :goto_0
    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->from:Lorg/openjdk/tools/javac/util/List;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->to:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Subst;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Subst;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;->visit(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    if-ne p2, v1, :cond_1

    return-object p1

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->makeIntersectionType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Subst;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Subst;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->to:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Types;->newInstances(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ForAll;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    .line 6
    invoke-virtual {v1, v2, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    move-object p1, v0

    .line 7
    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->from:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->to:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->substBounds(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 8
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    if-ne p2, v1, :cond_1

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    if-ne v0, v2, :cond_1

    return-object p1

    :cond_1
    if-ne p2, v1, :cond_2

    .line 10
    new-instance p1, Lorg/openjdk/tools/javac/code/Types$Subst$1;

    invoke-direct {p1, p0, p2, v0}, Lorg/openjdk/tools/javac/code/Types$Subst$1;-><init>(Lorg/openjdk/tools/javac/code/Types$Subst;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    .line 11
    :cond_2
    new-instance v1, Lorg/openjdk/tools/javac/code/Types$Subst$2;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-direct {v1, p0, p2, p1}, Lorg/openjdk/tools/javac/code/Types$Subst$2;-><init>(Lorg/openjdk/tools/javac/code/Types$Subst;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Subst;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->from:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->to:Lorg/openjdk/tools/javac/util/List;

    .line 3
    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type;->equalsIgnoreMetadata(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->withTypeVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Subst;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Subst;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    if-eq p2, p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isExtendsBound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Subst;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    return-object p2
.end method
