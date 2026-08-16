.class public Lcom/github/javaparser/printer/configuration/Indentation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/configuration/Indentation$IndentType;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x4


# instance fields
.field private formattedIndentation:Ljava/lang/String;

.field private size:I

.field private type:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x4

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/printer/configuration/Indentation;-><init>(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;I)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "size"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/github/javaparser/printer/configuration/Indentation;->formattedIndentation:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/Indentation;->type:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    .line 4
    iput p2, p0, Lcom/github/javaparser/printer/configuration/Indentation;->size:I

    .line 5
    invoke-direct {p0}, Lcom/github/javaparser/printer/configuration/Indentation;->format()V

    return-void
.end method

.method private format()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/printer/configuration/Indentation;->type:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-static {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->access$000(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/github/javaparser/printer/configuration/Indentation;->size:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/printer/configuration/Indentation;->formattedIndentation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/Indentation;->formattedIndentation:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/configuration/Indentation;->size:I

    return v0
.end method

.method public getType()Lcom/github/javaparser/printer/configuration/Indentation$IndentType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/Indentation;->type:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    return-object v0
.end method

.method public setSize(I)Lcom/github/javaparser/printer/configuration/Indentation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iput p1, p0, Lcom/github/javaparser/printer/configuration/Indentation;->size:I

    invoke-direct {p0}, Lcom/github/javaparser/printer/configuration/Indentation;->format()V

    return-object p0
.end method

.method public setType(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;)Lcom/github/javaparser/printer/configuration/Indentation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/Indentation;->type:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-direct {p0}, Lcom/github/javaparser/printer/configuration/Indentation;->format()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/printer/configuration/Indentation;->type:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/javaparser/printer/configuration/Indentation;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
