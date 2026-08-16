.class public final Lcom/android/tools/r8/internal/hO;
.super Lcom/android/tools/r8/internal/fO;
.source "SourceFile"


# instance fields
.field public final j:Lcom/android/tools/r8/internal/mO;

.field public final k:Lcom/android/tools/r8/internal/pO;

.field public final l:Lcom/android/tools/r8/internal/RN;

.field public final m:Lcom/android/tools/r8/internal/wP;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fO;-><init>(Lcom/android/tools/r8/internal/B50;)V

    new-instance v0, Lcom/android/tools/r8/internal/wP;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wP;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hO;->m:Lcom/android/tools/r8/internal/wP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hO;->j:Lcom/android/tools/r8/internal/mO;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hO;->k:Lcom/android/tools/r8/internal/pO;

    new-instance p2, Lcom/android/tools/r8/internal/RN;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/RN;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/hO;->l:Lcom/android/tools/r8/internal/RN;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zN;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hO;->l:Lcom/android/tools/r8/internal/RN;

    new-instance v1, Lcom/android/tools/r8/internal/Jc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jc1;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 5
    invoke-super {p0}, Lcom/android/tools/r8/internal/fO;->a()V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/hO;->m:Lcom/android/tools/r8/internal/wP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hO;->l:Lcom/android/tools/r8/internal/RN;

    .line 7
    sget-object v2, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/RN;->c()Lcom/android/tools/r8/internal/zN;

    move-result-object v2

    .line 10
    :cond_0
    iput-object v2, v0, Lcom/android/tools/r8/internal/wP;->b:Lcom/android/tools/r8/internal/zN;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/MM;

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/hO;->j:Lcom/android/tools/r8/internal/mO;

    iget-object v3, p0, Lcom/android/tools/r8/internal/hO;->m:Lcom/android/tools/r8/internal/wP;

    .line 14
    iput-object v1, v3, Lcom/android/tools/r8/internal/wP;->a:Lcom/android/tools/r8/internal/MM;

    if-eqz v1, :cond_1

    .line 15
    new-instance v4, Lcom/android/tools/r8/internal/xP;

    iget-object v3, v3, Lcom/android/tools/r8/internal/wP;->b:Lcom/android/tools/r8/internal/zN;

    invoke-direct {v4, v1, v3}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    .line 16
    invoke-interface {v2, v4}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Target must define an item pattern"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v1, "Items not finalized. Missing call to visitEnd()"

    .line 19
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 20
    throw v0
.end method

.method public final b()Lcom/android/tools/r8/internal/pO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hO;->k:Lcom/android/tools/r8/internal/pO;

    return-object v0
.end method
