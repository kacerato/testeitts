.class Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationCollector"
.end annotation


# instance fields
.field annotationContexts:Ljava/util/List;

.field annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field currentWildcard:Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

.field dimensions:I

.field info:I

.field info2:I

.field localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field targetType:I

.field typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;IILjava/util/List;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    .line 30
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 32
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    .line 33
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;IILjava/util/List;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    .line 17
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    .line 18
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    .line 19
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 20
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    .line 21
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Ljava/util/List;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    .line 10
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    .line 11
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    .line 12
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 13
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    .line 14
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;IILjava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    .line 4
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    .line 5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 6
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    .line 7
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IIILjava/util/List;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    .line 35
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 37
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    .line 38
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    .line 39
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IILjava/util/List;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    .line 42
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 44
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    .line 45
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    .line 46
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 47
    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->dimensions:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;ILjava/util/List;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    .line 24
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    .line 25
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 27
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    return-void
.end method

.method private internalVisit(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeTypeInvisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    const/4 v4, 0x2

    invoke-direct {v0, p1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeTypeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->currentWildcard:Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->wildcard:Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->targetType:I

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    const/16 v2, 0x16

    if-eq p1, v2, :cond_2

    const/16 v2, 0x17

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->variableBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    goto :goto_1

    :pswitch_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info2:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info2:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    goto :goto_1

    :cond_2
    :pswitch_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->info:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->annotationContexts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->currentWildcard:Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 5

    .line 5
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x20000000

    and-int/2addr p1, p2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    add-int/2addr v3, p2

    .line 8
    aget v2, v2, v3

    if-eq v4, v2, :cond_2

    return p2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 5

    .line 9
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x20000000

    and-int/2addr p1, p2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 10
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_1

    return v0

    .line 11
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    add-int/2addr v3, p2

    .line 12
    aget v2, v2, v3

    if-eq v4, v2, :cond_2

    return p2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 5

    .line 13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-lt v0, p1, :cond_0

    return p2

    .line 14
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->localVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 15
    aget v1, v1, v2

    if-eq v3, v1, :cond_1

    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->internalVisit(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->internalVisit(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->internalVisit(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;->currentWildcard:Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    const/4 p1, 0x1

    return p1
.end method
