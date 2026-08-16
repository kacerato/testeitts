.class public Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
.source "SourceFile"


# instance fields
.field preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method


# virtual methods
.method public getPreciseTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public isCatchParameter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPreciseType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p1, v1, v0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->preciseTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
