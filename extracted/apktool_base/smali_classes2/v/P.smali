.class public final synthetic Lv/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/Q;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/fB;

.field public final synthetic e:Lcom/android/tools/r8/internal/VJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/P;->b:Lcom/android/tools/r8/ir/optimize/Q;

    iput-object p2, p0, Lv/P;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lv/P;->d:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lv/P;->e:Lcom/android/tools/r8/internal/VJ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lv/P;->b:Lcom/android/tools/r8/ir/optimize/Q;

    iget-object v1, p0, Lv/P;->c:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lv/P;->d:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lv/P;->e:Lcom/android/tools/r8/internal/VJ;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/ir/optimize/Q;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method
