.class public Lcom/android/tools/r8/internal/D5;
.super Lcom/android/tools/r8/internal/v5;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/D5;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/I2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/D5;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    return-object p1
.end method
