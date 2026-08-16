.class Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final containerOnDemand:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

.field final reducibleImports:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->containerOnDemand:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->reducibleImports:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->containerOnDemand:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->reducibleImports:Ljava/util/Collection;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{%s: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
