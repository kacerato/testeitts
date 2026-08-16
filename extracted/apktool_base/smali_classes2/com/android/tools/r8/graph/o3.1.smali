.class public final Lcom/android/tools/r8/graph/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/l3;


# static fields
.field public static final e:Lcom/android/tools/r8/graph/o3;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;

.field public b:I

.field public c:Lcom/android/tools/r8/graph/d;

.field public d:Lcom/android/tools/r8/graph/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/graph/o3;

    sget-object v1, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1, v1}, Lcom/android/tools/r8/graph/o3;-><init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V

    sput-object v0, Lcom/android/tools/r8/graph/o3;->e:Lcom/android/tools/r8/graph/o3;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    iput p2, p0, Lcom/android/tools/r8/graph/o3;->b:I

    iput-object p3, p0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    iput-object p4, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/graph/o3;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/o3;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 9
    iget v1, p0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 11
    iget v0, p0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_5
    :goto_2
    sget-object v0, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    iput-object v0, p0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    .line 14
    iget v0, p0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/graph/o3;->b:I

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/d;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p2, Lcom/android/tools/r8/graph/b;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p2, Lcom/android/tools/r8/graph/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/graph/bf;

    invoke-direct {v0, p0, p3}, Lcom/android/tools/r8/graph/bf;-><init>(Lcom/android/tools/r8/graph/o3;Ljava/util/Set;)V

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/a;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should never be iterating the indirect accesses when they are unknown"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/l1;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    if-eq p2, v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/c;->a:Lcom/android/tools/r8/graph/c;

    iput-object v0, p0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    iput-object v0, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    iget-object v1, p0, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/l1;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    iget-object v1, p0, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
