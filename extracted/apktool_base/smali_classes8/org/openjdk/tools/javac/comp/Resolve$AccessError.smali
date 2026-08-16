.class Lorg/openjdk/tools/javac/comp/Resolve$AccessError;
.super Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessError"
.end annotation


# instance fields
.field private env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private site:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->HIDDEN:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "access error"

    invoke-direct {p0, p1, v0, p4, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->site:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method private toString(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "[tsym:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v1, :cond_0

    const-string v1, "packge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public exists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 13
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

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v4, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object/from16 v8, p4

    iget-object v4, v8, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v2, v4, :cond_1

    new-instance v4, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-direct {v4, v3, v1}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;)V

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->env:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->site:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v2, :cond_2

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v5, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v5, 0x6

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v9

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v5

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v12

    const-string v11, "report.access"

    move-object v8, p1

    move-object v10, p2

    invoke-virtual/range {v7 .. v12}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "not.def.public.cant.access"

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_5

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/comp/Resolve;->inaccessiblePackageReason(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v5

    filled-new-array {v1, v3, v5}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "not.def.access.package.cant.access"

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eq v1, v3, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v2, v1, v3}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1600(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/openjdk/tools/javac/comp/Resolve;->inaccessiblePackageReason(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v6

    filled-new-array {v1, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "not.def.access.class.intf.cant.access.reason"

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_6
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "not.def.access.class.intf.cant.access"

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1
.end method
