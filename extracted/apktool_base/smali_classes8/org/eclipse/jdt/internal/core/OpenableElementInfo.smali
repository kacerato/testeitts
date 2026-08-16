.class public Lorg/eclipse/jdt/internal/core/OpenableElementInfo;
.super Lorg/eclipse/jdt/internal/core/JavaElementInfo;
.source "SourceFile"


# instance fields
.field protected volatile children:[Lorg/eclipse/jdt/core/IJavaElement;

.field protected isStructureKnown:Z

.field protected module:Lorg/eclipse/jdt/core/IModuleDescription;

.field protected nonJavaResources:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->isStructureKnown:Z

    return-void
.end method


# virtual methods
.method public addChild(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v3, v2

    if-nez v3, :cond_0

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v1, v0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_1

    add-int/2addr v1, v3

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v3

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    :goto_1
    return-void

    :cond_1
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    add-int/2addr v4, v1

    goto :goto_0
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getModule()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    return-object v0
.end method

.method public isStructureKnown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->isStructureKnown:Z

    return v0
.end method

.method public removeChild(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_1

    :cond_1
    sub-int/2addr v1, p1

    new-array p1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v3, v1, :cond_2

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    :goto_1
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    array-length v0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public setIsStructureKnown(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->isStructureKnown:Z

    return-void
.end method

.method public setModule(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    return-void
.end method

.method public setNonJavaResources([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    return-void
.end method
