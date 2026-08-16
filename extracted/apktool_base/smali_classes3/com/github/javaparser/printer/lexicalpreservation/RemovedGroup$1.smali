.class Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIndex:I

.field final synthetic this$0:Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-static {v1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->access$000(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->access$000(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/github/javaparser/printer/lexicalpreservation/Removed;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->access$000(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->next()Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    return-object v0
.end method
