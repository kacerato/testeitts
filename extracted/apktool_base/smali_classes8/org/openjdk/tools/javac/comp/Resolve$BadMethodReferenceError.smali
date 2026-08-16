.class Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;
.super Lorg/openjdk/tools/javac/comp/Resolve$StaticError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BadMethodReferenceError"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;

.field unboundLookup:Z


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-boolean p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;->unboundLookup:Z

    return-void
.end method


# virtual methods
.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 10
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

    iget-boolean v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;->unboundLookup:Z

    if-nez v1, :cond_0

    const-string v1, "bad.static.method.in.bound.lookup"

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bad.static.method.in.unbound.lookup"

    goto :goto_0

    :cond_1
    const-string v1, "bad.instance.method.in.unbound.lookup"

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v1

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v7

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    :goto_2
    return-object v1
.end method
