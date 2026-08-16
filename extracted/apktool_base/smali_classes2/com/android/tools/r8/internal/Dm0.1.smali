.class public final Lcom/android/tools/r8/internal/Dm0;
.super Lcom/android/tools/r8/internal/Bm0;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/J2;

.field public final d:Lcom/android/tools/r8/internal/ZY;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bm0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dm0;->d:Lcom/android/tools/r8/internal/ZY;

    return-void
.end method


# virtual methods
.method public final M()Lcom/android/tools/r8/internal/Dm0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Dm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 3
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
    sget-boolean v1, Lcom/android/tools/r8/internal/Dm0;->e:Z

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
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/uq;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Dm0;->d:Lcom/android/tools/r8/internal/ZY;

    invoke-direct {v0, p3, v2, v3}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 9
    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    if-nez v1, :cond_2

    .line 10
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    :cond_2
    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [Lcom/android/tools/r8/internal/zE;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Dm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;
    .locals 0

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    iget-object p2, p0, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p3, p2, p4}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/Dm0;->d:Lcom/android/tools/r8/internal/ZY;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/tools/r8/internal/Dm0;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/Dm0;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/Dm0;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Dm0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dm0;->d:Lcom/android/tools/r8/internal/ZY;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Dm0;->d:Lcom/android/tools/r8/internal/ZY;

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dm0;->d:Lcom/android/tools/r8/internal/ZY;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DexItemBasedConstString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
