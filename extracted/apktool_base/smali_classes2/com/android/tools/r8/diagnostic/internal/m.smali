.class public Lcom/android/tools/r8/diagnostic/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingDefinitionsDiagnostic;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/diagnostic/internal/m;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/m;->b:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/android/tools/r8/diagnostic/internal/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)V

    return-void
.end method


# virtual methods
.method public final getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/diagnostic/internal/m;->b:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/android/tools/r8/diagnostic/internal/k;->a:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/diagnostic/internal/m;->c:Z

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;

    invoke-static {v0, v2}, Lcom/android/tools/r8/diagnostic/internal/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)V

    new-instance v2, Lcom/android/tools/r8/diagnostic/internal/C;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/diagnostic/internal/C;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMissingDefinitions()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/diagnostic/internal/m;->b:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/tools/r8/diagnostic/internal/k;->a:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
