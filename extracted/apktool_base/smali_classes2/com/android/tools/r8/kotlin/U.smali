.class public final Lcom/android/tools/r8/kotlin/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/d1;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/D5;

.field public final b:Lcom/android/tools/r8/shaking/I;

.field public final c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/kotlin/V;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/I;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/U;->d:Lcom/android/tools/r8/kotlin/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/U;->a:Lcom/android/tools/r8/graph/D5;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/U;->b:Lcom/android/tools/r8/shaking/I;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/U;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/u1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/U;->d:Lcom/android/tools/r8/kotlin/V;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Not yet used"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/U;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/U;->b:Lcom/android/tools/r8/shaking/I;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/U;->a:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/I;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method
