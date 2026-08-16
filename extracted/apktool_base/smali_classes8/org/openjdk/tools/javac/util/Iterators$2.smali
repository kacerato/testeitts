.class final Lorg/openjdk/tools/javac/util/Iterators$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/util/Iterators;->createFilterIterator(Ljava/util/Iterator;Ljava/util/function/Predicate;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic val$input:Ljava/util/Iterator;

.field final synthetic val$test:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->val$input:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->val$test:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Iterators$2;->update()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->current:Ljava/lang/Object;

    return-void
.end method

.method private update()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->val$input:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->val$input:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->val$test:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->current:Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->current:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Iterators$2;->update()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/Iterators$2;->current:Ljava/lang/Object;

    return-object v0
.end method
