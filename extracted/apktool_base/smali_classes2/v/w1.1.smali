.class public final synthetic Lv/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/VJ;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;

.field public final synthetic d:Lcom/android/tools/r8/internal/EE;

.field public final synthetic e:Lcom/android/tools/r8/ir/optimize/a;

.field public final synthetic f:Lcom/android/tools/r8/internal/Z5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/w1;->a:Lcom/android/tools/r8/internal/VJ;

    iput-object p2, p0, Lv/w1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lv/w1;->c:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lv/w1;->d:Lcom/android/tools/r8/internal/EE;

    iput-object p5, p0, Lv/w1;->e:Lcom/android/tools/r8/ir/optimize/a;

    iput-object p6, p0, Lv/w1;->f:Lcom/android/tools/r8/internal/Z5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lv/w1;->a:Lcom/android/tools/r8/internal/VJ;

    iget-object v1, p0, Lv/w1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lv/w1;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lv/w1;->d:Lcom/android/tools/r8/internal/EE;

    iget-object v4, p0, Lv/w1;->e:Lcom/android/tools/r8/ir/optimize/a;

    iget-object v5, p0, Lv/w1;->f:Lcom/android/tools/r8/internal/Z5;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    move-object v7, p2

    check-cast v7, Lcom/android/tools/r8/graph/E0;

    invoke-static/range {v0 .. v7}, Lcom/android/tools/r8/ir/optimize/u0;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
