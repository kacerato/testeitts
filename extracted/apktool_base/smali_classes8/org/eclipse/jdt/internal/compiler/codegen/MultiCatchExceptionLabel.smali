.class public Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;
.super Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;
.source "SourceFile"


# instance fields
.field exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initialize(Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 8

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    aget-object v5, p1, v1

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_1

    move-object v7, p2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-direct {v3, v4, v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public place()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public placeEnd()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public placeStart()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
