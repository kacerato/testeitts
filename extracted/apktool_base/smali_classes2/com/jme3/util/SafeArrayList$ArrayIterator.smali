.class public Lcom/jme3/util/SafeArrayList$ArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/SafeArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private lastReturned:I

.field private next:I

.field final synthetic this$0:Lcom/jme3/util/SafeArrayList;


# direct methods
.method public constructor <init>(Lcom/jme3/util/SafeArrayList;[Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->this$0:Lcom/jme3/util/SafeArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    iput p3, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList$ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    iput v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList$ArrayIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    iput v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->this$0:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
