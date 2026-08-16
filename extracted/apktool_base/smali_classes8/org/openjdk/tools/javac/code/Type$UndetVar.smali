.class public Lorg/openjdk/tools/javac/code/Type$UndetVar;
.super Lorg/openjdk/tools/javac/code/Type$DelegatedType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndetVar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;,
        Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;,
        Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;
    }
.end annotation


# instance fields
.field protected bounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field public declaredCount:I

.field public incorporationActions:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;",
            ">;"
        }
    .end annotation
.end field

.field private inst:Lorg/openjdk/tools/javac/code/Type;

.field kind:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

.field public listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

.field toTypeVarMap:Lorg/openjdk/tools/javac/code/Types$TypeMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/code/Type$DelegatedType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Type;)V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/Type$UndetVar$1;-><init>(Lorg/openjdk/tools/javac/code/Type$UndetVar;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->toTypeVarMap:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->isCaptured()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->CAPTURED:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->NORMAL:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->kind:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    new-instance p2, Ljava/util/EnumMap;

    const-class v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/code/Types;->getBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->declaredCount:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-direct {p0, v2, v0, p3, v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->isCaptured()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->lower:Lorg/openjdk/tools/javac/code/Type;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->lower:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p2, p1, p3, v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;Z)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->lambda$substBounds$0(Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V

    return-void
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    return-object p0
.end method

.method private addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;Z)V
    .locals 4

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->kind:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->CAPTURED:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez p4, :cond_0

    .line 8
    sget-object p4, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p4

    if-eqz p4, :cond_4

    check-cast p2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isCaptured()Z

    move-result p4

    if-nez p4, :cond_4

    .line 9
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->complement()Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object p1

    invoke-direct {p2, p1, p0, p3, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p4, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->toTypeVarMap:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/code/Type;->map(Lorg/openjdk/tools/javac/code/Types$TypeMapping;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p4

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p4

    .line 11
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    .line 12
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    if-ne p2, v1, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    const/4 v3, 0x1

    .line 14
    invoke-virtual {p3, v1, p4, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 15
    :cond_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-direct {p0, p1, p4, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->notifyBoundChange(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$substBounds$0(Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V
    .locals 0

    if-ne p2, p0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    new-instance p2, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {p2, p3, p4}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyBoundChange(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;->varBoundChanged(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Type$Visitor<",
            "TR;TS;>;TS;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Lorg/openjdk/tools/javac/code/Types;->mapCapturesToBounds:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/Type$5;->$SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/Types;->cvarUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/Types;->cvarLowerBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 5
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p2, v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;Z)V

    return-void
.end method

.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$UndetVar;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot add metadata to an UndetVar type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$UndetVar;

    move-result-object p1

    return-object p1
.end method

.method public debugString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inference var = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "inst = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type$UndetVar;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    invoke-direct {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;-><init>(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;Lorg/openjdk/tools/javac/code/Types;)V

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->dupTo(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Types;)V

    return-object v0
.end method

.method public dupTo(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v3}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    const/4 v6, 0x1

    invoke-direct {p1, v3, v5, p2, v6}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->dup(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public varargs getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDeclaredBounds()Lorg/openjdk/tools/javac/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v1}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->declaredCount:I

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInst()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public final isCaptured()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->kind:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->CAPTURED:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPartial()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isThrows()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->kind:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->THROWS:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInst(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;->varInstantiated(Lorg/openjdk/tools/javac/code/Type$UndetVar;)V

    :cond_0
    return-void
.end method

.method public setThrow()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->kind:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->CAPTURED:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->THROWS:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->kind:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public substBounds(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Types;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lorg/openjdk/tools/javac/code/F;

    invoke-direct {v3, p0, v0}, Lorg/openjdk/tools/javac/code/F;-><init>(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    iput-object v3, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/util/List;

    new-instance v6, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v7, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8, p1}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->bounds:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3, v6, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-direct {p0, v5, v6, p3, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object p3, p2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p3, p2, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->notifyBoundChange(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V

    goto :goto_2

    :cond_4
    return-void

    :goto_3
    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->listener:Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, p3, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, p3, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->notifyBoundChange(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V

    goto :goto_4

    :cond_5
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->appendAnnotationsString(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;->inst:Lorg/openjdk/tools/javac/code/Type;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
