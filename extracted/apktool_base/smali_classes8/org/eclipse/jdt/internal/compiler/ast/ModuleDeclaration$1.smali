.class Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration$1;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->createScope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

.field private final synthetic val$parentScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration$1;->val$parentScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    return-void
.end method


# virtual methods
.method public isModuleScope()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration$1;->val$parentScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    return-object v0
.end method

.method public referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    return-object v0
.end method
