.class public final Lcom/android/tools/r8/shaking/h4;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/origin/Origin;

.field public final e:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/h4;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/h4;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/h4;->d:Lcom/android/tools/r8/origin/Origin;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/h4;->e:Lcom/android/tools/r8/position/Position;

    return-void
.end method


# virtual methods
.method public final getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h4;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h4;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h4;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h4;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h4;->d:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public final getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h4;->e:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
