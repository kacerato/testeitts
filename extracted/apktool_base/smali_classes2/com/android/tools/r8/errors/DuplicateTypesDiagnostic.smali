.class public Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final b:Lcom/android/tools/r8/references/ClassReference;

.field private final c:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/references/ClassReference;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/origin/Origin;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->d:Z

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

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->b:Lcom/android/tools/r8/references/ClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->b:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->c:Ljava/util/Collection;

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is defined multiple times: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getOrigins()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/origin/Origin;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method

.method public getType()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;->b:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method
