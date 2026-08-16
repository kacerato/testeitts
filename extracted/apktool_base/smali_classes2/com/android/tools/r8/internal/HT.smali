.class public final Lcom/android/tools/r8/internal/HT;
.super Lcom/android/tools/r8/internal/oa0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/oa0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/HT;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {p2, v0, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/uq;

    iget-object v0, p0, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    sget-object v1, Lcom/android/tools/r8/internal/kw;->b:Lcom/android/tools/r8/internal/kw;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/vh;

    iget-object v0, p0, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveProtoFieldObject("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
