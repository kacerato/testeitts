.class public final Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;
.super Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
.source "SourceFile"


# static fields
.field static final synthetic g:Z = true


# instance fields
.field private final c:Lcom/android/tools/r8/origin/Origin;

.field private final d:Lcom/android/tools/r8/position/Position;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/K3;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;-><init>(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/shaking/L3;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/experimental/graphinfo/GraphNode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;-><init>(Z)V

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->c:Lcom/android/tools/r8/origin/Origin;

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->d:Lcom/android/tools/r8/position/Position;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->e:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->f:Ljava/util/Set;

    return-void
.end method

.method private static a(Lcom/android/tools/r8/position/Position;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lcom/android/tools/r8/position/TextRange;

    const-string v1, ":"

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/tools/r8/position/TextRange;

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextRange;->getStart()Lcom/android/tools/r8/position/TextPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextPosition;->getLine()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextPosition;->getColumn()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/position/TextPosition;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextPosition;->getLine()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextPosition;->getColumn()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/position/Position;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/origin/Origin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->d:Lcom/android/tools/r8/position/Position;

    invoke-virtual {p1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getPreconditions()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->d:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method

.method public getPreconditions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/experimental/graphinfo/GraphNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->f:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->d:Lcom/android/tools/r8/position/Position;

    iget-object v2, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->f:Ljava/util/Set;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->a(Lcom/android/tools/r8/position/Position;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
