.class public Lcom/android/tools/r8/retrace/RetraceCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    }
.end annotation


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/retrace/StackTraceSupplier;

.field private final b:Ljava/util/function/Consumer;

.field private final c:Lcom/android/tools/r8/retrace/RetraceOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/retrace/StackTraceSupplier;Ljava/util/function/Consumer;Lcom/android/tools/r8/retrace/RetraceOptions;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceCommand;->a:Lcom/android/tools/r8/retrace/StackTraceSupplier;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/retrace/RetraceCommand;->b:Ljava/util/function/Consumer;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/retrace/RetraceCommand;->c:Lcom/android/tools/r8/retrace/RetraceOptions;

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/retrace/RetraceCommand;->d:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/retrace/RetraceOptions;->isVerifyMappingFileHash()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/StackTraceSupplier;Ljava/util/function/Consumer;Lcom/android/tools/r8/retrace/RetraceOptions;Lcom/android/tools/r8/retrace/I;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/retrace/RetraceCommand;-><init>(Lcom/android/tools/r8/retrace/StackTraceSupplier;Ljava/util/function/Consumer;Lcom/android/tools/r8/retrace/RetraceOptions;)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    new-instance v1, Lcom/android/tools/r8/retrace/i;

    invoke-direct {v1}, Lcom/android/tools/r8/retrace/i;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/H;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/H;)V

    return-object v0
.end method


# virtual methods
.method public getOptions()Lcom/android/tools/r8/retrace/RetraceOptions;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceCommand;->c:Lcom/android/tools/r8/retrace/RetraceOptions;

    return-object v0
.end method

.method public getRetracedStackTraceConsumer()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceCommand;->b:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public getStackTraceSupplier()Lcom/android/tools/r8/retrace/StackTraceSupplier;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceCommand;->a:Lcom/android/tools/r8/retrace/StackTraceSupplier;

    return-object v0
.end method

.method public getStacktraceSupplier()Lcom/android/tools/r8/retrace/StackTraceSupplier;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->getStackTraceSupplier()Lcom/android/tools/r8/retrace/StackTraceSupplier;

    move-result-object v0

    return-object v0
.end method

.method public printMemory()Z
    .locals 1

    const-string v0, "com.android.tools.r8.printmemory"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public printTimes()Z
    .locals 1

    const-string v0, "com.android.tools.r8.printtimes"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
