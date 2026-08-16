.class public final Lcom/android/tools/r8/graph/E4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/D4;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/H0;

.field public final c:Lcom/android/tools/r8/graph/H0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/E4;->b:Lcom/android/tools/r8/graph/H0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/E4;->c:Lcom/android/tools/r8/graph/H0;

    return-void
.end method


# virtual methods
.method public final d()Lcom/android/tools/r8/graph/j1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E4;->b:Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    return-object v0
.end method

.method public final getHolder()Lcom/android/tools/r8/graph/E0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E4;->b:Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    return-object v0
.end method

.method public final getReference()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E4;->b:Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final l()Lcom/android/tools/r8/graph/H0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E4;->b:Lcom/android/tools/r8/graph/H0;

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/graph/H0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E4;->c:Lcom/android/tools/r8/graph/H0;

    return-object v0
.end method
