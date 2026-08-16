.class Lorg/openjdk/source/util/DocTreePath$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/source/util/DocTreePath;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/openjdk/source/doctree/DocTree;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lorg/openjdk/source/util/DocTreePath;

.field final synthetic this$0:Lorg/openjdk/source/util/DocTreePath;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/util/DocTreePath;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePath$1;->this$0:Lorg/openjdk/source/util/DocTreePath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePath$1;->next:Lorg/openjdk/source/util/DocTreePath;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePath$1;->next:Lorg/openjdk/source/util/DocTreePath;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePath$1;->next()Lorg/openjdk/source/doctree/DocTree;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/source/doctree/DocTree;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePath$1;->next:Lorg/openjdk/source/util/DocTreePath;

    invoke-static {v0}, Lorg/openjdk/source/util/DocTreePath;->access$000(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/source/doctree/DocTree;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/source/util/DocTreePath$1;->next:Lorg/openjdk/source/util/DocTreePath;

    invoke-static {v1}, Lorg/openjdk/source/util/DocTreePath;->access$100(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/source/util/DocTreePath;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/source/util/DocTreePath$1;->next:Lorg/openjdk/source/util/DocTreePath;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
