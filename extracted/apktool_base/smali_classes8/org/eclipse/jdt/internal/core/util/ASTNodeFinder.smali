.class public Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void
.end method


# virtual methods
.method public findField(Lorg/eclipse/jdt/core/IField;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public findInitializer(Lorg/eclipse/jdt/core/IInitializer;)Lorg/eclipse/jdt/internal/compiler/ast/Initializer;
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    iget p1, p1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v0, v3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v5, :cond_2

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public findMethod(Lorg/eclipse/jdt/core/IMethod;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
    .locals 12

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v4, :cond_1

    goto :goto_4

    :cond_1
    aget-object v7, v0, v6

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {v2, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v8, :cond_2

    move v9, v5

    goto :goto_1

    :cond_2
    array-length v9, v8

    :goto_1
    if-ne v9, v3, :cond_5

    move v9, v5

    :goto_2
    if-lt v9, v3, :cond_3

    return-object v7

    :cond_3
    aget-object v10, v8, v9

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v10}, Lorg/eclipse/jdt/internal/core/util/Util;->typeSignature(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Ljava/lang/String;

    move-result-object v10

    aget-object v11, p1, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-object v1
.end method

.method public findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceType;

    iget p1, p1, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    check-cast v0, Lorg/eclipse/jdt/core/IInitializer;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findInitializer(Lorg/eclipse/jdt/core/IInitializer;)Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v5

    :cond_1
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;

    invoke-direct {v3, p0, v2, p1, v1}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;-><init>(Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;ZI[C)V

    invoke-virtual {v0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    iget-object p1, v3, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->result:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object p1

    :pswitch_2
    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findMethod(Lorg/eclipse/jdt/core/IMethod;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v5

    :cond_2
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;

    invoke-direct {v3, p0, v2, p1, v1}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;-><init>(Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;ZI[C)V

    invoke-virtual {v0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    iget-object p1, v3, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->result:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object p1

    :pswitch_3
    check-cast v0, Lorg/eclipse/jdt/core/IField;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findField(Lorg/eclipse/jdt/core/IField;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v5

    :cond_3
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;

    invoke-direct {v3, p0, v2, p1, v1}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;-><init>(Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;ZI[C)V

    invoke-virtual {v0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    iget-object p1, v3, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->result:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object p1

    :pswitch_4
    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_9

    array-length v0, p1

    :goto_1
    if-lt v3, v0, :cond_5

    goto :goto_3

    :cond_5
    aget-object v2, p1, v3

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_9

    array-length v0, p1

    :goto_2
    if-lt v3, v0, :cond_7

    goto :goto_3

    :cond_7
    aget-object v2, p1, v3

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_8

    return-object v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
