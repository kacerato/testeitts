.class Lorg/openjdk/tools/javac/util/ListBuffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field elems:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/util/ListBuffer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer$1;->this$0:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->access$000(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer$1;->elems:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer$1;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer$1;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer$1;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer$1;->elems:Lorg/openjdk/tools/javac/util/List;

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
