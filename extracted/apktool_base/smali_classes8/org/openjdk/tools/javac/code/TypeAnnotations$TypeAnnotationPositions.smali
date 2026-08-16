.class Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeAnnotationPositions"
.end annotation


# instance fields
.field private currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

.field private frames:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field private isInClass:Z

.field private final sigOnly:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/TypeAnnotations;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->this$0:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->isInClass:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    return-void
.end method

.method private copyNewClassAnnotationsToOwner(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    new-instance v4, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {v4, v5, v3, p1}, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method private findPosition(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    new-instance v7, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->setTypeAnnotationPos(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    :cond_0
    return-void
.end method

.method private findTypeCompoundPosition(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    new-instance v7, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iput-object p1, p3, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private locateNestedTypes(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->NONE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->ERROR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private methodParamIndex(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")I"
        }
    .end annotation

    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-eq v0, v2, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "methodParamIndex expected to find method or lambda for param: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method private peek2()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0
.end method

.method private resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Could not determine type argument position of tree "

    const-string v2, "Could not determine position of tree "

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, " within frame "

    packed-switch v0, :pswitch_data_0

    new-instance p3, Ljava/lang/AssertionError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unresolved frame: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " of kind: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n    Looking for tree: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :pswitch_0
    iget-object v3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {p6, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v6

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p3, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->unknown:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->getMethodSelect()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object p5, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "could not determine symbol for {"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_3
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;

    iget-object v3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p3

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object v3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-ne p2, p1, :cond_4

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->TYPE_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->WILDCARD:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->locateNestedTypes(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p6

    :cond_4
    :goto_0
    move-object v6, p6

    iget-object v3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_6
    move-object p1, p2

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p5

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p5, v0, :cond_5

    iget-object p5, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p5, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :cond_5
    sget-object p5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p5, p5, v0

    if-eq p5, v4, :cond_b

    if-eq p5, v3, :cond_a

    const/4 v0, 0x3

    if-eq p5, v0, :cond_8

    const/4 p3, 0x4

    if-eq p5, p3, :cond_7

    const/4 p3, 0x5

    if-ne p5, p3, :cond_6

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->resourceVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Found unexpected type annotation for variable: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " with kind: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_7
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exceptionParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iget-object p5, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->this$0:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object p5, p5, Lorg/openjdk/tools/javac/code/TypeAnnotations;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p5, p5, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReceiver(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-direct {p0, p3, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->methodParamIndex(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->field(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->localVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p5, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p5, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_d

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {p5, p3}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    move-object p5, p2

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v1, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v4

    goto :goto_1

    :cond_c
    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_1
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p5

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p5, p4, p3, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeParameterBound(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;III)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object p5, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p5, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p5

    if-eqz p5, :cond_f

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p5, p5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {p5, p3}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    move-object p5, p2

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v1, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v4

    goto :goto_2

    :cond_e
    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_2
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p5

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p5, p4, p3, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodTypeParameterBound(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;III)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p3, Ljava/lang/AssertionError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :pswitch_8
    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {p6, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    iget-object p2, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object v6, p1

    move-object v3, p2

    :goto_3
    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object p2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    sget-object p2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v6, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p2

    move-object v3, p1

    move-object v6, p2

    goto :goto_3

    :cond_10
    sget-object p2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object v3, p1

    goto :goto_3

    :cond_11
    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_9
    move-object p3, p2

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const-string v0, " for tree "

    const-string v2, "Unknown method reference mode "

    if-ne p5, p1, :cond_14

    sget-object p5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

    iget-object v1, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p5, p5, v1

    if-eq p5, v4, :cond_13

    if-ne p5, v3, :cond_12

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorRef(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_12
    new-instance p4, Ljava/lang/AssertionError;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p4

    :cond_13
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodRef(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_14
    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    if-eqz p5, :cond_17

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_17

    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p5

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

    iget-object v6, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v4, :cond_16

    if-ne v1, v3, :cond_15

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p5, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorRefTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p4, Ljava/lang/AssertionError;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p4

    :cond_16
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p5, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodRefTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_17
    new-instance p3, Ljava/lang/AssertionError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :pswitch_a
    iget-object v3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object p3, p2

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v0, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-ne v0, p1, :cond_18

    :goto_4
    move-object v6, p6

    goto :goto_6

    :cond_18
    iget-object v0, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p2, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    new-instance p2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {p2, v0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V

    invoke-virtual {p6, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    iget-object p2, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz p2, :cond_19

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object p6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_5

    :cond_19
    iget-object p2, p3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_5
    invoke-direct {p0, p2, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->locateNestedTypes(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p6

    goto :goto_4

    :goto_6
    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->resolveFrame(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;ILorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_1a
    new-instance p3, Ljava/lang/AssertionError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :pswitch_b
    move-object p3, p2

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1b

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodThrows(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_1b
    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-ne p5, p1, :cond_1c

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReturn(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_1c
    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1d

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodTypeParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_1d
    new-instance p3, Ljava/lang/AssertionError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :pswitch_c
    move-object p3, p2

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-ne p5, p1, :cond_1e

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_1e
    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1f

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_1f
    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_20

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_20
    new-instance p3, Ljava/lang/AssertionError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :pswitch_d
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_e
    move-object p3, p2

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz p5, :cond_22

    iget-object p3, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_21

    iget-object p3, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_21
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_22
    iget-object p5, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p5, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_23

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :cond_23
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->instanceOf(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, p4, p5, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeCast(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private rewriteArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ArrayType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type$ArrayType;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    move-object v2, v0

    :goto_0
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    new-instance v3, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-direct {v3, p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type$ArrayType;)V

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->ANNOTATIONS:Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/TypeMetadata;->without(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v4

    new-instance v5, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    invoke-direct {v5, v3}, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/TypeMetadata;->combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Type;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v3, Lorg/openjdk/tools/javac/code/TypeMetadata;

    new-instance v4, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    invoke-direct {v4, p2}, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/code/TypeMetadata;-><init>(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Type;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_2
    iput-object p1, v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    if-nez v2, :cond_3

    iput-object p3, p2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    :cond_3
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iput-object v1, p2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    .locals 10

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType:[I

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->this$0:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    invoke-virtual {v6, v4, p3}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->annotationTargetType(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4, p4}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->toTypeCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p0, v4, p4}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->toTypeCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->resetAnnotations()V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->setDeclarationAttributes(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    if-nez p2, :cond_5

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    move-object v7, v0

    move-object v8, v0

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->typeWithAnnotations(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    return-void

    :cond_5
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->typeWithAnnotations(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p2

    sget-object p4, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p2, p4, :cond_6

    iget-object p2, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object p2

    iput-object p1, p2, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_3

    :cond_6
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p2

    sget-object p4, Lorg/openjdk/javax/lang/model/element/ElementKind;->PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p2, p4, :cond_a

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    if-nez p2, :cond_a

    iput-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    iget-object p4, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->this$0:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/TypeAnnotations;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object p2

    iput-object p1, p2, Lorg/openjdk/tools/javac/code/Type$MethodType;->recvtype:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_3

    :cond_7
    iget-object p2, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object p2

    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_1
    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v3, p3, :cond_8

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_a
    iput-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_3
    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p1

    sget-object p2, Lorg/openjdk/javax/lang/model/element/ElementKind;->PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p1, p2, :cond_b

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p1

    sget-object p2, Lorg/openjdk/javax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p1, p2, :cond_b

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p1

    sget-object p2, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p1, p2, :cond_b

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p1

    sget-object p2, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p1, p2, :cond_e

    :cond_b
    iget-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p1

    const-wide/32 v1, 0x100000

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-eqz p4, :cond_d

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v1, 0x8

    and-long/2addr p1, v1

    cmp-long p1, p1, v3

    if-eqz p1, :cond_c

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendClassInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_4

    :cond_d
    iget-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :cond_e
    :goto_4
    return-void
.end method

.method private setTypeAnnotationPos(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;",
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

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iput-object p2, v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private toTypeCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;-><init>(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    return-object v0
.end method

.method private typeWithAnnotations(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;Lorg/openjdk/tools/javac/code/Type;)V

    .line 45
    invoke-virtual {p1, v0, p3}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method private typeWithAnnotations(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-direct {p0, p2, p3, p5}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->rewriteArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->UNION:Lorg/openjdk/javax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 7
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    .line 8
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 9
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->typeWithAnnotations(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    .line 10
    iput-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p2

    .line 11
    :cond_3
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object p5

    move-object v1, p1

    move-object v0, p2

    :goto_0
    if-eqz p5, :cond_7

    .line 12
    invoke-interface {p5}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/element/ElementKind;->PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_7

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->NONE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_7

    .line 14
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->ERROR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_7

    .line 15
    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/source/tree/Tree$Kind;->MEMBER_SELECT:Lorg/openjdk/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_4

    .line 16
    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    if-eq v3, v5, :cond_4

    .line 17
    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_7

    .line 18
    :cond_4
    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    if-ne v3, v4, :cond_5

    .line 19
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 20
    invoke-interface {p5}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p5

    .line 21
    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_5
    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_6

    .line 23
    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->getType()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_6
    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->getUnderlyingType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_a

    .line 25
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 26
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_9

    const/4 p5, 0x1

    if-eq p3, p5, :cond_8

    .line 28
    iget-object p3, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->this$0:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string p5, "cant.type.annotate.scoping"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p1, p5, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 29
    :cond_8
    iget-object p3, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->this$0:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string p5, "cant.type.annotate.scoping.1"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p1, p5, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_1
    return-object p2

    .line 30
    :cond_a
    new-instance p4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move-object v1, v0

    :cond_b
    :goto_2
    if-eqz p5, :cond_c

    .line 31
    invoke-interface {p5}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/element/ElementKind;->PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_c

    if-eqz v1, :cond_c

    .line 32
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->NONE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_c

    .line 33
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v5, Lorg/openjdk/javax/lang/model/type/TypeKind;->ERROR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v3, v5, :cond_c

    .line 34
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    .line 35
    invoke-interface {p5}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p5

    if-eqz v1, :cond_b

    .line 36
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v3

    if-eq v3, v4, :cond_b

    .line 37
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {p4, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p4

    goto :goto_2

    .line 38
    :cond_c
    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result p5

    if-eqz p5, :cond_d

    .line 39
    invoke-virtual {p3, v2}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    .line 40
    iget-object p5, p5, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    .line 41
    iget-object v1, p5, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    invoke-virtual {v1, p4}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    iput-object p4, p5, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    .line 42
    :cond_d
    invoke-direct {p0, p2, v0, p3}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->typeWithAnnotations(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    .line 43
    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p2
.end method


# virtual methods
.method public pop()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    return-object v1
.end method

.method public push(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->frames:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->push(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :try_start_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": sigOnly: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->push(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p1, p1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->findPosition(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->isInClass:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->isInClass:Z

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {p1, v2, v4}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->push(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v5, v6, v3, v4}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    return-void

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    throw p1
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v0, :cond_0

    const-string v0, "Visiting tree node before memberEnter"

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReturn(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReturn(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    :cond_2
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReceiver(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->push(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v1, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodParameter(II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->push(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :try_start_1
    iget-object v4, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v4, v5, v2, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->pop()Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_4

    :cond_6
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_4
    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p1, p1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->findPosition(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    if-eqz v2, :cond_0

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget v5, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v3, v4, v5}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v4, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->setTypeAnnotationPos(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_4

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-direct {p0, v0, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->locateNestedTypes(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0, v3, v4}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v3, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->setTypeAnnotationPos(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    iget-object v0, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_3
    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-ne v1, v2, :cond_0

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    :goto_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, v4, v2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->copyNewClassAnnotationsToOwner(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine position of tree "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 2

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->peek2()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->findPosition(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-nez v0, :cond_1

    const-string v0, "Visiting tree node before memberEnter"

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    if-eqz v0, :cond_8

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->field(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, v3, v2, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->localVariable(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, v3, v2, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exceptionParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, v3, v2, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->currentLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->resourceVariable(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, v3, v2, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->separateAnnotationsKinds(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "Unhandled variable kind"

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_8
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->sigOnly:Z

    if-nez v0, :cond_9

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_9
    return-void
.end method
