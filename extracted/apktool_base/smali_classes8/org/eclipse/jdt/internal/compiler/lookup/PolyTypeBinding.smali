.class public Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.source "SourceFile"


# instance fields
.field expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field vanillaCompatibilty:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->vanillaCompatibilty:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-void
.end method


# virtual methods
.method public computeBoxingType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->vanillaCompatibilty:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->vanillaCompatibilty:Z

    return-object v0
.end method

.method public constantPoolName()[C
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->vanillaCompatibilty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isFunctionalType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isFunctionalType()Z

    move-result v0

    return v0
.end method

.method public isPolyType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    return p1
.end method

.method public kind()I
    .locals 1

    const v0, 0x10004

    return v0
.end method

.method public qualifiedSourceName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->readableName()[C

    move-result-object v0

    return-object v0
.end method

.method public readableName()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    return p1
.end method

.method public shortReadableName()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->printExpression(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->readableName()[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public sourceName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->readableName()[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PolyTypeBinding for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
