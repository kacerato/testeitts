.class public final Lcom/android/tools/r8/graph/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z5:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->a6:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    const/4 v7, 0x1

    invoke-virtual {p1, v7, v3}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    move-object v3, v6

    filled-new-array/range {v2 .. v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "bootstrap"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/i2;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method
