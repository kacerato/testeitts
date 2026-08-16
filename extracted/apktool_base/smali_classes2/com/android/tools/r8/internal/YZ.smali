.class public final Lcom/android/tools/r8/internal/YZ;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/androidapi/a;

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/android/tools/r8/androidapi/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    iput-object v0, p0, Lcom/android/tools/r8/internal/YZ;->b:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/YZ;->c:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/YZ;->d:Z

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    iput-object p1, p0, Lcom/android/tools/r8/internal/YZ;->e:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/YZ;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/YZ;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/YZ;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/YZ;->b:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v2, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/androidapi/a;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {v1}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    goto :goto_1

    :cond_3
    invoke-interface {v0, v1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/YZ;->e:Lcom/android/tools/r8/androidapi/f;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {v1}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    goto :goto_1

    :cond_7
    invoke-interface {v0, v1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_9
    :goto_1
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoDifferentApiReferenceLevel"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/YZ;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
