.class Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->detectAPILeaks(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method

.method private checkType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;II)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->isFullyPublic(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonPublicTypeInAPI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->notExportedTypeInAPI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->isUnrelatedModule(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingRequiresTransitiveForTypeInAPI(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method private isFullyPublic(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->isFullyPublic(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isUnrelatedModule(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isTransitivelyRequired(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 5
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 6
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->originalSourceEnd:I

    invoke-direct {p0, p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 3
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 1
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
