.class public final synthetic Lv/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/v0;

.field public final synthetic c:Lcom/android/tools/r8/graph/j;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/v0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/A1;->b:Lcom/android/tools/r8/ir/optimize/v0;

    iput-object p2, p0, Lv/A1;->c:Lcom/android/tools/r8/graph/j;

    iput-object p3, p0, Lv/A1;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lv/A1;->e:Ljava/util/Set;

    iput-object p5, p0, Lv/A1;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lv/A1;->b:Lcom/android/tools/r8/ir/optimize/v0;

    iget-object v1, p0, Lv/A1;->c:Lcom/android/tools/r8/graph/j;

    iget-object v2, p0, Lv/A1;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lv/A1;->e:Ljava/util/Set;

    iget-object v4, p0, Lv/A1;->f:Ljava/util/Set;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/v0;->a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method
