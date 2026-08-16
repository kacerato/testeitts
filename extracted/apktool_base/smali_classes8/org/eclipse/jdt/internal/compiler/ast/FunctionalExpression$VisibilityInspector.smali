.class Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibilityInspector"
.end annotation


# instance fields
.field private expression:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

.field private scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private shouldChatter:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible:Z

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->shouldChatter:Z

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->expression:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    return-void
.end method

.method private checkVisibility(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->shouldChatter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->expression:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->descriptorHasInvisibleType(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public visible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 2
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible:Z

    return p1
.end method

.method public visible([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 4
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible:Z

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->checkVisibility(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->checkVisibility(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->checkVisibility(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    const/4 p1, 0x1

    return p1
.end method
