.class abstract Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SearchCriteriaToBtreeVisitorAdapter"
.end annotation


# instance fields
.field private final nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private final searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    return-void
.end method


# virtual methods
.method public abstract acceptResult(J)Z
.end method

.method public compare(J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->searchKey:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->isPrefixSearch()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->getSearchString()[C

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->comparePrefix([CZ)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->getSearchString()[C

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compareCompatibleWithIgnoreCase([C)I

    move-result p1

    return p1
.end method

.method public visit(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->requiresSpecificNodeType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->acceptsNodeType(S)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->searchKey:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->isMatchingCase()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->isPrefixSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->getSearchString()[C

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->comparePrefix([CZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->searchCriteria:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->getSearchString()[C

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare([CZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;->acceptResult(J)Z

    move-result p1

    return p1
.end method
