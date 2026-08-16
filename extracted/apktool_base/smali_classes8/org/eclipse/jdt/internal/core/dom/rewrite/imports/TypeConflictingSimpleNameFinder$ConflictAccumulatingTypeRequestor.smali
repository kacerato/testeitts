.class Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;
.super Lorg/eclipse/jdt/core/search/TypeNameRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConflictAccumulatingTypeRequestor"
.end annotation


# instance fields
.field private final lastContainerFoundForType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final namesFoundInMultipleContainers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/TypeNameRequestor;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;->namesFoundInMultipleContainers:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;->lastContainerFoundForType:Ljava/util/Map;

    return-void
.end method

.method private static buildContainerName([C[[C)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acceptType(I[C[C[[CLjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-static {p2, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;->buildContainerName([C[[C)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;->lastContainerFoundForType:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;->namesFoundInMultipleContainers:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getNamesFoundInMultipleContainers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;->namesFoundInMultipleContainers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
