.class public final Lcom/android/tools/r8/internal/UK;
.super Lcom/android/tools/r8/internal/EC;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/HashMap;

.field public final g:Lcom/android/tools/r8/internal/hC;

.field public final h:J

.field public transient i:Lcom/android/tools/r8/internal/CC;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lcom/android/tools/r8/internal/hC;J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/EC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UK;->f:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/UK;->g:Lcom/android/tools/r8/internal/hC;

    iput-wide p3, p0, Lcom/android/tools/r8/internal/UK;->h:J

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/UK;->f:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lcom/android/tools/r8/internal/QC;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/UK;->i:Lcom/android/tools/r8/internal/CC;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/CC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UK;->g:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/CC;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/EC;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/UK;->i:Lcom/android/tools/r8/internal/CC;

    :cond_0
    return-object v0
.end method

.method public final j(I)Lcom/android/tools/r8/internal/MY;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UK;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/MY;

    return-object p1
.end method

.method public final size()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/UK;->h:J

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/HJ;->a(J)I

    move-result v0

    return v0
.end method
