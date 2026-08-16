.class public final Lcom/android/tools/r8/graph/R1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "storeStoreFence"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/R1;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method
