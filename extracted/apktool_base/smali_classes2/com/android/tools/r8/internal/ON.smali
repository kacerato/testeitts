.class public final Lcom/android/tools/r8/internal/ON;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/B50;

.field public final d:Lcom/android/tools/r8/internal/mO;

.field public final e:Lcom/android/tools/r8/internal/GN;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    sget-object v0, Lcom/android/tools/r8/internal/MN;->d:Lcom/android/tools/r8/internal/MN;

    new-instance v0, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ON;->e:Lcom/android/tools/r8/internal/GN;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ON;->c:Lcom/android/tools/r8/internal/B50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ON;->d:Lcom/android/tools/r8/internal/mO;

    iput-object p4, p0, Lcom/android/tools/r8/internal/ON;->f:Ljava/lang/String;

    iput p5, p0, Lcom/android/tools/r8/internal/ON;->g:I

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pO;-><init>()V

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/NN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ON;->c:Lcom/android/tools/r8/internal/B50;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/NN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/pO;)V

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/ON;->f:Ljava/lang/String;

    const-string v3, "className"

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fO;->a()V

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/ON;->d:Lcom/android/tools/r8/internal/mO;

    .line 9
    new-instance v3, Lcom/android/tools/r8/internal/SM;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/SM;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/internal/ON;->e:Lcom/android/tools/r8/internal/GN;

    .line 11
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v4

    .line 12
    iput-object v4, v3, Lcom/android/tools/r8/internal/SM;->a:Lcom/android/tools/r8/internal/MN;

    .line 13
    iget v4, p0, Lcom/android/tools/r8/internal/ON;->g:I

    .line 14
    iput v4, v3, Lcom/android/tools/r8/internal/SM;->b:I

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v0

    .line 17
    iput-object v0, v3, Lcom/android/tools/r8/internal/SM;->c:Lcom/android/tools/r8/internal/QM;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fO;->c()Lcom/android/tools/r8/internal/MM;

    move-result-object v0

    .line 19
    iput-object v0, v3, Lcom/android/tools/r8/internal/SM;->d:Lcom/android/tools/r8/internal/MM;

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/SM;->a()Lcom/android/tools/r8/internal/TM;

    move-result-object v0

    .line 21
    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

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
    iget-object p2, p0, Lcom/android/tools/r8/internal/ON;->e:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
