.class public final Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchCriteria"
.end annotation


# instance fields
.field private isPrefix:Z

.field private matchCase:Z

.field private matchingParentNodeAddress:Z

.field private requiredNodeType:S

.field private searchString:[C


# direct methods
.method private constructor <init>([C)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->matchCase:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->isPrefix:Z

    const/4 v1, -0x1

    iput-short v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->requiredNodeType:S

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->matchingParentNodeAddress:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->searchString:[C

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object p0

    return-object p0
.end method

.method public static create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;
    .locals 1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public acceptsNodeType(S)Z
    .locals 2

    iget-short v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->requiredNodeType:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public allowAnyNodeType()Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;
    .locals 1

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->requiredNodeType:S

    return-object p0
.end method

.method public getSearchString()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->searchString:[C

    return-object v0
.end method

.method public isMatchingCase()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->matchCase:Z

    return v0
.end method

.method public isMatchingParentNodeAddress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->matchingParentNodeAddress:Z

    return v0
.end method

.method public isPrefixSearch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->isPrefix:Z

    return v0
.end method

.method public matchCase(Z)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->matchCase:Z

    return-object p0
.end method

.method public prefix(Z)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->isPrefix:Z

    return-object p0
.end method

.method public requireNodeType(S)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;
    .locals 0

    iput-short p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->requiredNodeType:S

    return-object p0
.end method

.method public requiresSpecificNodeType()Z
    .locals 2

    iget-short v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->requiredNodeType:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
