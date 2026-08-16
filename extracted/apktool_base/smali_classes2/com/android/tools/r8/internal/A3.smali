.class public final Lcom/android/tools/r8/internal/A3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/A3;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Lcom/android/tools/r8/internal/Q;

.field public final d:Lcom/android/tools/r8/internal/W;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/A3;

    sget-object v1, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    sget-object v2, Lcom/android/tools/r8/internal/pI;->a:Lcom/android/tools/r8/internal/oI;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/A3;-><init>(ZLcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nI;)V

    sput-object v0, Lcom/android/tools/r8/internal/A3;->e:Lcom/android/tools/r8/internal/A3;

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/A3;->a:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/A3;->b:Lcom/android/tools/r8/graph/M2;

    check-cast p3, Lcom/android/tools/r8/internal/Q;

    iput-object p3, p0, Lcom/android/tools/r8/internal/A3;->c:Lcom/android/tools/r8/internal/Q;

    check-cast p4, Lcom/android/tools/r8/internal/W;

    iput-object p4, p0, Lcom/android/tools/r8/internal/A3;->d:Lcom/android/tools/r8/internal/W;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/A3;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/A3;->e:Lcom/android/tools/r8/internal/A3;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 4
    iget-boolean v1, v0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    .line 5
    sget-boolean v2, Lcom/android/tools/r8/internal/A3;->f:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v2, v2, Lcom/android/tools/r8/graph/proto/i;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 14
    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/dH;

    const/16 v3, 0x10

    .line 15
    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 16
    new-instance v4, Lcom/android/tools/r8/internal/dI;

    .line 17
    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 18
    new-instance v3, Lcom/android/tools/r8/internal/ky0;

    invoke-direct {v3, v1, p0, v4, v2}, Lcom/android/tools/r8/internal/ky0;-><init>(ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/internal/SG;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/internal/ZH;)V

    .line 19
    new-instance p0, Lcom/android/tools/r8/internal/A3;

    invoke-direct {p0, v1, p1, v2, v4}, Lcom/android/tools/r8/internal/A3;-><init>(ZLcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nI;)V

    return-object p0
.end method

.method public static a(ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/internal/SG;ILcom/android/tools/r8/graph/proto/b;)V
    .locals 1

    .line 20
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of v0, p5, Lcom/android/tools/r8/graph/proto/i;

    if-eqz v0, :cond_2

    .line 22
    sget-boolean p1, Lcom/android/tools/r8/internal/A3;->f:Z

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    .line 24
    sget-boolean p1, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez p1, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-lt p4, p1, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 27
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sub-int/2addr p4, p0

    .line 28
    sget-boolean p0, Lcom/android/tools/r8/internal/A3;->f:Z

    if-nez p0, :cond_6

    if-ltz p4, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 29
    :cond_6
    :goto_2
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    invoke-interface {p2, p4}, Lcom/android/tools/r8/internal/JH;->add(I)Z

    return-void

    :cond_7
    if-nez p0, :cond_9

    .line 31
    instance-of p0, p5, Lcom/android/tools/r8/graph/proto/k;

    if-eqz p0, :cond_8

    goto :goto_3

    .line 32
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 33
    :cond_9
    :goto_3
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-interface {p3, p4, p0}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/A3;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/A3;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/A3;->a:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/internal/A3;->a:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/A3;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/A3;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/A3;->c:Lcom/android/tools/r8/internal/Q;

    iget-object v2, p1, Lcom/android/tools/r8/internal/A3;->c:Lcom/android/tools/r8/internal/Q;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/A3;->d:Lcom/android/tools/r8/internal/W;

    iget-object p1, p1, Lcom/android/tools/r8/internal/A3;->d:Lcom/android/tools/r8/internal/W;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/A3;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/A3;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/A3;->c:Lcom/android/tools/r8/internal/Q;

    iget-object v3, p0, Lcom/android/tools/r8/internal/A3;->d:Lcom/android/tools/r8/internal/W;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
