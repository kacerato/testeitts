.class Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;
.super Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InapplicableSymbolError"
.end annotation


# instance fields
.field protected resolveContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;)V

    .line 4
    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->resolveContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "inapplicable symbol error"

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    return-void
.end method


# virtual methods
.method public access(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object p1
.end method

.method public errCandidate()Lorg/openjdk/tools/javac/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->resolveContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$100(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->isApplicable()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->details:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-direct {v0, v2, v1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
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

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v2, p5

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->errCandidate()Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1500(Lorg/openjdk/tools/javac/comp/Resolve;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-static {v3, v8, v2, v6, v4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;->rewrite(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_1
    move-object/from16 v6, p1

    move-object/from16 v8, p2

    :cond_2
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object/from16 v4, p4

    invoke-virtual {v2, v4, v3}, Lorg/openjdk/tools/javac/code/Symbol;->asMemberOf(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, v3, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v7

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v9

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v10, v4, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v10, v10, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v10, :cond_3

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    :cond_3
    move-object v10, v3

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v11

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    move-object/from16 v4, p6

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v12

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v13

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v14, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v15, v1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    move-result-object v10

    const-string v9, "cant.apply.symbol"

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
