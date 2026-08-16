.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllMethodNames([CI[CI[CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllMethodDeclarationVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

.field typeInfoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic val$declQualificationMatchRule:I

.field private final synthetic val$declSimpleNameMatchRule:I

.field private final synthetic val$declaringQualification:[C

.field private final synthetic val$declaringSimpleName:[C

.field private final synthetic val$methodMatchRule:I

.field private final synthetic val$methodName:[C

.field private final synthetic val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;

.field private final synthetic val$packageDeclaration:[C

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;Lorg/eclipse/jdt/core/ICompilationUnit;[CI[CI[CILjava/lang/String;[CLorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declaringQualification:[C

    iput p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declQualificationMatchRule:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declaringSimpleName:[C

    iput p6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declSimpleNameMatchRule:I

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$methodName:[C

    iput p8, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$methodMatchRule:I

    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$path:Ljava/lang/String;

    iput-object p10, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$packageDeclaration:[C

    iput-object p11, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    return-void
.end method

.method private addStackEntry(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[C)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declaringQualification:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declQualificationMatchRule:I

    invoke-virtual {v0, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declaringSimpleName:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$declSimpleNameMatchRule:I

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    new-instance v7, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;-><init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Z[CLorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public getCurrentType()Lorg/eclipse/jdt/core/IType;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->type:Lorg/eclipse/jdt/core/IType;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->type:Lorg/eclipse/jdt/core/IType;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->typeDecl:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v3}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    :cond_1
    iput-object v2, v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->type:Lorg/eclipse/jdt/core/IType;

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->type:Lorg/eclipse/jdt/core/IType;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->typeDecl:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v4}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    iput-object v2, v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->type:Lorg/eclipse/jdt/core/IType;

    :cond_3
    iget-object v2, v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->type:Lorg/eclipse/jdt/core/IType;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    move-object v1, v2

    :cond_5
    return-object v1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 9

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;

    .line 3
    iget-boolean v0, p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->visitMethods:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$methodName:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$methodMatchRule:I

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$packageDeclaration:[C

    .line 6
    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->enclosingTypeName:[C

    .line 7
    iget-object v5, p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->typeDecl:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->getCurrentType()Lorg/eclipse/jdt/core/IType;

    move-result-object v7

    .line 9
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;

    move-object v6, p1

    .line 10
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->reportMatchingMethod(Ljava/lang/String;[C[CLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 2

    .line 12
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->typeInfoStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;

    .line 13
    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->enclosingTypeName:[C

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-ne v0, v1, :cond_0

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->typeDecl:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor$TypeInfo;->typeDecl:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/16 v1, 0x2e

    invoke-static {v0, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p2

    .line 15
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->addStackEntry(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[C)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 0

    .line 11
    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllMethodDeclarationVisitor;->addStackEntry(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;[C)V

    const/4 p1, 0x1

    return p1
.end method
