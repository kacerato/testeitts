.class public final Lcom/android/tools/r8/kotlin/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/L2;

.field public final b:Lcom/android/tools/r8/graph/L2;

.field public final c:Lcom/android/tools/r8/graph/L2;

.field public final d:Lcom/android/tools/r8/graph/L2;

.field public final e:Lcom/android/tools/r8/graph/L2;

.field public final f:Lcom/android/tools/r8/graph/L2;

.field public final g:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "k"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/e;->a:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "mv"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/e;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "bv"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "d1"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/e;->c:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/e;->d:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "xs"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/e;->e:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "pn"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/e;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v0, "xi"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/e;->g:Lcom/android/tools/r8/graph/L2;

    return-void
.end method
