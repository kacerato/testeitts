.class public Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bound"
.end annotation


# instance fields
.field private extendsBound:Z

.field private type:Lcom/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method private constructor <init>(ZLcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extendsBound",
            "type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    iput-object p2, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method

.method public static extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;-><init>(ZLcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method

.method public static superBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;-><init>(ZLcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    iget-boolean v2, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    iget-boolean v3, p1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    iget-object p1, p1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isExtends()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    return v0
.end method

.method public isSuper()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bound{extendsBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
