.class public Lorg/eclipse/jdt/internal/core/util/ToStringSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final toString:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ToStringSorter;->toString:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/core/util/ToStringSorter;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/ToStringSorter;->lambda$0(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$0(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ToStringSorter;->toString:Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public sort(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair<",
            "TT;>;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/b;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/util/b;-><init>(Lorg/eclipse/jdt/internal/core/util/ToStringSorter;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method
