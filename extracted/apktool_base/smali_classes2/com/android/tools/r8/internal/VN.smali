.class public final Lcom/android/tools/r8/internal/VN;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/B50;

.field public final d:Lcom/android/tools/r8/internal/mO;

.field public final e:Lcom/android/tools/r8/internal/CN;

.field public final f:Lcom/android/tools/r8/internal/GN;

.field public final g:Lcom/android/tools/r8/internal/pO;

.field public final h:Lcom/android/tools/r8/internal/bN;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance v0, Lcom/android/tools/r8/internal/CN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/CN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/VN;->e:Lcom/android/tools/r8/internal/CN;

    new-instance v0, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/VN;->f:Lcom/android/tools/r8/internal/GN;

    new-instance v1, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pO;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/VN;->g:Lcom/android/tools/r8/internal/pO;

    new-instance v2, Lcom/android/tools/r8/internal/bN;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bN;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/VN;->h:Lcom/android/tools/r8/internal/bN;

    iput-object p1, p0, Lcom/android/tools/r8/internal/VN;->c:Lcom/android/tools/r8/internal/B50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/VN;->d:Lcom/android/tools/r8/internal/mO;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/LO;

    iget-object p2, p1, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    sget-object p3, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    iget-object p4, v1, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/android/tools/r8/internal/PM;

    const-string v0, "MEMBER"

    invoke-direct {p4, v0}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v0, p4, p1}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    new-instance p1, Lcom/android/tools/r8/internal/JO;

    invoke-direct {p1, p4}, Lcom/android/tools/r8/internal/JO;-><init>(Lcom/android/tools/r8/internal/PM;)V

    new-instance p4, Lcom/android/tools/r8/internal/xP;

    invoke-direct {p4, p1, p3}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    iget-object p1, v2, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    new-instance p1, Lcom/android/tools/r8/internal/xP;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    iget-object p2, v2, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string p2, "Target must define an item pattern"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 4
    const-string v0, "additionalTargets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/aO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VN;->c:Lcom/android/tools/r8/internal/B50;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/NY0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/NY0;-><init>(Lcom/android/tools/r8/internal/VN;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/VN;->g:Lcom/android/tools/r8/internal/pO;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/aO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object v0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/VN;->d:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VN;->e:Lcom/android/tools/r8/internal/CN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/VN;->f:Lcom/android/tools/r8/internal/GN;

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v2

    .line 11
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/VN;->g:Lcom/android/tools/r8/internal/pO;

    .line 13
    iget-object v2, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v2

    .line 15
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/VN;->h:Lcom/android/tools/r8/internal/bN;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bN;->a()Lcom/android/tools/r8/internal/cN;

    move-result-object v2

    .line 18
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CN;->a()Lcom/android/tools/r8/internal/DN;

    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/cN;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/VN;->h:Lcom/android/tools/r8/internal/bN;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/oY0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/oY0;-><init>(Lcom/android/tools/r8/internal/bN;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/cN;->a(Ljava/util/function/Consumer;)V

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
    iget-object p2, p0, Lcom/android/tools/r8/internal/VN;->f:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
