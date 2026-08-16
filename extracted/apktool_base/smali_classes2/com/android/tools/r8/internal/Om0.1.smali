.class public Lcom/android/tools/r8/internal/Om0;
.super Lcom/android/tools/r8/internal/Bm0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/L2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bm0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Om0;->c:Lcom/android/tools/r8/graph/L2;

    return-void
.end method


# virtual methods
.method public final P()Lcom/android/tools/r8/internal/Om0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
    .locals 4

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/Om0;->d:Z

    if-nez v1, :cond_1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/tools/r8/internal/vh;->m:Z

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/uh;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/uh;-><init>()V

    .line 9
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v3

    .line 10
    invoke-interface {p3, v0, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 11
    iput-object p3, v2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 12
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 13
    iput-object p3, v2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 14
    iget-object p3, p0, Lcom/android/tools/r8/internal/Om0;->c:Lcom/android/tools/r8/graph/L2;

    .line 15
    iput-object p3, v2, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    .line 16
    new-instance p3, Lcom/android/tools/r8/internal/vh;

    iget-object p4, v2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v0, v2, Lcom/android/tools/r8/internal/uh;->d:Lcom/android/tools/r8/graph/L2;

    invoke-direct {p3, p4, v0}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 17
    iget-object p4, v2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p4, :cond_2

    .line 18
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_2
    if-nez v1, :cond_4

    .line 19
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    .line 20
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/vh;->v2()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 22
    new-array p1, p1, [Lcom/android/tools/r8/internal/zE;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    return-object p0
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Om0;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j0()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Om0;->c:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Om0;->c:Lcom/android/tools/r8/graph/L2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleStringValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
