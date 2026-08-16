.class public Lorg/eclipse/jdt/internal/core/VerboseElementCache;
.super Lorg/eclipse/jdt/internal/core/ElementCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lorg/eclipse/jdt/core/IJavaElement;",
        ":",
        "Lorg/eclipse/jdt/core/IOpenable;",
        ">",
        "Lorg/eclipse/jdt/internal/core/ElementCache<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private beingAdded:Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ElementCache;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public makeSpace(I)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->makeSpace(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->makeSpace(I)Z

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " MADE SPACE FOR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (NOW "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->fillingRatio()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "% full)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " WHILE OPENING "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    :cond_1
    return p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->put(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementInfo;)Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementInfo;)Lorg/eclipse/jdt/internal/core/JavaElementInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/eclipse/jdt/internal/core/JavaElementInfo;",
            ")",
            "Lorg/eclipse/jdt/internal/core/JavaElementInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElementInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_1
    return-object p2

    .line 7
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/VerboseElementCache;->beingAdded:Lorg/eclipse/jdt/core/IJavaElement;

    .line 9
    :cond_2
    throw p2
.end method
