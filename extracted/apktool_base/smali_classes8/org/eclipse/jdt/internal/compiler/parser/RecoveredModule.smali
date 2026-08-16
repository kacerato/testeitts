.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field public exportCount:I

.field public exports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

.field public moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

.field public opens:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

.field public opensCount:I

.field public requires:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

.field public requiresCount:I

.field public services:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

.field public servicesCount:I

.field public uses:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

.field public usesCount:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    return-void
.end method

.method private genAssign(Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->uses:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->uses:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->uses:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->uses:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    aput-object v0, p1, p2

    return-void
.end method

.method private updateExports(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    if-lez v0, :cond_2

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    if-lt v2, v3, :cond_1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->updatedPackageVisibilityStatement()Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    aput-object v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateOpens(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opensCount:I

    if-lez v0, :cond_2

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opensCount:I

    if-lt v2, v3, :cond_1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opens:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->updatedPackageVisibilityStatement()Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    aput-object v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateRequires(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    if-lez v0, :cond_2

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    if-lt v2, v3, :cond_1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requires:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;->updatedRequiresStatement()Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateServices(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    if-lez v0, :cond_2

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    if-lt v2, v3, :cond_1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->services:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;->updatedProvidesStatement()Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateUses(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    if-lez v0, :cond_2

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    if-lt v2, v3, :cond_1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->uses:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;->updatedUsesStatement()Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    .line 14
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    goto :goto_0

    .line 15
    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 16
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    .line 17
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 19
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->add(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->add(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->add(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->add(Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->add(Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opens:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 22
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opens:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    .line 23
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opensCount:I

    goto :goto_0

    .line 24
    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opensCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 25
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opens:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    .line 26
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 28
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opens:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredOpensStatement;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opensCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->opensCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 37
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->services:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 38
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->services:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    .line 39
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    goto :goto_0

    .line 40
    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 41
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->services:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    .line 42
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 44
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->services:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requires:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 30
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requires:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    .line 31
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    goto :goto_0

    .line 32
    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 33
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requires:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    .line 34
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 36
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requires:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    aput-object v0, p1, p2

    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->genAssign(Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;I)V

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered module:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    const-string v2, "\n"

    const/4 v3, 0x0

    if-lez v1, :cond_1

    move v1, v3

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exportCount:I

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->exports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;

    aget-object v4, v4, v1

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExportsStatement;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    if-lez v1, :cond_3

    move v1, v3

    :goto_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requiresCount:I

    if-lt v1, v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->requires:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;

    aget-object v4, v4, v1

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredRequiresStatement;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    if-lez v1, :cond_5

    move v1, v3

    :goto_4
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->usesCount:I

    if-lt v1, v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->uses:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;

    aget-object v4, v4, v1

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    if-lez v1, :cond_7

    :goto_6
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->servicesCount:I

    if-lt v3, v1, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->services:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;

    aget-object v1, v1, v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    const-string p1, "\n}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->updatedModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    return-void
.end method

.method public updatedModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->updateExports(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->updateOpens(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->updateRequires(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->updateUses(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->updateServices(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    return-object v0
.end method
