.class public final Lcom/android/tools/r8/internal/If0;
.super Lcom/android/tools/r8/internal/Jf0;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/If0;

.field public static final synthetic e:Z = true


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/If0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "LINVALID;"

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/If0;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/If0;->d:Lcom/android/tools/r8/internal/If0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jf0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/If0;->e:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/If0;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/If0;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/If0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/internal/VI0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VI0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/If0;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/If0;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, p1, Lcom/android/tools/r8/internal/If0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->h()Lcom/android/tools/r8/internal/If0;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/If0;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/tools/r8/internal/If0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/If0;->c:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/If0;->c:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/If0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/If0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final h()Lcom/android/tools/r8/internal/If0;
    .locals 0

    return-object p0
.end method

.method public final s()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/If0;->d:Lcom/android/tools/r8/internal/If0;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/If0;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    const-string v2, ""

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/If0;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
