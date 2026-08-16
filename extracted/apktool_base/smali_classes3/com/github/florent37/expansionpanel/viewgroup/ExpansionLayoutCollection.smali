.class public Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final expansions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

.field private openOnlyOne:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne:Z

    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;-><init>(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    invoke-virtual {p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->addIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V

    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout;",
            ">;)",
            "Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs addAll([Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public openOnlyOne(Z)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .locals 0

    iput-boolean p1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne:Z

    return-object p0
.end method

.method public remove(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    invoke-virtual {p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->removeIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V

    :cond_0
    return-object p0
.end method
