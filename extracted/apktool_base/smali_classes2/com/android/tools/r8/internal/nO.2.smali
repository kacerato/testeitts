.class public final Lcom/android/tools/r8/internal/nO;
.super Lcom/android/tools/r8/internal/fO;
.source "SourceFile"


# instance fields
.field public final j:Lcom/android/tools/r8/internal/B50;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/android/tools/r8/internal/mO;

.field public final m:Lcom/android/tools/r8/internal/CN;

.field public final n:Lcom/android/tools/r8/internal/bN;

.field public final o:Lcom/android/tools/r8/internal/GN;

.field public final p:Lcom/android/tools/r8/internal/pO;

.field public final q:Lcom/android/tools/r8/internal/RN;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fO;-><init>(Lcom/android/tools/r8/internal/B50;)V

    new-instance v0, Lcom/android/tools/r8/internal/CN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/CN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nO;->m:Lcom/android/tools/r8/internal/CN;

    new-instance v0, Lcom/android/tools/r8/internal/bN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nO;->n:Lcom/android/tools/r8/internal/bN;

    new-instance v0, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nO;->o:Lcom/android/tools/r8/internal/GN;

    new-instance v1, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pO;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/nO;->p:Lcom/android/tools/r8/internal/pO;

    iput-object p1, p0, Lcom/android/tools/r8/internal/nO;->j:Lcom/android/tools/r8/internal/B50;

    iput-object p4, p0, Lcom/android/tools/r8/internal/nO;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nO;->l:Lcom/android/tools/r8/internal/mO;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/tools/r8/internal/RN;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/RN;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/nO;->q:Lcom/android/tools/r8/internal/RN;

    const-string p1, "className"

    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/nO;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zN;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->j:Lcom/android/tools/r8/internal/B50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object v0

    .line 6
    const-string v1, "preconditions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/gO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nO;->m:Lcom/android/tools/r8/internal/CN;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/u91;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/u91;-><init>(Lcom/android/tools/r8/internal/CN;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/nO;->p:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v2, v1}, Lcom/android/tools/r8/internal/gO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 9
    :cond_0
    const-string v1, "additionalTargets"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/aO;

    new-instance v1, Lcom/android/tools/r8/internal/Qm1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Qm1;-><init>(Lcom/android/tools/r8/internal/nO;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/nO;->p:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/aO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->q:Lcom/android/tools/r8/internal/RN;

    new-instance v1, Lcom/android/tools/r8/internal/Rm1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Rm1;-><init>()V

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 13
    :cond_2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "Landroidx/annotation/keep/KeepItemKind;"

    const-string v1, "CLASS_AND_MEMBERS"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/fO;->a()V

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    if-eqz v1, :cond_3

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/MM;

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/nO;->a(Lcom/android/tools/r8/internal/MM;)V

    .line 49
    iget-object v2, p0, Lcom/android/tools/r8/internal/nO;->n:Lcom/android/tools/r8/internal/bN;

    .line 50
    sget-object v3, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 51
    iget-object v4, p0, Lcom/android/tools/r8/internal/nO;->q:Lcom/android/tools/r8/internal/RN;

    .line 52
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/RN;->c()Lcom/android/tools/r8/internal/zN;

    move-result-object v3

    .line 54
    :cond_1
    new-instance v4, Lcom/android/tools/r8/internal/xP;

    invoke-direct {v4, v1, v3}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    .line 55
    iget-object v1, v2, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->l:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nO;->m:Lcom/android/tools/r8/internal/CN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/nO;->o:Lcom/android/tools/r8/internal/GN;

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v2

    .line 59
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 60
    iget-object v2, p0, Lcom/android/tools/r8/internal/nO;->p:Lcom/android/tools/r8/internal/pO;

    .line 61
    iget-object v2, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 62
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v2

    .line 63
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 64
    iget-object v2, p0, Lcom/android/tools/r8/internal/nO;->n:Lcom/android/tools/r8/internal/bN;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bN;->a()Lcom/android/tools/r8/internal/cN;

    move-result-object v2

    .line 66
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CN;->a()Lcom/android/tools/r8/internal/DN;

    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v1, "Items not finalized. Missing call to visitEnd()"

    .line 70
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 71
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/MM;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->p:Lcom/android/tools/r8/internal/pO;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pO;->a(Lcom/android/tools/r8/internal/MM;)Lcom/android/tools/r8/internal/FO;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->p:Lcom/android/tools/r8/internal/pO;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pO;->a(Lcom/android/tools/r8/internal/MM;)Lcom/android/tools/r8/internal/FO;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object p1

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->k:Ljava/lang/String;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/android/tools/r8/internal/sO;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p1, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 27
    iget-object v1, v1, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/mP;->b()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 31
    iget-object p1, p1, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 32
    check-cast p1, Lcom/android/tools/r8/internal/CO;

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/nO;->j:Lcom/android/tools/r8/internal/B50;

    const-string v0, "cannot define an \'extends\' pattern."

    .line 36
    invoke-static {p1, p1, v0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p1

    .line 37
    throw p1

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/nO;->j:Lcom/android/tools/r8/internal/B50;

    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must reference its class context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {p1, p1, v0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p1

    .line 40
    throw p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/cN;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->n:Lcom/android/tools/r8/internal/bN;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/oY0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/oY0;-><init>(Lcom/android/tools/r8/internal/bN;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/cN;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/nO;->o:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/pO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nO;->p:Lcom/android/tools/r8/internal/pO;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
