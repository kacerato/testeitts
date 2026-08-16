.class public final synthetic Lcom/android/tools/r8/internal/h31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;

.field public final synthetic d:Lcom/android/tools/r8/internal/W5;

.field public final synthetic e:Lcom/android/tools/r8/ir/optimize/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/h31;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/h31;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/h31;->c:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/h31;->d:Lcom/android/tools/r8/internal/W5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/h31;->e:Lcom/android/tools/r8/ir/optimize/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/h31;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h31;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/h31;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lcom/android/tools/r8/internal/h31;->d:Lcom/android/tools/r8/internal/W5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/h31;->e:Lcom/android/tools/r8/ir/optimize/a;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/Y5;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method
