.class public final Lcom/android/tools/r8/internal/CD;
.super Lcom/android/tools/r8/internal/BD;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/ae0;

.field public d:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ae0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/BD;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/CD;->e:Z

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/Zd0;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/CD;->d:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/CD;->d:Lcom/android/tools/r8/graph/M2;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/CD;->d:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;
    .locals 2

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/CD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/O5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v1, v0, Lcom/android/tools/r8/internal/m10;

    if-eqz v1, :cond_0

    goto :goto_3

    .line 8
    :cond_0
    instance-of v0, v0, Lcom/android/tools/r8/internal/e40;

    if-nez v0, :cond_6

    .line 9
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/CD;->e:Z

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    .line 12
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->o()Lcom/android/tools/r8/internal/BD;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/BD;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    .line 15
    sget-boolean p2, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of p2, p1, Lcom/android/tools/r8/internal/Zd0;

    if-nez p2, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_5
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/CD;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/CD;-><init>(Lcom/android/tools/r8/internal/ae0;)V

    return-object p2

    .line 19
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-object p1

    :cond_7
    :goto_3
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected InitializedNonNullReferenceFrameTypeWithInterfaces in writer"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
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

    const-class v1, Lcom/android/tools/r8/internal/CD;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/CD;

    iget-object v0, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ae0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ae0;->hashCode()I

    move-result v0

    return v0
.end method

.method public final p()Lcom/android/tools/r8/internal/CD;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->toString()Ljava/lang/String;

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
