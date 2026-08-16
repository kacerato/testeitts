.class public Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/android/tools/r8/origin/Origin;

.field private final d:Lcom/android/tools/r8/position/Position;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;->b:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;->d:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/errors/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;-><init>(Ljava/util/ArrayList;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The -assumenosideeffects rule matches the following method(s) on java.lang.Object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/references/MethodReference;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/MethodReference;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/references/MethodReference;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ", "

    goto :goto_1

    :cond_0
    const-string v4, " and "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3, v3}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/MethodReference;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, ". This is most likely not intended. Consider specifying the methods more precisely."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;->d:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
