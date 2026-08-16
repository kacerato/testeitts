.class public final Lcom/android/tools/r8/graph/b2;
.super Lcom/android/tools/r8/graph/e2;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;

.field public final b:Lcom/android/tools/r8/graph/l1;

.field public final c:Lcom/android/tools/r8/graph/l1;

.field public final d:Lcom/android/tools/r8/graph/l1;

.field public final e:Lcom/android/tools/r8/graph/l1;

.field public final f:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/graph/e2;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "CONFIG"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b2;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "FINE"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b2;->b:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "FINER"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b2;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "FINEST"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b2;->d:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "SEVERE"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b2;->e:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "WARNING"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/b2;->f:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/b2;->a:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/b2;->b:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/b2;->c:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/b2;->d:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/b2;->e:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/b2;->f:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
