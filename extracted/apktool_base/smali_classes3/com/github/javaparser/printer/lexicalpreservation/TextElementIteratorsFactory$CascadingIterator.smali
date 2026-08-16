.class Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CascadingIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private lastReturnedFromCurrent:Z

.field private lastReturnedFromNext:Z

.field private next:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final nextProvider:Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "nextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromCurrent:Z

    iput-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromNext:Z

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->nextProvider:Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->current:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->next:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->nextProvider:Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;

    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;->provide()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->next:Ljava/util/Iterator;

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->next:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromCurrent:Z

    iput-boolean v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromNext:Z

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->next:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->nextProvider:Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;

    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;->provide()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->next:Ljava/util/Iterator;

    :cond_1
    iput-boolean v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromCurrent:Z

    iput-boolean v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromNext:Z

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->next:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromCurrent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->lastReturnedFromNext:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;->next:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
