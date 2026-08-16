.class public final Lcom/android/tools/r8/graph/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->T2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->y2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->m2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->S2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "newProxyInstance"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/m2;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method
