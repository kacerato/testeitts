.class public final synthetic Lorg/openjdk/tools/javac/comp/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Check;

.field public final synthetic b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Q;->a:Lorg/openjdk/tools/javac/comp/Check;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Q;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Q;->c:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-void
.end method


# virtual methods
.method public final report()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Q;->a:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Q;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Q;->c:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->i(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    return-void
.end method
