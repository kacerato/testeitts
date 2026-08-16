.class Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/TreeMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationBuilder"
.end annotation


# instance fields
.field result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field final synthetic this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public translate(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->visitCompoundInternal(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->visitTypeCompoundInternal(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    .line 2
    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public visitArray(Lorg/openjdk/tools/javac/code/Attribute$Array;)V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method

.method public visitClass(Lorg/openjdk/tools/javac/code/Attribute$Class;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Class;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassLiteral(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method

.method public visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->visitTypeCompoundInternal(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->visitCompoundInternal(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    return-void
.end method

.method public visitCompoundInternal(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v2

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Annotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method

.method public visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method

.method public visitError(Lorg/openjdk/tools/javac/code/Attribute$Error;)V
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous()Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method

.method public visitTypeCompoundInternal(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v2

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    return-object p1
.end method
