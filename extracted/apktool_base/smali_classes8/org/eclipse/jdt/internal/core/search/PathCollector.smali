.class public Lorg/eclipse/jdt/internal/core/search/PathCollector;
.super Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;
.source "SourceFile"


# instance fields
.field public paths:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/PathCollector;->paths:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z
    .locals 0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/PathCollector;->paths:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/PathCollector;->paths:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
