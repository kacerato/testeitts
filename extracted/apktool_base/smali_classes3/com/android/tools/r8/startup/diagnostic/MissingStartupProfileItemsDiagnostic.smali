.class public Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;
    }
.end annotation


# static fields
.field private static final d:I

.field static final synthetic e:Z = true


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.tools.r8.startup.diagnostic.limit"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    sput v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/android/tools/r8/origin/Origin;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method private static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/A2;)Ljava/lang/StringBuilder;
    .locals 0

    .line 5
    const-string p1, "Startup method not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/M2;)Ljava/lang/StringBuilder;
    .locals 0

    .line 3
    const-string p1, "Startup class not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/l1;)Ljava/lang/StringBuilder;
    .locals 0

    .line 4
    const-string p1, "Startup field not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/J2;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/startup/diagnostic/a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/startup/diagnostic/a;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v1, Lcom/android/tools/r8/startup/diagnostic/b;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/startup/diagnostic/b;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v2, Lcom/android/tools/r8/startup/diagnostic/c;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/startup/diagnostic/c;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/M2;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/M2;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/A2;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/A2;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/l1;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/l1;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 5

    sget v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->d:I

    const-string v1, "Found "

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " missing startup classes and methods"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/J2;

    invoke-static {v2, v4}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/J2;)V

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    :goto_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/J2;

    invoke-static {v2, v4}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/J2;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->e:Z

    if-nez v0, :cond_4

    sget v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->d:I

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v3, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->d:I

    sub-int/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " other missing startup classes and methods"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
