.class public final Lcom/android/tools/r8/internal/Yf;
.super Lcom/android/tools/r8/internal/Xf;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Vf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Xf;-><init>(Lcom/android/tools/r8/internal/Vf;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p2, Lcom/android/tools/r8/internal/A7;

    if-eqz v0, :cond_0

    return-object p2

    .line 4
    :cond_0
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 6
    iget-wide v2, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v2

    const v0, 0x12492492

    and-int/2addr v0, p2

    const v2, 0x24924924

    and-int/2addr v2, p2

    const v3, -0x24924925

    and-int/2addr p2, v3

    shr-int/lit8 v3, v2, 0x1

    or-int/2addr p2, v3

    shl-int/2addr v0, v1

    and-int/2addr v0, v2

    or-int/2addr p2, v0

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long v0, p2

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    instance-of v0, p2, Lcom/android/tools/r8/internal/Jj;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->H()Lcom/android/tools/r8/internal/Jj;

    move-result-object p2

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    const-wide/32 v2, 0x12492492

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object v2

    const-wide/32 v3, 0x24924924

    .line 13
    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object v3

    const-wide/32 v4, -0x36db6db7

    .line 14
    invoke-virtual {v0, v4, v5}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    .line 15
    invoke-static {p1, p2, v2}, Lcom/android/tools/r8/internal/m;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 16
    invoke-static {p1, p2, v3}, Lcom/android/tools/r8/internal/m;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    .line 17
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/m;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 18
    invoke-static {p1, v3, v1}, Lcom/android/tools/r8/internal/m;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;I)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 19
    invoke-static {p1, v2, v1}, Lcom/android/tools/r8/internal/m;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;I)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 20
    invoke-static {p1, v1, v3}, Lcom/android/tools/r8/internal/m;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 21
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/m;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/android/tools/r8/internal/m;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 22
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/m;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/Yf;->c:Z

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_4
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Yf;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Yf;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    const-class v1, Lcom/android/tools/r8/internal/Yf;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateChangedFlags("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
