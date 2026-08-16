.class Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;
.super Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SymbolNotFoundError"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;)V
    .locals 1

    .line 1
    const-string v0, "symbol not found error"

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;)V

    return-void
.end method

.method private args(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getErrorKey(Lorg/openjdk/tools/javac/code/Kinds$KindName;ZZ)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p3, :cond_0

    const-string p3, ".location"

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".args"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v0, ".params"

    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cant.resolve"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLocationDiag(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "location.1"

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->typeKindName(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "location"

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 15
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

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    if-nez p6, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p6

    :goto_0
    if-nez p7, :cond_1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, p7

    :goto_1
    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v5, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_2
    if-nez p3, :cond_3

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_2

    :cond_3
    move-object/from16 v5, p3

    :goto_2
    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_5

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v9, :cond_4

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v8

    const-string v10, "doesnt.exist"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v11}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_4
    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    move v6, v8

    :goto_3
    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v9, :cond_6

    goto :goto_4

    :cond_6
    move v7, v8

    :goto_4
    if-eqz v7, :cond_7

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    goto :goto_5

    :cond_7
    iget-object v8, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->absentKind()Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v8

    :goto_5
    if-eqz v7, :cond_8

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    :cond_8
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    invoke-direct {p0, v8, v7, v6}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->getErrorKey(Lorg/openjdk/tools/javac/code/Kinds$KindName;ZZ)Ljava/lang/String;

    move-result-object v13

    if-eqz v6, :cond_9

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v9, v6, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v11

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->args(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v1}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->getLocationDiag(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    filled-new-array {v8, v2, v4, v3, v1}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_9
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v11

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->args(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v8, v2, v4, v1}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1
.end method
