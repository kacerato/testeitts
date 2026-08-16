.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllTypeDeclarationsVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

.field private final synthetic val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

.field private final synthetic val$packageDeclaration:[C

.field private final synthetic val$packageMatchRule:I

.field private final synthetic val$packageName:[C

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$typeName:[C

.field private final synthetic val$typeSuffix:C

.field private final synthetic val$validatedTypeMatchRule:I

.field private final synthetic val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;C[CI[CI[CLorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iput-char p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$typeSuffix:C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageName:[C

    iput p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageMatchRule:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$typeName:[C

    iput p6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$validatedTypeMatchRule:I

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    iput-object p10, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 9

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$typeSuffix:C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageName:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageMatchRule:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$typeName:[C

    iget v5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$validatedTypeMatchRule:I

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match(C[CI[CII[C[C)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 8
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 9
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    move-object v5, v1

    :goto_0
    if-nez p2, :cond_2

    .line 10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    instance-of p2, v1, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    if-eqz p2, :cond_1

    .line 11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    new-instance p2, Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v5, v2

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    .line 12
    array-length p2, v5

    move v1, v0

    :goto_1
    if-lt v1, p2, :cond_0

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;

    invoke-direct {v1, p1, v2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;-><init>(Lorg/eclipse/jdt/core/IType;I)V

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;->acceptTypeNameMatch(Lorg/eclipse/jdt/core/search/TypeNameMatch;)V

    goto :goto_2

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/String;

    aget-object v4, v5, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$path:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    filled-new-array {v1}, [[C

    move-result-object v1

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object v5

    .line 17
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    .line 18
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$typeSuffix:C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageName:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageMatchRule:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$typeName:[C

    iget v5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$validatedTypeMatchRule:I

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match(C[CI[CII[C[C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    instance-of p2, v0, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$typeName:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-direct {v1, p2, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;-><init>(Lorg/eclipse/jdt/core/IType;I)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;->acceptTypeNameMatch(Lorg/eclipse/jdt/core/search/TypeNameMatch;)V

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllTypeDeclarationsVisitor;->val$path:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
