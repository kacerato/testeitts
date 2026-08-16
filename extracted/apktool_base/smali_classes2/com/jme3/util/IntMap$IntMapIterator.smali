.class final Lcom/jme3/util/IntMap$IntMapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IntMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/jme3/util/IntMap$Entry<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private cur:Lcom/jme3/util/IntMap$Entry;

.field private el:I

.field private idx:I

.field final synthetic this$0:Lcom/jme3/util/IntMap;


# direct methods
.method public constructor <init>(Lcom/jme3/util/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    iput p1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    return-void
.end method


# virtual methods
.method public beginUse()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    invoke-static {v0}, Lcom/jme3/util/IntMap;->access$000(Lcom/jme3/util/IntMap;)[Lcom/jme3/util/IntMap$Entry;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    iput v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    iput v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    iget-object v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    invoke-static {v1}, Lcom/jme3/util/IntMap;->access$100(Lcom/jme3/util/IntMap;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/jme3/util/IntMap$Entry;
    .locals 2

    .line 2
    iget v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    iget-object v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    invoke-static {v1}, Lcom/jme3/util/IntMap;->access$100(Lcom/jme3/util/IntMap;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    iput-object v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 5
    iget v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    invoke-static {v0}, Lcom/jme3/util/IntMap;->access$000(Lcom/jme3/util/IntMap;)[Lcom/jme3/util/IntMap$Entry;

    move-result-object v0

    iget v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    iput-object v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 8
    iget v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/util/IntMap$IntMapIterator;->next()Lcom/jme3/util/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
