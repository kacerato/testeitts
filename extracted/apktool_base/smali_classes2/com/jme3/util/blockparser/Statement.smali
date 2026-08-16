.class public Lcom/jme3/util/blockparser/Statement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation
.end field

.field protected line:Ljava/lang/String;

.field protected lineNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    iput p1, p0, Lcom/jme3/util/blockparser/Statement;->lineNumber:I

    iput-object p2, p0, Lcom/jme3/util/blockparser/Statement;->line:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addStatement(ILcom/jme3/util/blockparser/Statement;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    return-object v0
.end method

.method public getIndent(I)Ljava/lang/String;
    .locals 2

    const-string v0, "                               "

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/blockparser/Statement;->line:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/blockparser/Statement;->lineNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/jme3/util/blockparser/Statement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/util/blockparser/Statement;->getIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/jme3/util/blockparser/Statement;->line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    add-int/lit8 v3, p1, 0x4

    .line 7
    invoke-virtual {v2, v3}, Lcom/jme3/util/blockparser/Statement;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/util/blockparser/Statement;->getIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
