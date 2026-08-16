.class Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;
.super Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isInitialized:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

.field private final synthetic val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZLorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->isInitialized:Z

    return-void
.end method


# virtual methods
.method public markInitialized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->isInitialized:Z

    return-void
.end method

.method public markReferenced()V
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->isInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalReferencesItself(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;->isInitialized:Z

    :cond_0
    return-void
.end method
