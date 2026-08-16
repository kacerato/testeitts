.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final containerName:Ljava/lang/String;

.field public final isStatic:Z

.field public final qualifiedName:Ljava/lang/String;

.field public final simpleName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->simpleName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    return-void
.end method

.method public static createFor(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Name;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isOnDemand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isStatic()Z

    move-result p0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->createOnDemand(ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isStatic()Z

    move-result p0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->createFor(ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object p0

    return-object p0
.end method

.method public static createFor(ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getQualifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-direct {v1, p0, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static createOnDemand(ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    const-string v1, "*"

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getContainerOnDemand()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isOnDemand()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->createOnDemand(ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isOnDemand()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->simpleName:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-eqz v0, :cond_0

    const-string v0, "staticImport(%s)"

    goto :goto_0

    :cond_0
    const-string v0, "typeImport(%s)"

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
