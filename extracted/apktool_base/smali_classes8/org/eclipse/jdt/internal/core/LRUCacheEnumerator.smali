.class public Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected elementQueue:Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;->elementQueue:Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;->elementQueue:Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;->elementQueue:Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;->value:Ljava/lang/Object;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;->next:Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;->elementQueue:Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    return-object v1
.end method
