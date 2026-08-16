.class public final Lcom/android/tools/r8/internal/eO;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/B50;

.field public final d:Lcom/android/tools/r8/internal/mO;

.field public final e:Lcom/android/tools/r8/internal/CN;

.field public final f:Lcom/android/tools/r8/internal/GN;

.field public final g:Lcom/android/tools/r8/internal/pO;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance v0, Lcom/android/tools/r8/internal/CN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/CN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eO;->e:Lcom/android/tools/r8/internal/CN;

    new-instance v0, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eO;->f:Lcom/android/tools/r8/internal/GN;

    new-instance v1, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pO;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/eO;->g:Lcom/android/tools/r8/internal/pO;

    iput-object p1, p0, Lcom/android/tools/r8/internal/eO;->c:Lcom/android/tools/r8/internal/B50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/eO;->d:Lcom/android/tools/r8/internal/mO;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/eO;->c:Lcom/android/tools/r8/internal/B50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object v0

    .line 5
    const-string v1, "bindings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/YN;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eO;->g:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/YN;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 7
    :cond_0
    const-string v1, "preconditions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/gO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eO;->e:Lcom/android/tools/r8/internal/CN;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/u91;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/u91;-><init>(Lcom/android/tools/r8/internal/CN;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/eO;->g:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v2, v1}, Lcom/android/tools/r8/internal/gO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 10
    :cond_1
    const-string v1, "consequences"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/aO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eO;->e:Lcom/android/tools/r8/internal/CN;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/v91;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/v91;-><init>(Lcom/android/tools/r8/internal/CN;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/eO;->g:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v0, v2, v1}, Lcom/android/tools/r8/internal/aO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1

    .line 13
    :cond_2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/eO;->d:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eO;->e:Lcom/android/tools/r8/internal/CN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/eO;->f:Lcom/android/tools/r8/internal/GN;

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v2

    .line 16
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/eO;->g:Lcom/android/tools/r8/internal/pO;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v2

    .line 20
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CN;->a()Lcom/android/tools/r8/internal/DN;

    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

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
    iget-object p2, p0, Lcom/android/tools/r8/internal/eO;->f:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
