.class Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->getRequiredBridges()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BridgeCollector"
.end annotation


# instance fields
.field bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field selector:[C

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->selector:[C

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->collectBridges([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void

    :cond_0
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object p1, v1, v0

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public collectBridges([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    move v2, v0

    :goto_1
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    aget-object v3, p1, v2

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->selector:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    if-nez v4, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    array-length v5, v4

    :goto_2
    move v6, v0

    :goto_3
    if-lt v6, v5, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->collectBridges([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-object v7, v4, v6

    if-eqz v7, :cond_9

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v8, v7, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->redeclaresPublicObjectMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v8, v7, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v8, v7, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->add(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public getBridges()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->bridges:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method
