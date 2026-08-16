.class Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;
.super Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BadVarargsMethod"
.end annotation


# instance fields
.field delegatedError:Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "badVarargs"

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;->delegatedError:Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    return-void
.end method


# virtual methods
.method public access(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;->delegatedError:Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->access(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;->delegatedError:Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 8
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;->delegatedError:Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method
