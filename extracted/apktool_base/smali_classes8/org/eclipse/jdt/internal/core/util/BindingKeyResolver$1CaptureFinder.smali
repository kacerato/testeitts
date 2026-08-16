.class Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->consumeAnyCapture(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureFinder"
.end annotation


# instance fields
.field capture:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

.field private final synthetic val$capture18id:I

.field private final synthetic val$position:I

.field private final synthetic val$wildcardBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;ILorg/eclipse/jdt/internal/compiler/lookup/Binding;I)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->this$0:Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->val$position:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->val$wildcardBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iput p4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->val$capture18id:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_d

    const/16 v2, 0x104

    const/4 v3, 0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0x204

    if-eq v1, v2, :cond_7

    const/16 v2, 0x1004

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2004

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v1

    move p1, v0

    :goto_0
    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    aget-object v4, v1, p1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->val$position:I

    if-ne v1, v2, :cond_a

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->val$wildcardBinding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v1, v2, :cond_a

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->val$capture18id:I

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->capture:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    return v3

    :cond_7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_9

    return v0

    :cond_9
    array-length v2, v1

    move p1, v0

    :goto_1
    if-lt p1, v2, :cond_b

    :cond_a
    :goto_2
    return v0

    :cond_b
    aget-object v4, v1, p1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_c

    return v3

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_d
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 15
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 13
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 11
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$1CaptureFinder;->checkType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    return p1
.end method
