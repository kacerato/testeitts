.class public final Lcom/android/tools/r8/internal/C5;
.super Lcom/android/tools/r8/internal/x5;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/B5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/B5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/x5;-><init>(Lcom/android/tools/r8/graph/v2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/C5;->b:Lcom/android/tools/r8/internal/B5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/internal/C5;->b:Lcom/android/tools/r8/internal/B5;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->u()Lcom/android/tools/r8/internal/vb;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-interface {p1, p2, p3, p6}, Lcom/android/tools/r8/internal/B5;->a(Lcom/android/tools/r8/internal/vb;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
