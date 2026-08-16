.class public Lorg/openjdk/tools/javah/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javah/Util$Exit;
    }
.end annotation


# instance fields
.field public dl:Lorg/openjdk/javax/tools/DiagnosticListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field public log:Ljava/io/PrintWriter;

.field private m:Ljava/util/ResourceBundle;

.field public verbose:Z


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Lorg/openjdk/javax/tools/DiagnosticListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javah/Util;->verbose:Z

    iput-object p1, p0, Lorg/openjdk/tools/javah/Util;->log:Ljava/io/PrintWriter;

    iput-object p2, p0, Lorg/openjdk/tools/javah/Util;->dl:Lorg/openjdk/javax/tools/DiagnosticListener;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javah/Util;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javah/Util;->getText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs createDiagnostic(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/Diagnostic$Kind;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javah/Util$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/openjdk/tools/javah/Util$1;-><init>(Lorg/openjdk/tools/javah/Util;Ljava/lang/String;Lorg/openjdk/javax/tools/Diagnostic$Kind;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private fatal(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Util;->dl:Lorg/openjdk/javax/tools/DiagnosticListener;

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const-string v2, ""

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lorg/openjdk/tools/javah/Util;->createDiagnostic(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    new-instance p1, Lorg/openjdk/tools/javah/Util$Exit;

    const/16 v0, 0xa

    invoke-direct {p1, v0, p2}, Lorg/openjdk/tools/javah/Util$Exit;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private varargs getText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Util;->m:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javah/Util;->initMessages()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javah/Util;->m:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in resources."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javah/Util;->fatal(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    :try_start_0
    const-string v0, "org.openjdk.tools.javah.resources.l10n"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javah/Util;->m:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error loading resources.  Please file a bug report."

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javah/Util;->fatal(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bug(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javah/Util;->bug(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public bug(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javah/Util;->dl:Lorg/openjdk/javax/tools/DiagnosticListener;

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v3}, Lorg/openjdk/tools/javah/Util;->createDiagnostic(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javah/Util;->dl:Lorg/openjdk/javax/tools/DiagnosticListener;

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->NOTE:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const-string v1, "bug.report"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javah/Util;->createDiagnostic(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    .line 4
    new-instance p1, Lorg/openjdk/tools/javah/Util$Exit;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p2}, Lorg/openjdk/tools/javah/Util$Exit;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Util;->dl:Lorg/openjdk/javax/tools/DiagnosticListener;

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-direct {p0, v1, p1, p2}, Lorg/openjdk/tools/javah/Util;->createDiagnostic(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    new-instance p1, Lorg/openjdk/tools/javah/Util$Exit;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javah/Util$Exit;-><init>(I)V

    throw p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javah/Util;->log:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
