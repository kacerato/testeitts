.class public Lcom/android/tools/r8/ExtractR8Rules;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 2

    .line 1
    invoke-static {p3, p4}, Lcom/android/tools/r8/internal/ml0;->a(Lcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/Uq0;

    move-result-object p3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->h()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 3
    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/internal/Ht;

    invoke-direct {v1, p4, p3}, Lcom/android/tools/r8/internal/Ht;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/Uq0;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/android/tools/r8/DataResourceProvider;->accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/Q1;

    invoke-direct {v0, p2, p1, p4}, Lcom/android/tools/r8/Q1;-><init>(ZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ht;->a(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Lcom/android/tools/r8/ResourceException;)V

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1, p4}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    .line 17
    iget-object p4, p4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/ExtractR8Rules;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;)V

    return-void
.end method

.method private static synthetic a(ZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/w3;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 9
    :try_start_0
    const-string p0, "# Rules extracted from:"

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 10
    sget-object p0, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 11
    const-string v0, "# "

    invoke-interface {p1, v0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 12
    invoke-interface {p3}, Lcom/android/tools/r8/shaking/w3;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 13
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p3}, Lcom/android/tools/r8/shaking/w3;->get()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 15
    sget-object p0, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 16
    :goto_1
    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static synthetic b(ZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/w3;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/ExtractR8Rules;->a(ZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/w3;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/ExtractR8Rules;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/tools/r8/ExtractR8RulesCommand;->parse([Ljava/lang/String;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/ExtractR8RulesCommand;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lcom/android/tools/r8/ExtractR8RulesCommand;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ExtractR8Rules 8.10.21"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/ExtractR8Rules;->run(Lcom/android/tools/r8/ExtractR8RulesCommand;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/ExtractR8RulesCommand;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractR8RulesCommand;->getRulesConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractR8RulesCommand;->getIncludeOriginComments()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractR8RulesCommand;->getCompilerVersion()Lcom/android/tools/r8/internal/ll0;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractR8RulesCommand;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    iget-object p0, v5, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v6, Lcom/android/tools/r8/P1;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/P1;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/nJ;)V

    invoke-static {p0, v6}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method
