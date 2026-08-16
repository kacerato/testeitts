.class public Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/errors/DesugarDiagnostic;


# static fields
.field static final synthetic g:Z = true


# instance fields
.field private final b:Lcom/android/tools/r8/origin/Origin;

.field private final c:Lcom/android/tools/r8/position/Position;

.field private final d:Lcom/android/tools/r8/references/ClassReference;

.field private final e:Lcom/android/tools/r8/references/ClassReference;

.field private final f:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->g:Z

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

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->c:Lcom/android/tools/r8/position/Position;

    iput-object p3, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->d:Lcom/android/tools/r8/references/ClassReference;

    iput-object p4, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->e:Lcom/android/tools/r8/references/ClassReference;

    iput-object p5, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->f:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method


# virtual methods
.method public getContextType()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->e:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->d:Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` was not found, it is required for default or static interface methods desugaring of `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->c:Lcom/android/tools/r8/position/Position;

    sget-object v2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    if-eq v1, v2, :cond_0

    invoke-interface {v1}, Lcom/android/tools/r8/position/Position;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->e:Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->f:Lcom/android/tools/r8/references/ClassReference;

    if-eqz v2, :cond_1

    const-string v2, " This missing interface is declared in the direct hierarchy of `"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->f:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMissingType()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->d:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;->c:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
