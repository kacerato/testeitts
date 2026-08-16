.class Lorg/eclipse/jdt/internal/core/util/LRUCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/util/ICacheEnumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/util/LRUCache;->keysAndValues()Lorg/eclipse/jdt/internal/core/util/ICacheEnumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/jdt/internal/core/util/ICacheEnumeration<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field entry:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

.field values:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/LRUCache;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;->values:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;->entry:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;->values:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;->values:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;->entry:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
