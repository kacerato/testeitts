.class public final Lcom/android/tools/r8/internal/HI;
.super Lcom/android/tools/r8/internal/lZ;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public final n:Lcom/android/tools/r8/internal/s6;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/UY;)V
    .locals 6

    sget-object v2, Lcom/android/tools/r8/internal/lZ;->j:Lcom/android/tools/r8/internal/Jt;

    sget-object v4, Lcom/android/tools/r8/internal/lZ;->l:Lcom/android/tools/r8/internal/Jt;

    iget-object v3, p2, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/lZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/k6;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/HI;->n:Lcom/android/tools/r8/internal/s6;

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HI;->n:Lcom/android/tools/r8/internal/s6;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    return-object v1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/HI;->n:Lcom/android/tools/r8/internal/s6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/k6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    return-object v1
.end method
