.class public Lorg/openjdk/tools/javac/comp/TransTypes;
.super Lorg/openjdk/tools/javac/tree/TreeTranslator;
.source "SourceFile"


# static fields
.field private static final statePreviousToFlowAssertMsg:Ljava/lang/String; = "The current compile state [%s] of class %s is previous to FLOW"

.field protected static final transTypesKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/TransTypes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowGraphInference:Z

.field private final allowInterfaceBridges:Z

.field private annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field bridgeSpans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field private final compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

.field currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

.field private enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/openjdk/tools/javac/util/Log;

.field private make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private names:Lorg/openjdk/tools/javac/util/Names;

.field private pt:Lorg/openjdk/tools/javac/code/Type;

.field private final resolve:Lorg/openjdk/tools/javac/comp/Resolve;

.field private final skipDuplicateBridges:Z

.field private syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/TransTypes;->transTypesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 3

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v0, Lorg/openjdk/tools/javac/comp/TransTypes;->transTypesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/CompileStates;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/CompileStates;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->bridgeSpans:Ljava/util/Map;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Source;->allowDefaultMethods()Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->allowInterfaceBridges:Z

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Source;->allowGraphInference()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->allowGraphInference:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    const-string v1, "skipDuplicateBridges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->skipDuplicateBridges:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    return-void
.end method

.method private createBridgeParams(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    check-cast p3, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x200001000L

    or-long v3, v2, v4

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    move-object v2, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->setAttributes(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TransTypes;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/TransTypes;->transTypesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/TransTypes;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/TransTypes;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/TransTypes;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isBridgeNeeded(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->skipBridge(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->isSameMemberWhenErased(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lorg/openjdk/tools/javac/comp/TransTypes;->isSameMemberWhenErased(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_4

    return v0

    :cond_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lorg/openjdk/tools/javac/comp/TransTypes;->isSameMemberWhenErased(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isSameMemberWhenErased(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method private skipBridge(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->skipDuplicateBridges:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne p3, v0, :cond_1

    return v1

    :cond_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p3

    if-nez p3, :cond_2

    return v1

    :cond_2
    iget-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p3, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, p3, v0, v2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public addBridge(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;ZLorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Z",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v9, p4

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v10

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x7

    and-long/2addr v3, v5

    const-wide v5, 0x80001000L    # 1.060999919E-314

    or-long/2addr v3, v5

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v5

    const-wide/16 v12, 0x0

    if-eqz v5, :cond_0

    const-wide v5, 0x80000000000L

    goto :goto_0

    :cond_0
    move-wide v5, v12

    :goto_0
    or-long/2addr v3, v5

    if-eqz p5, :cond_1

    const-wide v5, 0x2000000000L

    or-long/2addr v3, v5

    :cond_1
    move-wide v4, v3

    new-instance v14, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object v3, v14

    move-object v7, v11

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-direct {v0, v2, v14, v11}, Lorg/openjdk/tools/javac/comp/TransTypes;->createBridgeParams(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v14, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v14, v2}, Lorg/openjdk/tools/javac/code/Symbol;->setAttributes(Lorg/openjdk/tools/javac/code/Symbol;)V

    if-nez p5, :cond_4

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v3

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v5, v9, :cond_2

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v9, v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->This(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Super(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    :goto_1
    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7, v5, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v15, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v8, v15}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Idents(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v15

    invoke-virtual {v0, v8, v15, v4}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v7, v4, v5, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v4

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v4

    :goto_2
    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v5, v12, v13, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_4
    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v3, v14}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TransTypes;->bridgeSpans:Ljava/util/Map;

    new-instance v4, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v4, v1, v2}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBridgeIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_a

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v5, 0xa

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v8, 0x1000

    and-long/2addr v2, v8

    cmp-long v2, v2, v8

    if-eqz v2, :cond_a

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v4, v2}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v4, v0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->binaryImplementation(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v10, 0x1

    invoke-virtual {v2, v4, v3, v10}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v3

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_7

    if-eqz v3, :cond_0

    iget-object v11, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v12, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v13, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v11, v12, v13}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v8

    cmp-long v5, v5, v8

    const-string v6, "name.clash.same.erasure.no.override"

    if-nez v5, :cond_5

    iget-object v5, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->bridgeSpans:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    move-object v14, v5

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-object v14, v8

    :goto_0
    if-eqz v14, :cond_a

    if-eq v14, v2, :cond_a

    if-eqz v3, :cond_2

    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v14, v4, v8, v10}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_2
    if-nez v0, :cond_3

    move-object v8, v5

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-object v8, v0

    :goto_1
    if-eqz v8, :cond_4

    iget-object v11, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v9, v2

    move-object/from16 v10, p3

    invoke-virtual/range {v8 .. v13}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;ZZ)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v14, v3, v5}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v4, v5}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    filled-new-array {v14, v3, v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v2, v4, v3, v10}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v3, v4, :cond_6

    iget-object v5, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5, v3, v8}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_6
    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v5, v8}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v4, v8}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    filled-new-array {v0, v5, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v6, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    :goto_2
    if-eqz v3, :cond_9

    iget-object v8, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v2, v3, v8}, Lorg/openjdk/tools/javac/comp/TransTypes;->isBridgeNeeded(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ne v0, v3, :cond_8

    move v5, v10

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    move v5, v0

    :goto_3
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/TransTypes;->addBridge(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;ZLorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_4

    :cond_9
    if-ne v3, v2, :cond_a

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, v4, :cond_a

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v0, v8, v5

    if-nez v0, :cond_a

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v8, 0x401

    and-long/2addr v5, v8

    const-wide/16 v8, 0x1

    cmp-long v0, v5, v8

    if-nez v0, :cond_a

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v8

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v10

    and-long/2addr v8, v10

    cmp-long v0, v5, v8

    if-lez v0, :cond_a

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/TransTypes;->addBridge(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;ZLorg/openjdk/tools/javac/util/ListBuffer;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public addBridges(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 7
    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->addBridges(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    .line 9
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->addBridges(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    .line 12
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addBridges(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    .line 2
    invoke-virtual {p0, p1, v1, p3, p4}, Lorg/openjdk/tools/javac/comp/TransTypes;->addBridgeIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/openjdk/tools/javac/comp/TransTypes;->addBridges(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    .line 5
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public cast(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v2, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->logAccessErrorInternal(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput v1, p2, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    return-object p1
.end method

.method public coerce(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 5
    throw p1
.end method

.method public coerce(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    .line 6
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result p2

    if-ne v1, p2, :cond_1

    .line 8
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {p2, v1, v0, v2}, Lorg/openjdk/tools/javac/code/Types;->isAssignable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->cast(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public retype(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    :cond_0
    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    .line 2
    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    throw p1
.end method

.method public translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    .line 7
    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    .line 8
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    .line 10
    throw p1
.end method

.method public translateArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 4
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    .line 5
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    const/4 v1, 0x1

    if-nez p3, :cond_3

    .line 7
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-eqz p3, :cond_4

    .line 8
    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    iget-object p2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    iput-object p2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 10
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    .line 11
    :cond_4
    iget-object p3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p3, p2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    iput-object p2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    :cond_5
    return-object p1
.end method

.method public translateArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 13
    :try_start_0
    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 16
    throw p1
.end method

.method public translateClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v3, 0x4000000000000L

    and-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    or-long/2addr v1, v3

    iput-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    if-ne v2, p1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No info for outermost class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    sget-object v1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->isAfter(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The current compile state [%s] of class %s is previous to FLOW"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    :try_start_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->forToplevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-super {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v5, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-boolean v5, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->allowInterfaceBridges:Z

    if-nez v5, :cond_5

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v5

    const-wide/16 v9, 0x200

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {p0, v5, p1, v4}, Lorg/openjdk/tools/javac/comp/TransTypes;->addBridges(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    :cond_6
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_3
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->env:Lorg/openjdk/tools/javac/comp/Env;

    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method public translateTopLevelClass(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->fromAnnotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->allowGraphInference:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSignaturePolymorphic(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :goto_0
    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v3, :cond_1

    iget-object v0, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "method.invoked.with.incorrect.number.arguments"

    invoke-virtual {v0, v3, v5, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2, v3}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->retype(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->retype(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitCase(Lorg/openjdk/tools/javac/tree/JCTree$JCCase;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->retype(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->retype(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_0
    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->retype(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translateVarDefs(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "name.clash.same.erasure"

    invoke-virtual {v0, v2, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->allowGraphInference:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :goto_1
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    :cond_3
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v3, v2, v4}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_4

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    :cond_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->UNBOUND:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    :cond_2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->currentMethod:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->retype(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_1
    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translateCases(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitSynchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translateCatchers(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eq v2, v3, :cond_2

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPECAST:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_1
    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isIntersection()Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;->getExplicitComponents()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitTypeIntersection(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NULLCHK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/TransTypes;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TransTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method
