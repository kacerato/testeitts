.class public abstract Lcom/jme3/util/struct/StructField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private depth:I

.field private group:I

.field protected isUpdateNeeded:Z

.field private name:Ljava/lang/String;

.field private position:I

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/struct/StructField;->isUpdateNeeded:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/struct/StructField;->depth:I

    iput v0, p0, Lcom/jme3/util/struct/StructField;->group:I

    iput p1, p0, Lcom/jme3/util/struct/StructField;->position:I

    iput-object p3, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/util/struct/StructField;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearUpdateNeeded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/util/struct/StructField;->isUpdateNeeded:Z

    return-void
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/struct/StructField;->depth:I

    return v0
.end method

.method public getGroup()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/struct/StructField;->group:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/struct/StructField;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/struct/StructField;->position:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/util/struct/StructField;->isUpdateNeeded:Z

    return v0
.end method

.method public setDepth(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/util/struct/StructField;->depth:I

    return-void
.end method

.method public setGroup(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/util/struct/StructField;->group:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/util/struct/StructField;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/util/struct/StructField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
