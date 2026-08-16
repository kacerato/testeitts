.class Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;
.super Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmbiguityError"
.end annotation


# instance fields
.field ambiguousSyms:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "ambiguity error"

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->flatten(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->flatten(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private flatten(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public access(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :cond_0
    return-object v0
.end method

.method public addAmbiguousSymbol(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v6, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v4, :cond_0

    iget-object v2, v6, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    :cond_0
    move-object v4, v2

    iget-object v2, v3, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v12

    invoke-static {v6}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v5

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v1, v3}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    invoke-static {v9}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v8

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v9, v1, v3}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v10

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v15

    const-string v14, "ref.ambiguous"

    move-object v10, v2

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v10 .. v15}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1
.end method

.method public mergeAbstracts(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lorg/openjdk/tools/javac/code/Types;->mergeAbstracts(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Z)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1
.end method
