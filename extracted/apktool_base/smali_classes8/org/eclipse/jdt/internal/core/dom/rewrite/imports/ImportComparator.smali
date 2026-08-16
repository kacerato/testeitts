.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
        ">;"
    }
.end annotation


# instance fields
.field private final importGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final qualifiedNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final staticContainerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final typeContainerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->importGroupComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->typeContainerComparator:Ljava/util/Comparator;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->staticContainerComparator:Ljava/util/Comparator;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->createQualifiedNameComparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->qualifiedNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static createQualifiedNameComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->compare(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->importGroupComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->staticContainerComparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->typeContainerComparator:Ljava/util/Comparator;

    .line 4
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;->qualifiedNameComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_1
    return v0
.end method
