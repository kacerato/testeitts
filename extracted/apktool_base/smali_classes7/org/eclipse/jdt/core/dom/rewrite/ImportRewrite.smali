.class public final Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;,
        Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;
    }
.end annotation


# static fields
.field private static final JLS8_INTERNAL:I = 0x8

.field private static final NORMAL_PREFIX:C = 'n'

.field private static final STATIC_PREFIX:C = 's'


# instance fields
.field private addedImports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;

.field private final compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

.field private createdImports:[Ljava/lang/String;

.field private createdStaticImports:[Ljava/lang/String;

.field private final defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

.field private final existingImports:Ljava/util/List;

.field private filterImplicitImports:Z

.field private importOnDemandThreshold:I

.field private importOrder:[Ljava/lang/String;

.field private final importsKindMap:Ljava/util/Map;

.field private removedImports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final restoreExistingImports:Z

.field private staticExplicitSimpleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private staticImportOnDemandThreshold:I

.field private typeExplicitSimpleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useContextToFilterImplicitImports:Z


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->existingImports:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, p2

    iput-boolean p3, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->restoreExistingImports:Z

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->existingImports:Ljava/util/List;

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->restoreExistingImports:Z

    :goto_0
    iput-boolean p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterImplicitImports:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->useContextToFilterImplicitImports:Z

    new-instance p1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$1;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$1;-><init>(Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addedImports:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removedImports:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->typeExplicitSimpleNames:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->staticExplicitSimpleNames:Ljava/util/Set;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdImports:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdStaticImports:[Ljava/lang/String;

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importOrder:[Ljava/lang/String;

    const/16 p1, 0x63

    iput p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importOnDemandThreshold:I

    iput p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->staticImportOnDemandThreshold:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importsKindMap:Ljava/util/Map;

    return-void
.end method

.method private addAnnotation(Lorg/eclipse/jdt/core/dom/AST;Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 5

    .line 25
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 26
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/AST;->newBooleanLiteral(Z)Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_b

    .line 28
    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 29
    :cond_1
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newCharacterLiteral()Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    move-result-object p1

    .line 31
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->setCharValue(C)V

    return-object p1

    .line 32
    :cond_2
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newTypeLiteral()Lorg/eclipse/jdt/core/dom/TypeLiteral;

    move-result-object v0

    .line 34
    check-cast p2, Lorg/eclipse/jdt/core/dom/ITypeBinding;

    sget-object v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->OTHER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, p2, p1, p3, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/TypeLiteral;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v0

    .line 35
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newStringLiteral()Lorg/eclipse/jdt/core/dom/StringLiteral;

    move-result-object p1

    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/StringLiteral;->setLiteralValue(Ljava/lang/String;)V

    return-object p1

    .line 38
    :cond_4
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/IVariableBinding;

    if-eqz v0, :cond_6

    .line 39
    check-cast p2, Lorg/eclipse/jdt/core/dom/IVariableBinding;

    .line 40
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newFieldAccess()Lorg/eclipse/jdt/core/dom/FieldAccess;

    move-result-object v0

    .line 41
    invoke-interface {p2}, Lorg/eclipse/jdt/core/dom/IVariableBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/FieldAccess;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 42
    invoke-interface {p2}, Lorg/eclipse/jdt/core/dom/IVariableBinding;->getType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p2

    sget-object v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->OTHER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, p2, p1, p3, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p2

    .line 43
    instance-of p3, p2, Lorg/eclipse/jdt/core/dom/SimpleType;

    if-eqz p3, :cond_5

    .line 44
    check-cast p2, Lorg/eclipse/jdt/core/dom/SimpleType;

    .line 45
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p3

    .line 46
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    goto :goto_0

    .line 47
    :cond_5
    const-string p2, "invalid"

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p3

    .line 48
    :goto_0
    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/core/dom/FieldAccess;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0

    .line 49
    :cond_6
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    if-eqz v0, :cond_7

    .line 50
    check-cast p2, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-virtual {p0, p2, p1, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addAnnotation(Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object p1

    return-object p1

    .line 51
    :cond_7
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 52
    check-cast p2, [Ljava/lang/Object;

    .line 53
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 54
    aget-object p2, p2, v1

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addAnnotation(Lorg/eclipse/jdt/core/dom/AST;Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 55
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newArrayInitializer()Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object v2

    .line 57
    array-length v3, p2

    :goto_1
    if-lt v1, v3, :cond_9

    return-object v0

    .line 58
    :cond_9
    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addAnnotation(Lorg/eclipse/jdt/core/dom/AST;Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_b
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/AST;->newNumberLiteral(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/NumberLiteral;

    move-result-object p1

    return-object p1
.end method

.method private addEntry(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->existingImports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removedImports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addedImports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private annotateList(Ljava/util/List;[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;Lorg/eclipse/jdt/core/dom/ITypeBinding;)V
    .locals 0

    if-nez p4, :cond_0

    iget-object p4, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    :cond_0
    invoke-virtual {p4, p2, p5, p6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;->removeRedundantTypeAnnotations([Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;Lorg/eclipse/jdt/core/dom/ITypeBinding;)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p2

    const/4 p5, 0x0

    :goto_0
    array-length p6, p2

    if-lt p5, p6, :cond_1

    return-void

    :cond_1
    aget-object p6, p2, p5

    invoke-virtual {p0, p6, p3, p4}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addAnnotation(Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object p6

    if-eqz p6, :cond_2

    invoke-interface {p1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0
.end method

.method private annotateType(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    instance-of v0, p4, Lorg/eclipse/jdt/core/dom/AnnotatableType;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/eclipse/jdt/core/dom/AnnotatableType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->annotateList(Ljava/util/List;[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;Lorg/eclipse/jdt/core/dom/ITypeBinding;)V

    :cond_0
    return-object p4
.end method

.method private buildImportRewriteConfiguration()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->restoreExistingImports:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->preservingOriginalImports()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->discardingOriginalImports()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importOrder:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->setImportOrder(Ljava/util/List;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    iget v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importOnDemandThreshold:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->setTypeOnDemandThreshold(I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    iget v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->staticImportOnDemandThreshold:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->setStaticOnDemandThreshold(I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->useContextToFilterImplicitImports:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->BY_PACKAGE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->BY_PACKAGE_AND_CONTAINING_TYPE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    :goto_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->setTypeContainerSorting(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->BY_PACKAGE_AND_CONTAINING_TYPE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->setStaticContainerSorting(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterImplicitImports:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;->JAVA_LANG_AND_CU_PACKAGE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    :goto_2
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->setImplicitImportIdentification(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->build()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private buildType(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 8

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p5

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isMember()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v2

    sget-object v7, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->OTHER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->buildType(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p2

    :goto_0
    move-object v4, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;ZLorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1
.end method

.method private checkAnnotationAndGenerics(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v2

    if-eqz v1, :cond_1

    array-length v1, v1

    if-gtz v1, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    array-length v1, v2

    if-lez v1, :cond_3

    :cond_2
    move-object v0, p1

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isMember()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static compareImport(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x2

    if-ne v0, p0, :cond_6

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr v0, p0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x2e

    if-eq p2, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    :goto_0
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method private containsNestedCapture(Ljava/lang/String;)Z
    .locals 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x21

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private containsNestedCapture(Lorg/eclipse/jdt/core/dom/ITypeBinding;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isTypeVariable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isCapture()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getWildcard()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->containsNestedCapture(Lorg/eclipse/jdt/core/dom/ITypeBinding;Z)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isWildcardType()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->containsNestedCapture(Lorg/eclipse/jdt/core/dom/ITypeBinding;Z)Z

    move-result p1

    return p1

    .line 6
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isArray()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->containsNestedCapture(Lorg/eclipse/jdt/core/dom/ITypeBinding;Z)Z

    move-result p1

    return p1

    .line 8
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    move p2, v0

    .line 9
    :goto_0
    array-length v1, p1

    if-lt p2, v1, :cond_5

    return v0

    .line 10
    :cond_5
    aget-object v1, p1, p2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->containsNestedCapture(Lorg/eclipse/jdt/core/dom/ITypeBinding;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v0
.end method

.method public static create(Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImports()[Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    aget-object v3, v1, v2

    .line 5
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IImportDeclaration;->getFlags()I

    move-result v4

    invoke-static {v4}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x73

    goto :goto_1

    :cond_1
    const/16 v4, 0x6e

    .line 6
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IImportDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 7
    :goto_2
    new-instance v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;

    invoke-direct {v1, p0, v0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;)V

    return-object v1

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Compilation unit must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lorg/eclipse/jdt/core/dom/CompilationUnit;Z)Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;
    .locals 6

    if-eqz p0, :cond_6

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 14
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    .line 15
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x73

    goto :goto_1

    :cond_1
    const/16 v5, 0x6e

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/Name;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isOnDemand()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    const/16 v3, 0x2e

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v3, 0x2a

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 22
    :goto_2
    new-instance v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v1, v0, p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;)V

    return-object v1

    .line 23
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AST must have been constructed from a Java element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AST must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createBaseType(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 8

    invoke-interface {p3}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawQualifiedName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v4, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v4, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    if-lez v3, :cond_3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newNameQualifiedType(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    move-result-object v0

    :goto_3
    move-object v7, v0

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->annotateList(Ljava/util/List;[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;Lorg/eclipse/jdt/core/dom/ITypeBinding;)V

    goto :goto_5

    :cond_4
    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object v7

    :goto_5
    return-object v7
.end method

.method private static filterFromList(Ljava/util/List;C)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;C)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getArrayType(Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 9

    invoke-interface {p4}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getDimensions()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/core/dom/AST;->newArrayType(Lorg/eclipse/jdt/core/dom/Type;I)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p4}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v4

    array-length v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_1

    move-object v7, p5

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->ARRAY_CONTENTS:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    move-object v7, v2

    :goto_1
    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->annotateList(Ljava/util/List;[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;Lorg/eclipse/jdt/core/dom/ITypeBinding;)V

    :cond_2
    invoke-interface {p4}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getComponentType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private static getRawName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRawQualifiedName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private internalAddImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v2

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    const-string v1, ""

    move-object v0, p1

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->toCode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    .line 7
    :cond_2
    invoke-virtual {p2, v1, v0, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;->findInContext(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    return-object p1

    :cond_3
    const/4 v1, 0x2

    const/16 v2, 0x6e

    if-ne p2, v1, :cond_4

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addEntry(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addEntry(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->typeExplicitSimpleNames:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private internalAddImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;ZLorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 7

    .line 11
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->toCode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object v0

    move-object v5, v0

    move-object v0, p1

    goto/16 :goto_1

    .line 13
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->normalizeTypeBinding(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14
    const-string p1, "invalid"

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isTypeVariable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object p1

    :cond_2
    :goto_0
    move-object v5, p1

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isWildcardType()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newWildcardType()Lorg/eclipse/jdt/core/dom/WildcardType;

    move-result-object p1

    .line 19
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isWildcardType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isCapture()Z

    move-result v2

    if-nez v2, :cond_2

    .line 21
    sget-object v2, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->TYPE_BOUND:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, v1, p2, p3, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    .line 22
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isUpperbound()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/core/dom/WildcardType;->setBound(Lorg/eclipse/jdt/core/dom/Type;Z)V

    goto :goto_0

    .line 23
    :cond_4
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isArray()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    sget-object v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->ARRAY_CONTENTS:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p6

    .line 25
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getArrayType(Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_6

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    .line 26
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->annotateType(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz p5, :cond_7

    .line 27
    invoke-direct {p0, p2, p3, v0, p6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createBaseType(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    goto :goto_4

    :cond_7
    if-eqz p4, :cond_8

    .line 28
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lorg/eclipse/jdt/core/dom/AST;->newQualifiedType(Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/QualifiedType;

    move-result-object p1

    :goto_2
    move-object v5, p1

    goto :goto_3

    .line 29
    :cond_8
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object p1

    goto :goto_2

    :goto_3
    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    .line 30
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->annotateType(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    .line 31
    :goto_4
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p4

    .line 32
    array-length p5, p4

    if-lez p5, :cond_b

    .line 33
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newParameterizedType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ParameterizedType;

    move-result-object p5

    .line 34
    invoke-virtual {p5}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object p6

    const/4 v0, 0x0

    move p1, v0

    .line 35
    :goto_5
    array-length v1, p4

    if-lt p1, v1, :cond_9

    move-object p1, p5

    goto :goto_7

    .line 36
    :cond_9
    aget-object v1, p4, p1

    .line 37
    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->containsNestedCapture(Lorg/eclipse/jdt/core/dom/ITypeBinding;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 38
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newWildcardType()Lorg/eclipse/jdt/core/dom/WildcardType;

    move-result-object v1

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 39
    :cond_a
    sget-object v2, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->TYPE_ARGUMENT:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, v1, p2, p3, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    return-object p1
.end method

.method private static normalizeTypeBinding(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isNullType()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "void"

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getInterfaces()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getSuperclass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getWildcard()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeEntry(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->existingImports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addedImports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removedImports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addAnnotation(Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Annotation;
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->OTHER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    .line 5
    const-string v2, "a"

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "invalid"

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;->getDeclaredMemberValuePairs()[Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    move-result-object p1

    .line 8
    array-length v0, p1

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newMarkerAnnotation()Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/Annotation;->setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V

    return-object p1

    .line 11
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    aget-object v0, p1, v3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newSingleMemberAnnotation()Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Annotation;->setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 14
    aget-object p1, p1, v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-direct {p0, p2, p1, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addAnnotation(Lorg/eclipse/jdt/core/dom/AST;Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->setValue(Lorg/eclipse/jdt/core/dom/Expression;)V

    :cond_2
    return-object v0

    .line 16
    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newNormalAnnotation()Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Annotation;->setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 18
    :goto_1
    array-length v1, p1

    if-lt v3, v1, :cond_4

    return-object v0

    .line 19
    :cond_4
    aget-object v1, p1, v3

    .line 20
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newMemberValuePair()Lorg/eclipse/jdt/core/dom/MemberValuePair;

    move-result-object v2

    .line 21
    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 22
    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-direct {p0, p2, v1, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addAnnotation(Lorg/eclipse/jdt/core/dom/AST;Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->setValue(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 24
    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public addImport(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3c

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x5b

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;
    .locals 5

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->isRecovered()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->normalizeTypeBinding(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    const-string p1, "invalid"

    return-object p1

    .line 5
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isWildcardType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isWildcardType()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isCapture()Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isUpperbound()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    const-string p1, " extends "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 11
    :cond_2
    const-string p1, " super "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :goto_0
    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getDimensions()I

    move-result p1

    :goto_1
    if-gtz p1, :cond_5

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_5
    const-string p2, "[]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 19
    :cond_6
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawQualifiedName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 21
    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    .line 23
    array-length v1, p1

    if-lez v1, :cond_a

    .line 24
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    move v0, v2

    .line 26
    :goto_2
    array-length v3, p1

    if-lt v0, v3, :cond_7

    const/16 p1, 0x3e

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    if-lez v0, :cond_8

    const/16 v3, 0x2c

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    :cond_8
    aget-object v3, p1, v0

    .line 31
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->containsNestedCapture(Lorg/eclipse/jdt/core/dom/ITypeBinding;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v3, 0x3f

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 33
    :cond_9
    invoke-virtual {p0, v3, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    return-object v0

    .line 34
    :cond_b
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :cond_c
    :goto_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    sget-object v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->UNKNOWN:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1
.end method

.method public addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 1

    .line 37
    sget-object v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->UNKNOWN:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1
.end method

.method public addImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 10

    .line 38
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->checkAnnotationAndGenerics(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->OTHER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, p4

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;ZLorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 41
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->buildType(Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    :cond_2
    return-object v5
.end method

.method public addImportFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImportFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1
.end method

.method public addImportFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 5

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getTypeSignatureKind(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown type signature kind: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :pswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImportFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newWildcardType()Lorg/eclipse/jdt/core/dom/WildcardType;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImportFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    const/16 p2, 0x2b

    if-ne v3, p2, :cond_0

    move v1, v2

    .line 9
    :cond_0
    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/WildcardType;->setBound(Lorg/eclipse/jdt/core/dom/Type;Z)V

    :cond_1
    return-object v0

    .line 10
    :pswitch_2
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getElementType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImportFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p3

    .line 11
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getArrayCount(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/core/dom/AST;->newArrayType(Lorg/eclipse/jdt/core/dom/Type;I)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_3
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_4
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->toCode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_2

    .line 17
    invoke-direct {p0, v2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->internalAddImport(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object v2

    .line 18
    :cond_2
    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getTypeArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 20
    array-length v2, p1

    if-lez v2, :cond_5

    .line 21
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/AST;->newParameterizedType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ParameterizedType;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object v3

    .line 23
    :goto_0
    array-length v0, p1

    if-lt v1, v0, :cond_3

    return-object v2

    .line 24
    :cond_3
    aget-object v0, p1, v1

    .line 25
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->containsNestedCapture(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 26
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AST;->newWildcardType()Lorg/eclipse/jdt/core/dom/WildcardType;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addImportFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid type signature: empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addStaticImport(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addStaticImport(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addStaticImport(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;
    .locals 5

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    if-nez p4, :cond_1

    .line 15
    iget-object p4, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p3, :cond_2

    move p3, v2

    goto :goto_0

    :cond_2
    move p3, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importsKindMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p4, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;->findInContext(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_3

    return-object v0

    :cond_3
    const/16 p3, 0x73

    if-ne p1, v2, :cond_4

    .line 18
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addEntry(Ljava/lang/String;)V

    :cond_4
    const/4 p4, 0x4

    if-ne p1, p4, :cond_5

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addEntry(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->staticExplicitSimpleNames:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p2
.end method

.method public addStaticImport(Lorg/eclipse/jdt/core/dom/IBinding;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addStaticImport(Lorg/eclipse/jdt/core/dom/IBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addStaticImport(Lorg/eclipse/jdt/core/dom/IBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/IVariableBinding;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/IVariableBinding;

    .line 5
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IVariableBinding;->isField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IVariableBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawQualifiedName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addStaticImport(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/IMethodBinding;

    if-eqz v0, :cond_1

    .line 9
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/IMethodBinding;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->getRawQualifiedName(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addStaticImport(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Binding must be a static field or method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final findInImports(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_1

    :cond_0
    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    iget-object v8, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->existingImports:Ljava/util/List;

    const/16 v9, 0x73

    if-ne v3, v5, :cond_2

    const/16 v10, 0x6e

    goto :goto_1

    :cond_2
    move v10, v9

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_2
    const/4 v12, 0x2

    const/16 v13, 0x2e

    if-gez v11, :cond_d

    iget-object v7, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v7

    if-ne v3, v5, :cond_c

    iget-boolean v3, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterImplicitImports:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->useContextToFilterImplicitImports:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/core/JavaCore;->removeJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v13}, Lorg/eclipse/jdt/internal/core/util/Util;->concatenateName(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v1, v2, v13}, Lorg/eclipse/jdt/internal/core/util/Util;->concatenateName(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_3
    iget-object v3, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    if-lt v4, v8, :cond_4

    goto :goto_8

    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-virtual {v9}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v5, v6

    :goto_4
    return v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :try_start_0
    iget-object v3, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    array-length v8, v3

    :goto_5
    if-lt v4, v8, :cond_8

    goto :goto_8

    :cond_8
    aget-object v9, v3, v4

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move v5, v6

    :goto_6
    return v5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    return v5

    :catch_0
    :cond_c
    :goto_8
    return v12

    :cond_d
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v10, v1, v2, v14}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compareImport(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eq v15, v12, :cond_10

    if-eqz v7, :cond_e

    if-ne v15, v5, :cond_10

    :cond_e
    if-eq v10, v9, :cond_f

    return v15

    :cond_f
    iget-object v12, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importsKindMap:Ljava/util/Map;

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_10

    iget-object v14, v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importsKindMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v15

    :cond_10
    add-int/lit8 v11, v11, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2
.end method

.method public getAddedImports()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addedImports:Ljava/util/List;

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterFromList(Ljava/util/List;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddedStaticImports()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addedImports:Ljava/util/List;

    const/16 v1, 0x73

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterFromList(Ljava/util/List;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    return-object v0
.end method

.method public getCreatedImports()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdImports:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedStaticImports()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdStaticImports:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultImportRewriteContext()Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->defaultContext:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;

    return-object v0
.end method

.method public getRemovedImports()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removedImports:Ljava/util/List;

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterFromList(Ljava/util/List;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedStaticImports()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removedImports:Ljava/util/List;

    const/16 v1, 0x73

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterFromList(Ljava/util/List;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRecordedChanges()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->restoreExistingImports:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addedImports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removedImports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeImport(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removeEntry(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeStaticImport(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removeEntry(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final rewriteImports(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/text/edits/TextEdit;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->importRewrite_processDescription:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->hasRecordedChanges()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdImports:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdStaticImports:[Ljava/lang/String;

    new-instance p1, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {p1}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0xb

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setFocalPosition(I)V

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setResolveBindings(Z)V

    invoke-virtual {p1, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->buildImportRewriteConfiguration()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v4, v5, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->addedImports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v5, 0x73

    if-nez v3, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->removedImports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->typeExplicitSimpleNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->staticExplicitSimpleNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->analyzeRewrite(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->getCreatedImports()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdImports:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->getCreatedStaticImports()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->createdStaticImports:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->getTextEdit()Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->requireExplicitImport(ZLjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->requireExplicitImport(ZLjava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_5

    move v6, v1

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->removeImport(ZLjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_7

    move v5, v1

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->addImport(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setFilterImplicitImports(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->filterImplicitImports:Z

    return-void
.end method

.method public setImportOrder([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importOrder:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Order must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnDemandImportThreshold(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->importOnDemandThreshold:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStaticOnDemandImportThreshold(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->staticImportOnDemandThreshold:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseContextToFilterImplicitImports(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;->useContextToFilterImplicitImports:Z

    return-void
.end method
