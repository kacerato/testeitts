.class public Lcom/jme3/renderer/IDList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public newLen:I

.field public newList:[I

.field public oldLen:I

.field public oldList:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jme3/renderer/IDList;->newList:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/renderer/IDList;->newLen:I

    iput v0, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    return-void
.end method


# virtual methods
.method public copyNewToOld()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/renderer/IDList;->newList:[I

    iget-object v1, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    iget v2, p0, Lcom/jme3/renderer/IDList;->newLen:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jme3/renderer/IDList;->newLen:I

    iput v0, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    iput v3, p0, Lcom/jme3/renderer/IDList;->newLen:I

    return-void
.end method

.method public moveToNew(I)Z
    .locals 4

    iget v0, p0, Lcom/jme3/renderer/IDList;->newLen:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/IDList;->newList:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-eq v1, p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/IDList;->newList:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/jme3/renderer/IDList;->newLen:I

    aput p1, v1, v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_3

    const/4 p1, 0x1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    :goto_1
    iget v0, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    add-int/lit8 v2, v1, 0x1

    aget v3, v0, v2

    aput v3, v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public print()V
    .locals 6

    iget v0, p0, Lcom/jme3/renderer/IDList;->newLen:I

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "New List: "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    iget v3, p0, Lcom/jme3/renderer/IDList;->newLen:I

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lcom/jme3/renderer/IDList;->newList:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jme3/renderer/IDList;->newList:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    if-lez v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Old List: "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    iget v0, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v2, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v3, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(I)V

    goto :goto_3

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/renderer/IDList;->newLen:I

    iput v0, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    iget-object v1, p0, Lcom/jme3/renderer/IDList;->newList:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
