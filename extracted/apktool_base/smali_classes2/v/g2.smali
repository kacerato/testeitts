.class public final synthetic Lv/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/z0;

.field public final synthetic c:Lcom/android/tools/r8/ir/optimize/y0;

.field public final synthetic d:Lcom/android/tools/r8/internal/dX;

.field public final synthetic e:Lcom/android/tools/r8/internal/Df;

.field public final synthetic f:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/z0;Lcom/android/tools/r8/ir/optimize/y0;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/g2;->b:Lcom/android/tools/r8/ir/optimize/z0;

    iput-object p2, p0, Lv/g2;->c:Lcom/android/tools/r8/ir/optimize/y0;

    iput-object p3, p0, Lv/g2;->d:Lcom/android/tools/r8/internal/dX;

    iput-object p4, p0, Lv/g2;->e:Lcom/android/tools/r8/internal/Df;

    iput-object p5, p0, Lv/g2;->f:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lv/g2;->b:Lcom/android/tools/r8/ir/optimize/z0;

    iget-object v1, p0, Lv/g2;->c:Lcom/android/tools/r8/ir/optimize/y0;

    iget-object v2, p0, Lv/g2;->d:Lcom/android/tools/r8/internal/dX;

    iget-object v3, p0, Lv/g2;->e:Lcom/android/tools/r8/internal/Df;

    iget-object v4, p0, Lv/g2;->f:Lcom/android/tools/r8/internal/fB;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/ir/optimize/y0;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
