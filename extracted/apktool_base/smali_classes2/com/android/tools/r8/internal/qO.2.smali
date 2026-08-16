.class public final Lcom/android/tools/r8/internal/qO;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/B50;

.field public final d:Lcom/android/tools/r8/internal/mO;

.field public final e:Lcom/android/tools/r8/internal/CN;

.field public final f:Lcom/android/tools/r8/internal/hP;

.field public final g:Lcom/android/tools/r8/internal/GN;

.field public final h:Lcom/android/tools/r8/internal/pO;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance v0, Lcom/android/tools/r8/internal/CN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/CN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/qO;->e:Lcom/android/tools/r8/internal/CN;

    new-instance v0, Lcom/android/tools/r8/internal/hP;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hP;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/qO;->f:Lcom/android/tools/r8/internal/hP;

    new-instance v1, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/qO;->g:Lcom/android/tools/r8/internal/GN;

    new-instance v2, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pO;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/qO;->h:Lcom/android/tools/r8/internal/pO;

    iput-object p1, p0, Lcom/android/tools/r8/internal/qO;->c:Lcom/android/tools/r8/internal/B50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qO;->d:Lcom/android/tools/r8/internal/mO;

    invoke-interface {p4, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/FO;

    iget-object p2, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/tools/r8/internal/PM;

    const-string p4, "CONTEXT"

    invoke-direct {p2, p4}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    iget-object p4, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/tools/r8/internal/UM;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/JO;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/JO;-><init>(Lcom/android/tools/r8/internal/PM;)V

    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/ZM;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/ZM;-><init>(Lcom/android/tools/r8/internal/MM;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qO;->c:Lcom/android/tools/r8/internal/B50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object v0

    .line 5
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/aO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qO;->e:Lcom/android/tools/r8/internal/CN;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/v91;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/v91;-><init>(Lcom/android/tools/r8/internal/CN;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/qO;->h:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v2, v1}, Lcom/android/tools/r8/internal/aO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 8
    :cond_0
    const-string v1, "additionalPreconditions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/gO;

    new-instance v1, Lcom/android/tools/r8/internal/zq1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/zq1;-><init>(Lcom/android/tools/r8/internal/qO;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/qO;->h:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/gO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 10
    :cond_1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/qO;->d:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qO;->e:Lcom/android/tools/r8/internal/CN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/qO;->g:Lcom/android/tools/r8/internal/GN;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v2

    .line 14
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/qO;->h:Lcom/android/tools/r8/internal/pO;

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v2

    .line 18
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/qO;->f:Lcom/android/tools/r8/internal/hP;

    .line 20
    iget-object v3, v2, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    sget-object v2, Lcom/android/tools/r8/internal/gP;->a:Lcom/android/tools/r8/internal/gP;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/iP;

    iget-object v2, v2, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/iP;-><init>(Ljava/util/ArrayList;)V

    move-object v2, v3

    .line 24
    :goto_0
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->c:Lcom/android/tools/r8/internal/jP;

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CN;->a()Lcom/android/tools/r8/internal/DN;

    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/jP;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/qO;->f:Lcom/android/tools/r8/internal/hP;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/Aq1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Aq1;-><init>(Lcom/android/tools/r8/internal/hP;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/jP;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/qO;->g:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
