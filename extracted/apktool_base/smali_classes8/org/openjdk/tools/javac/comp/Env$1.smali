.class Lorg/openjdk/tools/javac/comp/Env$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Env;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/openjdk/tools/javac/comp/Env<",
        "TA;>;>;"
    }
.end annotation


# instance fields
.field next:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Env;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Env$1;->this$0:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Env$1;->next:Lorg/openjdk/tools/javac/comp/Env;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env$1;->next:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

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
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Env$1;->next()Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Env$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env$1;->next:Lorg/openjdk/tools/javac/comp/Env;

    .line 4
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Env$1;->next:Lorg/openjdk/tools/javac/comp/Env;

    return-object v0

    .line 5
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
