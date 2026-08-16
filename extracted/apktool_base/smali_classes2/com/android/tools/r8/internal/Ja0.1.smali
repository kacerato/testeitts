.class public final Lcom/android/tools/r8/internal/Ja0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/A2;

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/graph/A2;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/La0;Lcom/android/tools/r8/graph/u1;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v3, "createBuilder"

    invoke-virtual {p2, v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ja0;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v3, "dynamicMethod"

    invoke-virtual {p2, v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ja0;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p2, v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ja0;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    new-array v1, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "newMutableInstance"

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ja0;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/internal/La0;->h:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/La0;->n:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/internal/La0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p2, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/internal/La0;->p:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p2, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    move-object v2, v3

    filled-new-array/range {v2 .. v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "newRepeatedGeneratedExtension"

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ja0;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/internal/La0;->h:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/internal/La0;->n:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/internal/La0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p2, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/internal/La0;->p:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    move-object v2, v4

    filled-new-array/range {v2 .. v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    const-string v1, "newSingularGeneratedExtension"

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ja0;->f:Lcom/android/tools/r8/graph/A2;

    return-void
.end method
