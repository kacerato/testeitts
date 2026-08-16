.class final Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypeAnnotationsValidator"
.end annotation


# instance fields
.field private final sigOnly:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->sigOnly:Z

    return-void
.end method

.method private checkForDeclarationAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {v1, v2, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->annotationTargetType(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->AnnotationTypeNotApplicableToType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 9

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitiveOrVoid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move-object v2, p1

    move v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_12

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v6

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v6, v4

    :goto_1
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v7, v8}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_3
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    if-eqz p2, :cond_1

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_4
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_9

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    if-eqz p2, :cond_5

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "cant.type.annotate.scoping.1"

    invoke-virtual {v1, v3, v6, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "cant.type.annotate.scoping"

    invoke-virtual {v3, v5, v6, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move v1, v4

    :cond_8
    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    :goto_4
    move v1, v4

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->WILDCARD:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v1, v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_c

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->getBound()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getExtendsBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->SUPER_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_a

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->getBound()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getSuperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_4

    :cond_d
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v1, v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->getType()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->getComponentType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_4

    :cond_e
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEUNION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v1, v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->getTypeAlternatives()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v3, v5}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_5

    :cond_f
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEINTERSECTION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v1, v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->getBounds()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v3, v5}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_6

    :cond_10
    invoke-interface {v2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    if-eq v3, v5, :cond_a

    invoke-interface {v2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->ERRONEOUS:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_11

    goto/16 :goto_4

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with kind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " within: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    return-void
.end method


# virtual methods
.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Check;->validateTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Z)V

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->sigOnly:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->sigOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->checkForDeclarationAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->sigOnly:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_0
    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->checkForDeclarationAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_2

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->checkForDeclarationAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->checkForDeclarationAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->validateTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->validateAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;->sigOnly:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_1
    return-void
.end method
