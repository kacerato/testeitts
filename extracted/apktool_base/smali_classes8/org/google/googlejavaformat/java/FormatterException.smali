.class public final Lorg/google/googlejavaformat/java/FormatterException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private diagnostics:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diagnostics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/google/googlejavaformat/FormatterDiagnostic;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/FormatterDiagnostic;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/FormatterDiagnostic;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/FormatterException;->diagnostics:Lcom/google/common/collect/g1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/google/googlejavaformat/FormatterDiagnostic;->create(Ljava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Lorg/google/googlejavaformat/FormatterDiagnostic;)V

    return-void
.end method

.method public constructor <init>(Lorg/google/googlejavaformat/FormatterDiagnostic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diagnostic"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/google/googlejavaformat/FormatterDiagnostic;
    .locals 0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/FormatterException;->lambda$fromJavacDiagnostics$0(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p0

    return-object p0
.end method

.method public static fromJavacDiagnostics(Ljava/lang/Iterable;)Lorg/google/googlejavaformat/java/FormatterException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diagnostics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;>;)",
            "Lorg/google/googlejavaformat/java/FormatterException;"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/java/FormatterException;

    new-instance v1, Lorg/google/googlejavaformat/java/b;

    invoke-direct {v1}, Lorg/google/googlejavaformat/java/b;-><init>()V

    invoke-static {p0, v1}, Lcom/google/common/collect/D1;->U(Ljava/lang/Iterable;Lw2/t;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static synthetic lambda$fromJavacDiagnostics$0(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/google/googlejavaformat/FormatterDiagnostic;
    .locals 0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/FormatterException;->toFormatterDiagnostic(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p0

    return-object p0
.end method

.method private static toFormatterDiagnostic(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/google/googlejavaformat/FormatterDiagnostic;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "*>;)",
            "Lorg/google/googlejavaformat/FormatterDiagnostic;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openjdk/javax/tools/Diagnostic;->getLineNumber()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p0}, Lorg/openjdk/javax/tools/Diagnostic;->getColumnNumber()J

    move-result-wide v1

    long-to-int v1, v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {p0, v2}, Lorg/openjdk/javax/tools/Diagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/google/googlejavaformat/FormatterDiagnostic;->create(IILjava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public diagnostics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/FormatterException;->diagnostics:Lcom/google/common/collect/g1;

    return-object v0
.end method
