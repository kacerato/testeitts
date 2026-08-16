.class public final Lcom/android/tools/r8/internal/Ia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/graph/H5;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:Ljava/util/Set;

.field public final f:Lcom/android/tools/r8/internal/h80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/h80;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ia;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ia;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ia;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ia;->f:Lcom/android/tools/r8/internal/h80;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;Ljava/util/Deque;)V
    .locals 4

    .line 44
    invoke-interface {p3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/jy;

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 46
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/internal/pu0;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/hv;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->r()Lcom/android/tools/r8/internal/nJ$c;

    move-result-object v0

    .line 70
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$c;->b:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->f:Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v2

    .line 73
    iget-object p3, p3, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    .line 74
    iget-object v3, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 75
    invoke-direct {v1, v2, p2, p3, v3}, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;-><init>(Lcom/android/tools/r8/references/MethodReference;ILjava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    sget-object p2, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 78
    new-instance p3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 79
    iget-object p1, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ia;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/S60;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 50
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    .line 52
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/internal/pu0;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/U9;Lcom/android/tools/r8/internal/S60;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 38
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/internal/pu0;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/U9;Lcom/android/tools/r8/internal/kg;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/NI0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/NI0;-><init>(Lcom/android/tools/r8/internal/Ia;Lcom/android/tools/r8/internal/U9;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/kg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Ia;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v1, p2, Lcom/android/tools/r8/internal/hv;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v1, p2, Lcom/android/tools/r8/internal/q7;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_4

    .line 6
    instance-of v0, p2, Lcom/android/tools/r8/internal/kg;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/H9;->d()Lcom/android/tools/r8/internal/kg;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v0, p1, Lcom/android/tools/r8/internal/Z8;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->a()Lcom/android/tools/r8/internal/Z8;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/Z8;Lcom/android/tools/r8/internal/kg;)V

    return-void

    .line 12
    :cond_5
    instance-of v0, p1, Lcom/android/tools/r8/internal/U9;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->h()Lcom/android/tools/r8/internal/U9;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/U9;Lcom/android/tools/r8/internal/kg;)V

    return-void

    .line 14
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/kg;)V

    return-void

    .line 16
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    instance-of v0, p1, Lcom/android/tools/r8/internal/bb;

    if-nez v0, :cond_8

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/kg;)V

    return-void

    .line 19
    :cond_8
    instance-of v0, p1, Lcom/android/tools/r8/internal/wb;

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->v()Lcom/android/tools/r8/internal/wb;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/wb;Lcom/android/tools/r8/internal/kg;)V

    :cond_9
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Z8;Lcom/android/tools/r8/internal/kg;)V
    .locals 2

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v0, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne p1, v0, :cond_0

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/LI0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/LI0;-><init>(Lcom/android/tools/r8/internal/Ia;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    const/4 v1, 0x3

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/tools/r8/internal/kg;->a(ILjava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/internal/pu0;)V
    .locals 3

    .line 59
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ia;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_1

    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/android/tools/r8/internal/OI0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/OI0;-><init>(Lcom/android/tools/r8/internal/Ia;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/kg;)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v1

    new-instance v2, Lcom/android/tools/r8/internal/JI0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/tools/r8/internal/JI0;-><init>(Lcom/android/tools/r8/internal/Ia;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    .line 43
    invoke-virtual {p2, v1, v2, p1}, Lcom/android/tools/r8/internal/kg;->a(ILjava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kg;)V
    .locals 2

    .line 53
    new-instance v0, Lcom/android/tools/r8/internal/MI0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/MI0;-><init>(Lcom/android/tools/r8/internal/Ia;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/kg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)V
    .locals 3

    .line 81
    sget-boolean v0, Lcom/android/tools/r8/internal/Ia;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->A()Lcom/android/tools/r8/internal/nJ$k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/nJ$k;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 82
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected open interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (assignment: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Ia;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 66
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_1
    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 67
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)V

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ia;->e:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/wb;Lcom/android/tools/r8/internal/S60;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 56
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/internal/pu0;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/wb;Lcom/android/tools/r8/internal/kg;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/android/tools/r8/internal/KI0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/KI0;-><init>(Lcom/android/tools/r8/internal/Ia;Lcom/android/tools/r8/internal/wb;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/kg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final a(Ljava/util/Deque;)V
    .locals 2

    .line 25
    invoke-interface {p1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jy;

    .line 26
    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jy;

    .line 27
    invoke-interface {v0}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-interface {v0}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 31
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ia;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/internal/pu0;)V

    return-void

    .line 34
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/Ia;->g:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/Ia;->g:Z

    if-nez p1, :cond_4

    invoke-interface {v0}, Lcom/android/tools/r8/internal/jy;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method
