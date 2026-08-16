.class Lorg/openjdk/tools/javac/comp/Resolve$StaticError;
.super Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StaticError"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->STATICERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "static error"

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 6
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

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p4, p5, :cond_0

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object p4, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p4, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p4, p4, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {p4}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object p4

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object v5

    const-string v4, "non-static.cant.be.ref"

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method
