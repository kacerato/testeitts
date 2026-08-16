.class public Lcom/github/javaparser/utils/SeparatedItemStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private hasItems:Z

.field private final postfix:Ljava/lang/String;

.field private final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "separator",
            "postfix"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->separator:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->postfix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/github/javaparser/utils/SeparatedItemStringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    return-object p0
.end method

.method public hasItems()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->postfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
