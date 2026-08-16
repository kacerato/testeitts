.class Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/util/ToStringSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;->object:Ljava/lang/Object;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;->compareTo(Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair<",
            "TT;>;)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;->string:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
