.class public LRa/e;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRa/e$c;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "FirstWins"

.field public static final k:I = 0x1


# instance fields
.field public g:I

.field public transient h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public transient i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "LRa/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRa/e$a;

    invoke-direct {v0}, LRa/e$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, LRa/e;->g:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LRa/e;->i:Ljava/util/HashMap;

    const-string v0, "FirstWins"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LRa/e;->M0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H0(Ljava/lang/Long;)LRa/e$c;
    .locals 0

    invoke-static {p0}, LRa/e;->L0(Ljava/lang/Long;)LRa/e$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(LRa/e;I)V
    .locals 0

    invoke-virtual {p0, p1}, LRa/e;->O0(I)V

    return-void
.end method

.method public static synthetic L0(Ljava/lang/Long;)LRa/e$c;
    .locals 1

    new-instance p0, LRa/e$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LRa/e$c;-><init>(LRa/e$a;)V

    return-object p0
.end method

.method public static synthetic M0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-virtual {p0}, LRa/e;->K0()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public I(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, LRa/e$b;

    invoke-direct {v1, p0}, LRa/e$b;-><init>(LRa/e;)V

    const-string v2, "Inputs"

    sget-object v3, LC5/b$a;->SLIntWrap:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LC5/b;->l(Z)LC5/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final J0()V
    .locals 1

    iget-object v0, p0, LRa/e;->i:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LRa/e;->i:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_0
    return-void
.end method

.method public final K0()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 7

    const/4 v0, 0x1

    iget v1, p0, LRa/e;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, LRa/e;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v2, v0, :cond_0

    return-object v1

    :cond_0
    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object v1, p0, LRa/e;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, LRa/e;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lga/H;->BRANCH:Lga/H;

    invoke-direct {v3, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_IN:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, LRa/e;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "First Wins"

    return-object p1
.end method

.method public final N0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "inputCount"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    new-instance v1, LRa/c;

    invoke-direct {v1, v0, p2}, LRa/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public O()LAc/b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SEMAPHORE_TOPBAR:LAc/b;

    return-object v0
.end method

.method public final O0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, LRa/e;->g:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, LRa/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, LRa/e;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    invoke-virtual {p0}, LRa/e;->J0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, LRa/e;->N0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;I)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->C0()V

    :cond_1
    return-void
.end method

.method public j0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j0()V

    invoke-virtual {p0}, LRa/e;->J0()V

    return-void
.end method

.method public m0()V
    .locals 6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->b0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->P()I

    move-result v2

    if-ltz v2, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->c0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_3
    iget-object v4, p0, LRa/e;->i:Ljava/util/HashMap;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, LRa/e;->i:Ljava/util/HashMap;

    :cond_4
    iget-object v4, p0, LRa/e;->i:Ljava/util/HashMap;

    new-instance v5, LRa/d;

    invoke-direct {v5}, LRa/d;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LRa/e$c;

    iget-object v5, v4, LRa/e$c;->b:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v4, LRa/e$c;->a:Z

    if-nez v2, :cond_5

    const/4 v5, 0x1

    iput-boolean v5, v4, LRa/e$c;->a:Z

    :cond_5
    iget-object v4, v4, LRa/e$c;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v4, p0, LRa/e;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    return-void

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)I

    move-result v0

    if-gtz v0, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s()V

    :cond_8
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_FIRST_WINS:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
