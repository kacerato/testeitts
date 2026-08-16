.class public final Lcom/android/tools/r8/internal/sB;
.super Lcom/android/tools/r8/internal/lB;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/ir/optimize/F;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lB;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/sB;->b:Lcom/android/tools/r8/ir/optimize/F;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)Lcom/android/tools/r8/graph/i0;
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    const-string v1, "Finalize CF code"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v1, Lcom/android/tools/r8/internal/h9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/tools/r8/internal/h9;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/sB;->b:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/ir/optimize/F;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method
