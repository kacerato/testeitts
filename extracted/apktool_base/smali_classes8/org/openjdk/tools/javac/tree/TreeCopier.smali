.class public Lorg/openjdk/tools/javac/tree/TreeCopier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/source/tree/TreeVisitor<",
        "Lorg/openjdk/tools/javac/tree/JCTree;",
        "TP;>;"
    }
.end annotation


# instance fields
.field private M:Lorg/openjdk/tools/javac/tree/TreeMaker;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-void
.end method


# virtual methods
.method public copy(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;TP;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p1
.end method

.method public copy(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;TP;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 6
    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AnnotatedTypeTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/tree/Tree$Kind;->TYPE_ANNOTATION:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p2

    .line 7
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object p2

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Annotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p2

    .line 9
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object p2
.end method

.method public bridge synthetic visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ArrayAccessTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Indexed(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitArrayType(Lorg/openjdk/source/tree/ArrayTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/source/tree/ArrayTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ArrayTypeTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AssertTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AssignmentTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/BinaryTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitBlock(Lorg/openjdk/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lorg/openjdk/source/tree/BlockTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/BlockTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    invoke-virtual {v0, v1, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitBreak(Lorg/openjdk/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitBreak(Lorg/openjdk/source/tree/BreakTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitBreak(Lorg/openjdk/source/tree/BreakTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/BreakTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->label:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Break(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CaseTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CatchTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ClassTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 6
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    .line 7
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    .line 8
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CompoundAssignmentTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ConditionalExpressionTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Conditional(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitContinue(Lorg/openjdk/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitContinue(Lorg/openjdk/source/tree/ContinueTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitContinue(Lorg/openjdk/source/tree/ContinueTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ContinueTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->label:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Continue(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/DoWhileLoopTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->DoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitEmptyStatement(Lorg/openjdk/source/tree/EmptyStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitEmptyStatement(Lorg/openjdk/source/tree/EmptyStatementTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitEmptyStatement(Lorg/openjdk/source/tree/EmptyStatementTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/EmptyStatementTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/EnhancedForLoopTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitErroneous(Lorg/openjdk/source/tree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitErroneous(Lorg/openjdk/source/tree/ErroneousTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitErroneous(Lorg/openjdk/source/tree/ErroneousTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ErroneousTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;->errs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExports;

    move-result-object p1

    return-object p1
.end method

.method public visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExports;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExportsTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExports;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exports(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExports;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExpressionStatementTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ForLoopTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v3, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    .line 7
    iget-object v3, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ForLoop(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IdentifierTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IfTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ImportTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Import(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/InstanceOfTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitIntersectionType(Lorg/openjdk/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitIntersectionType(Lorg/openjdk/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersectionType(Lorg/openjdk/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IntersectionTypeTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIntersection(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/LabeledStatementTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Labelled(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/LambdaExpressionTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Lambda(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/LiteralTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberReferenceTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2, p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Reference(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberSelectTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MethodTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    .line 6
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    .line 7
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    .line 8
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    .line 9
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    .line 10
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 11
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual/range {v1 .. v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MethodInvocationTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ModifiersTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    invoke-virtual {v0, v1, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ModuleTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->getModuleType()Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    move-result-object p1

    invoke-virtual {v2, p2, p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/NewArrayTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/NewClassTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 6
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    .line 7
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 8
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;

    move-result-object p1

    return-object p1
.end method

.method public visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/OpensTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Opens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitOther(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitOther(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitOther(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/Tree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 3
    sget-object v1, Lorg/openjdk/tools/javac/tree/TreeCopier$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->LetExpr(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tree tag: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/PackageTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->PackageDecl(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ParameterizedTypeTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitParenthesized(Lorg/openjdk/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitParenthesized(Lorg/openjdk/source/tree/ParenthesizedTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitParenthesized(Lorg/openjdk/source/tree/ParenthesizedTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ParenthesizedTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Parens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/PrimitiveTypeTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ProvidesTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->serviceName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->implNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Provides(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;

    move-result-object p1

    return-object p1
.end method

.method public visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/RequiresTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-boolean v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isTransitive:Z

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isStaticPhase:Z

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Requires(ZZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitReturn(Lorg/openjdk/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitReturn(Lorg/openjdk/source/tree/ReturnTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lorg/openjdk/source/tree/ReturnTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ReturnTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/SwitchTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/SynchronizedTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Synchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitThrow(Lorg/openjdk/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitThrow(Lorg/openjdk/source/tree/ThrowTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lorg/openjdk/source/tree/ThrowTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ThrowTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TryTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v3, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    .line 7
    iget-object v3, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TypeCastTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TypeParameterTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, p1, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeParameter(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnary(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitUnary(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/UnaryTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Unary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnionType(Lorg/openjdk/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitUnionType(Lorg/openjdk/source/tree/UnionTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitUnionType(Lorg/openjdk/source/tree/UnionTypeTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/UnionTypeTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeUnion(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUses(Lorg/openjdk/source/tree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitUses(Lorg/openjdk/source/tree/UsesTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCUses;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/source/tree/UsesTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCUses;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/UsesTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCUses;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Uses(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUses;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/VariableTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 7
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v0, p1, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 9
    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ReceiverVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/WhileLoopTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->WhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/WildcardTree;",
            "TP;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeCopier;->M:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    move-result-object p1

    return-object p1
.end method
