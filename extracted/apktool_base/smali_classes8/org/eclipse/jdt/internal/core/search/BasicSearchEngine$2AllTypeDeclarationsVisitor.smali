.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([[C[[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllTypeDeclarationsVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

.field private final synthetic val$matchRule:I

.field private final synthetic val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

.field private final synthetic val$packageDeclaration:[C

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$pattern:Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;[CILorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iput p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$matchRule:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$pattern:Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$path:Ljava/lang/String;

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
    .locals 8

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 7
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    move-object v5, v1

    :goto_0
    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->convertTypeKind(I)C

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$matchRule:I

    invoke-direct {v0, p2, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([C[CCI)V

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$pattern:Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$path:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 11
    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/16 v2, 0x2e

    invoke-static {p2, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p2

    .line 12
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    filled-new-array {v1}, [[C

    move-result-object v1

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object v5

    .line 13
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    .line 14
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 7

    .line 2
    new-instance p2, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->convertTypeKind(I)C

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$matchRule:I

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([C[CCI)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$pattern:Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$packageDeclaration:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2AllTypeDeclarationsVisitor;->val$path:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
