.class public final Lcom/android/tools/r8/graph/D2;
.super Lcom/android/tools/r8/graph/F2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/F2;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/graph/I2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    return-object v0
.end method
