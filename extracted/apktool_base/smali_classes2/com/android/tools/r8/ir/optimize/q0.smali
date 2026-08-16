.class public final Lcom/android/tools/r8/ir/optimize/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ir/optimize/p0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xw0;

.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/s0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/q0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/q0;->a:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/q0;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/q0;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/q0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/s0;->d:Lcom/android/tools/r8/ir/optimize/a;

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/q0;->b:Lcom/android/tools/r8/ir/optimize/s0;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/tools/r8/ir/optimize/s0;->h:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/q0;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExistingValue(v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
