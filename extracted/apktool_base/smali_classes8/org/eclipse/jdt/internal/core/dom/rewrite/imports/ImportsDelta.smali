.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final importsToAdd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field final importsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;->importsToAdd:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;->importsToRemove:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;->importsToAdd:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;->importsToRemove:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(additions: %s, removals: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
