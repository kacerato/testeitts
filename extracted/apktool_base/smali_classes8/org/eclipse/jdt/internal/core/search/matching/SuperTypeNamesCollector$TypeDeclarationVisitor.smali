.class public Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeDeclarationVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 4
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->matches(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 11
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 12
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->matches(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 1

    .line 8
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->matches(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
