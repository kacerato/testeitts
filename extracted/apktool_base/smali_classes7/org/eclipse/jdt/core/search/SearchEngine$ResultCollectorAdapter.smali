.class Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;
.super Lorg/eclipse/jdt/core/search/SearchRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/search/SearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultCollectorAdapter"
.end annotation


# instance fields
.field resultCollector:Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/SearchRequestor;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;->resultCollector:Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;

    return-void
.end method


# virtual methods
.method public acceptSearchMatch(Lorg/eclipse/jdt/core/search/SearchMatch;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;->resultCollector:Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getAccuracy()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->accept(Lorg/eclipse/core/resources/IResource;IILorg/eclipse/jdt/core/IJavaElement;I)V

    return-void
.end method

.method public beginReporting()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;->resultCollector:Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->aboutToStart()V

    return-void
.end method

.method public endReporting()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchEngine$ResultCollectorAdapter;->resultCollector:Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;->done()V

    return-void
.end method
