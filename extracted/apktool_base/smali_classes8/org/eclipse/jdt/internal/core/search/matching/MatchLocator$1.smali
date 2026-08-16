.class Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/util/Util$Comparer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$1;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
