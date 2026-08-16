.class public final Lcom/android/tools/r8/internal/Qk0;
.super Lcom/android/tools/r8/internal/jc;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/jc;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method


# virtual methods
.method public final H0()Lcom/android/tools/r8/internal/Qk0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe0

    .line 9
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/cb;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/cb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/Ln;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Rr;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/Rr;-><init>(ILcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method
