.class public abstract Lcom/android/tools/r8/internal/E00;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/android/tools/r8/internal/E00<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/E00;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/E00;->b:Lcom/android/tools/r8/graph/H5;

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/E00;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/E00;Z)V
.end method

.method public b()Lcom/android/tools/r8/graph/j1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    return-object v0
.end method
