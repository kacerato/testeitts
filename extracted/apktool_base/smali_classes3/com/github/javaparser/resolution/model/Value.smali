.class public Lcom/github/javaparser/resolution/model/Value;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private type:Lcom/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/model/Value;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    iput-object p2, p0, Lcom/github/javaparser/resolution/model/Value;->name:Ljava/lang/String;

    return-void
.end method

.method public static from(Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;)Lcom/github/javaparser/resolution/model/Value;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decl"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/model/Value;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/github/javaparser/resolution/model/Value;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/model/Value;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/model/Value;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/model/Value;->type:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/model/Value;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
