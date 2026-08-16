.class Lorg/openjdk/tools/javac/comp/Todo$FileQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Todo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue<",
        "Lorg/openjdk/tools/javac/comp/Env<",
        "Lorg/openjdk/tools/javac/comp/AttrContext;",
        ">;>;"
    }
.end annotation


# instance fields
.field fileContents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Todo;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Todo;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->this$0:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->offer(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result p1

    return p1
.end method

.method public offer(Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->this$0:Lorg/openjdk/tools/javac/comp/Todo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->peek()Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Env;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->poll()Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Env;

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->this$0:Lorg/openjdk/tools/javac/comp/Todo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
