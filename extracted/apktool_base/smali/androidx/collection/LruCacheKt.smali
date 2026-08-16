.class public final Landroidx/collection/LruCacheKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LruCache.kt\nandroidx/collection/LruCacheKt\n*L\n1#1,52:1\n44#1:53\n*E\n"
.end annotation


# direct methods
.method public static final lruCache(ILMf/p;LMf/l;LMf/r;)Landroidx/collection/LruCache;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "LMf/p<",
            "-TK;-TV;",
            "Ljava/lang/Integer;",
            ">;",
            "LMf/l<",
            "-TK;+TV;>;",
            "LMf/r<",
            "-",
            "Ljava/lang/Boolean;",
            "-TK;-TV;-TV;",
            "Lnf/P0;",
            ">;)",
            "Landroidx/collection/LruCache<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "sizeOf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "create"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEntryRemoved"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/collection/LruCacheKt$lruCache$4;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p0

    move v6, p0

    invoke-direct/range {v1 .. v6}, Landroidx/collection/LruCacheKt$lruCache$4;-><init>(LMf/p;LMf/l;LMf/r;II)V

    return-object v0
.end method

.method public static synthetic lruCache$default(ILMf/p;LMf/l;LMf/r;ILjava/lang/Object;)Landroidx/collection/LruCache;
    .locals 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p1, Landroidx/collection/LruCacheKt$lruCache$1;->INSTANCE:Landroidx/collection/LruCacheKt$lruCache$1;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/collection/LruCacheKt$lruCache$2;->INSTANCE:Landroidx/collection/LruCacheKt$lruCache$2;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_2

    sget-object p3, Landroidx/collection/LruCacheKt$lruCache$3;->INSTANCE:Landroidx/collection/LruCacheKt$lruCache$3;

    :cond_2
    move-object v3, p3

    const-string p1, "sizeOf"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "create"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onEntryRemoved"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/collection/LruCacheKt$lruCache$4;

    move-object v0, p1

    move v4, p0

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroidx/collection/LruCacheKt$lruCache$4;-><init>(LMf/p;LMf/l;LMf/r;II)V

    return-object p1
.end method
