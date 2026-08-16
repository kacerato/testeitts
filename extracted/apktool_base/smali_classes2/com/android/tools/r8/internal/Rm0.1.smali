.class public final Lcom/android/tools/r8/internal/Rm0;
.super Lcom/android/tools/r8/internal/VB;
.source "SourceFile"


# instance fields
.field public final transient f:Ljava/lang/Object;

.field public final transient g:Ljava/lang/Object;

.field public final transient h:Lcom/android/tools/r8/internal/Rm0;

.field public transient i:Lcom/android/tools/r8/internal/Rm0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/VB;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Le;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/internal/Rm0;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/Rm0;->h:Lcom/android/tools/r8/internal/Rm0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Rm0;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/VB;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lcom/android/tools/r8/internal/Rm0;->g:Ljava/lang/Object;

    .line 9
    iput-object p3, p0, Lcom/android/tools/r8/internal/Rm0;->h:Lcom/android/tools/r8/internal/Rm0;

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rm0;->g:Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/ZB;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ZB;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rm0;->g:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Rm0;->g:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v1, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lcom/android/tools/r8/internal/VB;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->h:Lcom/android/tools/r8/internal/Rm0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->i:Lcom/android/tools/r8/internal/Rm0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Rm0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rm0;->g:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rm0;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/r8/internal/Rm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Rm0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Rm0;->i:Lcom/android/tools/r8/internal/Rm0;

    :cond_1
    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
