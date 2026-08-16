.class public final Lcom/android/tools/r8/internal/oO;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/B50;

.field public final d:Lcom/android/tools/r8/internal/mO;

.field public final e:Lcom/android/tools/r8/internal/LO;

.field public final f:Lcom/android/tools/r8/internal/CN;

.field public final g:Lcom/android/tools/r8/internal/GN;

.field public final h:Lcom/android/tools/r8/internal/pO;

.field public final i:Lcom/android/tools/r8/internal/bN;

.field public j:Lcom/android/tools/r8/internal/WN;

.field public final k:Lcom/android/tools/r8/internal/RN;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance v0, Lcom/android/tools/r8/internal/CN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/CN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/oO;->f:Lcom/android/tools/r8/internal/CN;

    new-instance v0, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/oO;->g:Lcom/android/tools/r8/internal/GN;

    new-instance v1, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pO;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/oO;->h:Lcom/android/tools/r8/internal/pO;

    new-instance v2, Lcom/android/tools/r8/internal/bN;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bN;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/oO;->i:Lcom/android/tools/r8/internal/bN;

    sget-object v2, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    iput-object v2, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    iput-object p1, p0, Lcom/android/tools/r8/internal/oO;->c:Lcom/android/tools/r8/internal/B50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/oO;->d:Lcom/android/tools/r8/internal/mO;

    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/LO;

    iput-object p2, p0, Lcom/android/tools/r8/internal/oO;->e:Lcom/android/tools/r8/internal/LO;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/tools/r8/internal/RN;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/RN;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/oO;->k:Lcom/android/tools/r8/internal/RN;

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

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->c:Lcom/android/tools/r8/internal/B50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object v0

    .line 18
    const-string v1, "preconditions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/gO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oO;->f:Lcom/android/tools/r8/internal/CN;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/u91;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/u91;-><init>(Lcom/android/tools/r8/internal/CN;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/oO;->h:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v2, v1}, Lcom/android/tools/r8/internal/gO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 21
    :cond_0
    const-string v1, "additionalTargets"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    new-instance p1, Lcom/android/tools/r8/internal/aO;

    new-instance v1, Lcom/android/tools/r8/internal/zo1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/zo1;-><init>(Lcom/android/tools/r8/internal/oO;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/oO;->h:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/aO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->k:Lcom/android/tools/r8/internal/RN;

    new-instance v1, Lcom/android/tools/r8/internal/Ao1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ao1;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 25
    :cond_2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()V
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    .line 28
    sget-object v1, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->e:Lcom/android/tools/r8/internal/LO;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/oO;->h:Lcom/android/tools/r8/internal/pO;

    .line 32
    iget-object v2, v1, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance v2, Lcom/android/tools/r8/internal/PM;

    const-string v3, "MEMBER"

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, v1, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    .line 36
    new-instance v1, Lcom/android/tools/r8/internal/JO;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/JO;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WN;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/oO;->i:Lcom/android/tools/r8/internal/bN;

    .line 39
    sget-object v3, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 40
    iget-object v4, v0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    if-eqz v4, :cond_0

    .line 41
    new-instance v5, Lcom/android/tools/r8/internal/xP;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    .line 42
    iget-object v2, v2, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Target must define an item pattern"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/oO;->a(Lcom/android/tools/r8/internal/OO;)V

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->i:Lcom/android/tools/r8/internal/bN;

    .line 48
    sget-object v2, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 49
    iget-object v3, p0, Lcom/android/tools/r8/internal/oO;->k:Lcom/android/tools/r8/internal/RN;

    .line 50
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/RN;->c()Lcom/android/tools/r8/internal/zN;

    move-result-object v2

    .line 52
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/xP;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->d:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oO;->f:Lcom/android/tools/r8/internal/CN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/oO;->g:Lcom/android/tools/r8/internal/GN;

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v2

    .line 57
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 58
    iget-object v2, p0, Lcom/android/tools/r8/internal/oO;->h:Lcom/android/tools/r8/internal/pO;

    .line 59
    iget-object v2, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 60
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v2

    .line 61
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 62
    iget-object v2, p0, Lcom/android/tools/r8/internal/oO;->i:Lcom/android/tools/r8/internal/bN;

    .line 63
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bN;->a()Lcom/android/tools/r8/internal/cN;

    move-result-object v2

    .line 64
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CN;->a()Lcom/android/tools/r8/internal/DN;

    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v1, "kind must include its member"

    .line 68
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 69
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/OO;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OO;->h()Z

    move-result v0

    const-string v1, "Kind "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    .line 72
    sget-object v2, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    sget-object v2, Lcom/android/tools/r8/internal/WN;->d:Lcom/android/tools/r8/internal/WN;

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/tools/r8/internal/WN;->f:Lcom/android/tools/r8/internal/WN;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/tools/r8/internal/WN;->g:Lcom/android/tools/r8/internal/WN;

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/oO;->c:Lcom/android/tools/r8/internal/B50;

    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be use when annotating a method"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {p1, p1, v0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p1

    .line 80
    throw p1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OO;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    .line 82
    sget-object v0, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    sget-object v0, Lcom/android/tools/r8/internal/WN;->e:Lcom/android/tools/r8/internal/WN;

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/WN;->f:Lcom/android/tools/r8/internal/WN;

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/WN;->h:Lcom/android/tools/r8/internal/WN;

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/oO;->c:Lcom/android/tools/r8/internal/B50;

    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be use when annotating a field"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p1, p1, v0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p1

    .line 90
    throw p1

    :cond_3
    :goto_1
    return-void

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/oO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v0, "Unexpected general pattern for context."

    .line 92
    invoke-static {p1, p1, v0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p1

    .line 93
    throw p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/cN;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/oO;->i:Lcom/android/tools/r8/internal/bN;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/oY0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/oY0;-><init>(Lcom/android/tools/r8/internal/bN;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/cN;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 14
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/oO;->g:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    const-string v0, "Landroidx/annotation/keep/KeepItemKind;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/KeepItemKind;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "ONLY_CLASS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "CLASS_AND_FIELDS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "CLASS_AND_METHODS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "CLASS_AND_MEMBERS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "ONLY_METHODS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "ONLY_MEMBERS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "ONLY_FIELDS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_2

    .line 5
    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 6
    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/internal/WN;->h:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 7
    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/WN;->g:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 8
    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/WN;->f:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 9
    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/WN;->d:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 10
    :pswitch_5
    sget-object v0, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 11
    :pswitch_6
    sget-object v0, Lcom/android/tools/r8/internal/WN;->e:Lcom/android/tools/r8/internal/WN;

    :goto_2
    if-eqz v0, :cond_9

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/oO;->j:Lcom/android/tools/r8/internal/WN;

    return-void

    .line 13
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x606a6154 -> :sswitch_6
        -0x40fd589a -> :sswitch_5
        -0x4097d601 -> :sswitch_4
        -0x22ade1f6 -> :sswitch_3
        -0x22485f5d -> :sswitch_2
        0xbeac388 -> :sswitch_1
        0x7057bb05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
