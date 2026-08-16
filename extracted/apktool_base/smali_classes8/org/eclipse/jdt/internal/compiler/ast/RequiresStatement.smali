.class public Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;
.source "SourceFile"


# instance fields
.field public modifiers:I

.field public modifiersSourceStart:I

.field public module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

.field public resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    return-void
.end method


# virtual methods
.method public isStatic()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitive()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string v0, "requires "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->isTransitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "transitive "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "static "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidModule(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->hasUnstableAutoName()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->autoModuleWithUnstableName(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p1
.end method
