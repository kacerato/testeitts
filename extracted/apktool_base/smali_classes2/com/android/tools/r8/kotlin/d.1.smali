.class public final Lcom/android/tools/r8/kotlin/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/A2;

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/g;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "Lkotlin/jvm/internal/Intrinsics;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v3, "throwParameterIsNullException"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/kotlin/d;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v3, "throwParameterIsNullNPE"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/kotlin/d;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v3, "throwParameterIsNullIAE"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v3, "checkParameterIsNotNull"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/kotlin/d;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v3, "checkNotNullParameter"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/kotlin/d;->d:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "throwNpe"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    return-void
.end method
