.class Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;
.super Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionTypeNameMatchRequestorWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;
    }
.end annotation


# instance fields
.field private importCachesNodeInitialized:Z

.field private importReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field private importsNodeCache:[[[C

.field private importsNodeCacheCount:I

.field private notImportedFound:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

.field private onDemandFound:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field private onDemandImportsNodeCache:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field private onDemandImportsNodeCacheCount:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importCachesNodeInitialized:Z

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandFound:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->notImportedFound:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    return-void
.end method


# virtual methods
.method public acceptNotImported()V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->notImportedFound:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->notImportedFound:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandFound:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->simpleTypeName:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget v5, v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->modifiers:I

    iget-object v6, v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->packageName:[C

    iget-object v7, v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->simpleTypeName:[C

    iget-object v9, v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->path:Ljava/lang/String;

    iget-object v10, v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->access:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    const/4 v8, 0x0

    move-object v4, p0

    invoke-super/range {v4 .. v10}, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 8

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importCachesNodeInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->initializeImportNodeCaches()V

    :cond_1
    const/16 v0, 0x2e

    invoke-static {p2, p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importsNodeCacheCount:I

    if-lt v3, v4, :cond_4

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandImportsNodeCacheCount:I

    if-lt v2, v1, :cond_2

    iget-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->notImportedFound:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;-><init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;I[C[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    invoke-virtual {p4, v7}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandImportsNodeCache:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    invoke-static {v1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandFound:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v0, p3, p3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importsNodeCache:[[[C

    aget-object v4, v4, v3

    aget-object v5, v4, v2

    invoke-static {v5, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/TypeNameMatchRequestorWrapper;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public initializeImportNodeCaches()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    const/4 v2, 0x1

    if-lt v1, v0, :cond_1

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importCachesNodeInitialized:Z

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v3, v3, v1

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandImportsNodeCache:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v2, :cond_2

    sub-int v2, v0, v1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandImportsNodeCache:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandImportsNodeCache:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandImportsNodeCacheCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->onDemandImportsNodeCacheCount:I

    aput-object v3, v2, v4

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importsNodeCache:[[[C

    if-nez v4, :cond_4

    sub-int v4, v0, v1

    new-array v4, v4, [[[C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importsNodeCache:[[[C

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importsNodeCache:[[[C

    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importsNodeCacheCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;->importsNodeCacheCount:I

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v6, v3

    sub-int/2addr v6, v2

    aget-object v2, v3, v6

    const/16 v6, 0x2e

    invoke-static {v3, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    filled-new-array {v2, v3}, [[C

    move-result-object v2

    aput-object v2, v4, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
