.class public Lcom/jme3/util/blockparser/BlockLanguageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastStatement:Lcom/jme3/util/blockparser/Statement;

.field private lineNumber:I

.field private reader:Ljava/io/Reader;

.field private final statementStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    return-void
.end method

.method private load(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->reset()V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->reader:Ljava/io/Reader;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    int-to-char v4, v3

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    if-eqz v1, :cond_2

    if-ne v4, v5, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v6, 0x2f

    const/4 v7, 0x1

    if-ne v4, v6, :cond_3

    if-ne v2, v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/jme3/util/blockparser/BlockLanguageParser;->pushStatement(Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    move v2, v0

    move v1, v7

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    const/16 v2, 0x7d

    const/16 v6, 0x7b

    const/4 v8, -0x1

    if-eq v3, v8, :cond_5

    if-eq v4, v6, :cond_5

    if-eq v4, v2, :cond_5

    if-eq v4, v5, :cond_5

    const/16 v9, 0x3b

    if-ne v4, v9, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/jme3/util/blockparser/BlockLanguageParser;->pushStatement(Ljava/lang/StringBuilder;)V

    if-ne v4, v6, :cond_6

    iget-object v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-ne v4, v2, :cond_8

    iget-object v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    :goto_2
    move v2, v0

    goto :goto_0

    :cond_8
    if-ne v4, v5, :cond_9

    iget v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    goto :goto_2

    :cond_9
    if-ne v3, v8, :cond_7

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jme3/util/blockparser/BlockLanguageParser;

    invoke-direct {v0}, Lcom/jme3/util/blockparser/BlockLanguageParser;-><init>()V

    invoke-direct {v0, p0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->load(Ljava/io/InputStream;)V

    iget-object p0, v0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {p0}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private pushStatement(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/jme3/util/blockparser/Statement;

    iget v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    invoke-direct {v1, v2, v0}, Lcom/jme3/util/blockparser/Statement;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    iget-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    iget-object v1, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v0, v1}, Lcom/jme3/util/blockparser/Statement;->addStatement(Lcom/jme3/util/blockparser/Statement;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    new-instance v1, Lcom/jme3/util/blockparser/Statement;

    const/4 v2, 0x0

    const-string v3, "<root>"

    invoke-direct {v1, v2, v3}, Lcom/jme3/util/blockparser/Statement;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    return-void
.end method
