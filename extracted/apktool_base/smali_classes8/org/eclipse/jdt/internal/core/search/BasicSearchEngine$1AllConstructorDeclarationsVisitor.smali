.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllConstructorDeclarations([C[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllConstructorDeclarationsVisitor"
.end annotation


# instance fields
.field private declaringTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field private declaringTypesPtr:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

.field private final synthetic val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;

.field private final synthetic val$packageDeclaration:[C

.field private final synthetic val$packageName:[C

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$typeName:[C

.field private final synthetic val$validatedTypeMatchRule:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;[C[CI[CLorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageName:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$typeName:[C

    iput p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$validatedTypeMatchRule:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageDeclaration:[C

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypesPtr:I

    return-void
.end method

.method private endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 13

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->hasConstructor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageName:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$typeName:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$validatedTypeMatchRule:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v9, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match(C[CI[CII[C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;

    .line 4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$typeName:[C

    .line 5
    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    .line 6
    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    .line 7
    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageDeclaration:[C

    .line 8
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ExtraFlags;->getExtraFlags(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I

    move-result v10

    .line 9
    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$path:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v6, v7

    .line 10
    invoke-interface/range {v1 .. v12}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;->acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypesPtr:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 12
    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypesPtr:I

    return-void
.end method

.method private hasConstructor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z
    .locals 4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    move v2, v0

    :goto_1
    if-lt v2, v1, :cond_1

    return v0

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z
    .locals 5

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypesPtr:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypesPtr:I

    if-gt v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, v3

    .line 27
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypesPtr:I

    aput-object p1, v0, v1

    return v3
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->declaringTypesPtr:I

    aget-object v2, v2, v3

    .line 3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageName:[C

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$typeName:[C

    iget v8, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$validatedTypeMatchRule:I

    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v11, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match(C[CI[CII[C[C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v3, :cond_0

    move v9, v4

    goto :goto_0

    .line 5
    :cond_0
    array-length v5, v3

    move v9, v5

    .line 6
    :goto_0
    new-array v12, v9, [[C

    .line 7
    new-array v11, v9, [[C

    move v5, v4

    :goto_1
    if-lt v5, v9, :cond_3

    .line 8
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 9
    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_2
    if-nez v3, :cond_1

    .line 10
    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;

    .line 11
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    .line 12
    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$typeName:[C

    .line 13
    iget v13, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    .line 14
    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$packageDeclaration:[C

    .line 15
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ExtraFlags;->getExtraFlags(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I

    move-result v15

    .line 16
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->val$path:Ljava/lang/String;

    const/16 v17, 0x0

    const/4 v10, 0x0

    move-object/from16 v16, v1

    .line 17
    invoke-interface/range {v6 .. v17}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;->acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_4

    .line 18
    :cond_1
    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    filled-new-array {v6}, [[C

    move-result-object v6

    invoke-static {v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object v5

    .line 19
    iget v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_2

    .line 20
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 21
    :cond_3
    aget-object v6, v3, v5

    .line 22
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v7, v12, v5

    .line 23
    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v7, :cond_4

    .line 24
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    aput-object v6, v11, v5

    goto :goto_3

    .line 25
    :cond_4
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    const/16 v7, 0x2e

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v6

    aput-object v6, v11, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return v4
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllConstructorDeclarationsVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method
