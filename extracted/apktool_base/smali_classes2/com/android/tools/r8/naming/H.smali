.class public final Lcom/android/tools/r8/naming/H;
.super Lcom/android/tools/r8/internal/Rn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Rn;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;
    .locals 2

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    sget-object v0, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    return-object v1
.end method
