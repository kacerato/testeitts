.class Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$1;
.super Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->getPathsOfDeclaringType()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

.field private final synthetic val$pathCollector:Lorg/eclipse/jdt/internal/core/search/PathCollector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;Lorg/eclipse/jdt/internal/core/search/PathCollector;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$1;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$1;->val$pathCollector:Lorg/eclipse/jdt/internal/core/search/PathCollector;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z
    .locals 2

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$1;->val$pathCollector:Lorg/eclipse/jdt/internal/core/search/PathCollector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/search/PathCollector;->acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
