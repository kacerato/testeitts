.class public Lcom/android/tools/r8/utils/ExceptionDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# static fields
.field static final synthetic e:Z = true


# instance fields
.field private final b:Ljava/lang/Throwable;

.field private final c:Lcom/android/tools/r8/origin/Origin;

.field private final d:Lcom/android/tools/r8/position/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ResourceException;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/ResourceException;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->e:Z

    if-nez v0, :cond_1

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

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->b:Ljava/lang/Throwable;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    .line 7
    iput-object p3, p0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->d:Lcom/android/tools/r8/position/Position;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->b:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->d:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
