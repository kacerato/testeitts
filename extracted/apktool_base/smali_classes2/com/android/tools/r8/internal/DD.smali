.class public final Lcom/android/tools/r8/internal/DD;
.super Lcom/android/tools/r8/internal/BD;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/BD;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/DD;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;
    .locals 2

    .line 12
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/DD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/O5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v1, v0, Lcom/android/tools/r8/internal/m10;

    if-eqz v1, :cond_0

    goto :goto_3

    .line 14
    :cond_0
    instance-of v0, v0, Lcom/android/tools/r8/internal/e40;

    if-nez v0, :cond_6

    .line 15
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 16
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/DD;->d:Z

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    .line 18
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    .line 20
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    .line 21
    sget-boolean p2, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    instance-of p2, p1, Lcom/android/tools/r8/internal/Zd0;

    if-nez p2, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_5
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/CD;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/CD;-><init>(Lcom/android/tools/r8/internal/ae0;)V

    return-object p2

    .line 25
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-object p1

    :cond_7
    :goto_3
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 4
    sget-boolean p2, Lcom/android/tools/r8/internal/DD;->d:Z

    if-nez p2, :cond_1

    sget-object p2, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->W0()C

    move-result p2

    const/16 v0, 0x44

    if-eq p2, v0, :cond_6

    const/16 v0, 0x46

    if-eq p2, v0, :cond_5

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_4

    const/16 p3, 0x49

    if-eq p2, p3, :cond_3

    const/16 p3, 0x4a

    if-ne p2, p3, :cond_2

    const/4 p1, 0x4

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected value type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x3

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/DD;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/DD;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/DD;

    iget-object v2, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
