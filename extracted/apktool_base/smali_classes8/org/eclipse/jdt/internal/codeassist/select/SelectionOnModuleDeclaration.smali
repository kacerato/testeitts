.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnModuleDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)V

    return-void
.end method


# virtual methods
.method public setBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->setBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1
.end method
