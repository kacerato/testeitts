.class public Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/RetraceCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/android/tools/r8/DiagnosticsHandler;

.field private c:Lcom/android/tools/r8/retrace/MappingSupplier;

.field private d:Ljava/lang/String;

.field private e:Lcom/android/tools/r8/retrace/StackTraceSupplier;

.field private f:Ljava/util/function/Consumer;

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "(?:.*?\\bat\\s+%c\\.%m\\s*\\(%S\\)\\p{Z}*(?:~\\[.*\\])?)|(?:(?:(?:%c|.*)?[:\"]\\s+)?%c(?:(:|]).*)?)"

    iput-object v0, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->g:Z

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/H;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/C7;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/C7;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->a(Lcom/android/tools/r8/internal/C7;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/retrace/RetraceCommand;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->c:Lcom/android/tools/r8/retrace/MappingSupplier;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->e:Lcom/android/tools/r8/retrace/StackTraceSupplier;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StackTrace not specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->f:Ljava/util/function/Consumer;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/tools/r8/retrace/RetraceOptions;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->setRegularExpression(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->c:Lcom/android/tools/r8/retrace/MappingSupplier;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->setMappingSupplier(Lcom/android/tools/r8/retrace/MappingSupplier;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->a:Z

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->setVerbose(Z)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->g:Z

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->setVerifyMappingFileHash(Z)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->build()Lcom/android/tools/r8/retrace/RetraceOptions;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/retrace/RetraceCommand;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->e:Lcom/android/tools/r8/retrace/StackTraceSupplier;

    iget-object v3, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->f:Ljava/util/function/Consumer;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/tools/r8/retrace/RetraceCommand;-><init>(Lcom/android/tools/r8/retrace/StackTraceSupplier;Ljava/util/function/Consumer;Lcom/android/tools/r8/retrace/RetraceOptions;Lcom/android/tools/r8/retrace/I;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RetracedStackConsumer not specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ProguardMapSupplier not specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DiagnosticsHandler not specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMappingSupplier(Lcom/android/tools/r8/retrace/MappingSupplier;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/MappingSupplier<",
            "*>;)",
            "Lcom/android/tools/r8/retrace/RetraceCommand$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->c:Lcom/android/tools/r8/retrace/MappingSupplier;

    return-object p0
.end method

.method public setRegularExpression(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setRetracedStackTraceConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/tools/r8/retrace/RetraceCommand$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->f:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setStackTrace(Lcom/android/tools/r8/retrace/StackTraceSupplier;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->e:Lcom/android/tools/r8/retrace/StackTraceSupplier;

    return-object p0
.end method

.method public setStackTrace(Ljava/util/List;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/retrace/RetraceCommand$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/android/tools/r8/retrace/G;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/retrace/G;-><init>(Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setStackTrace(Lcom/android/tools/r8/retrace/StackTraceSupplier;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVerbose(Z)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->a:Z

    return-object p0
.end method

.method public setVerifyMappingFileHash(Z)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->g:Z

    return-object p0
.end method
