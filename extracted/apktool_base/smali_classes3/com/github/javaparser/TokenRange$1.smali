.class Lcom/github/javaparser/TokenRange$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/github/javaparser/JavaToken;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lcom/github/javaparser/JavaToken;

.field private hasNext:Z

.field final synthetic this$0:Lcom/github/javaparser/TokenRange;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/TokenRange;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/TokenRange$1;->this$0:Lcom/github/javaparser/TokenRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javaparser/TokenRange$1;->hasNext:Z

    invoke-static {p1}, Lcom/github/javaparser/TokenRange;->access$000(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/JavaToken;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/TokenRange$1;->current:Lcom/github/javaparser/JavaToken;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/TokenRange$1;->hasNext:Z

    return v0
.end method

.method public next()Lcom/github/javaparser/JavaToken;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/TokenRange$1;->current:Lcom/github/javaparser/JavaToken;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/github/javaparser/TokenRange$1;->this$0:Lcom/github/javaparser/TokenRange;

    invoke-static {v1}, Lcom/github/javaparser/TokenRange;->access$100(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/JavaToken;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/github/javaparser/TokenRange$1;->hasNext:Z

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/TokenRange$1;->current:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v1}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/JavaToken;

    iput-object v1, p0, Lcom/github/javaparser/TokenRange$1;->current:Lcom/github/javaparser/JavaToken;

    if-nez v1, :cond_2

    .line 6
    iget-boolean v1, p0, Lcom/github/javaparser/TokenRange$1;->hasNext:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End token is not linked to begin token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to move past end of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/TokenRange$1;->next()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    return-object v0
.end method
