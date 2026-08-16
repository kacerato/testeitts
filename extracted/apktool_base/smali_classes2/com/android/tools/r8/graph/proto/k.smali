.class public Lcom/android/tools/r8/graph/proto/k;
.super Lcom/android/tools/r8/graph/proto/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/proto/k$a;
    }
.end annotation


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/internal/Pm0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Pm0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/proto/b;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/k;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    return-void
.end method

.method public static d()Lcom/android/tools/r8/graph/proto/k$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/proto/k$a;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/proto/k$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/b;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/proto/k;->f:Z

    if-nez v0, :cond_2

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/proto/k;->a(Lcom/android/tools/r8/graph/proto/k;)Lcom/android/tools/r8/graph/proto/k;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/proto/k;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/k;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/k;)Lcom/android/tools/r8/graph/proto/k;
    .locals 4

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/proto/k;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/graph/proto/k;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    .line 13
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/proto/k;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Pm0;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/graph/proto/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/k;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3, v2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, p1, v2, p2, p3}, Lcom/android/tools/r8/internal/Pm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object v1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    if-ne v2, p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    if-eq v1, p1, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    .line 7
    :cond_3
    :goto_1
    new-instance p1, Lcom/android/tools/r8/graph/proto/k;

    iget-object p2, p0, Lcom/android/tools/r8/graph/proto/k;->c:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p1, p2, v2, v0, v1}, Lcom/android/tools/r8/graph/proto/k;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Pm0;)V

    return-object p1
.end method

.method public e()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/proto/k;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/k;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/proto/k;->c:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/k;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/k;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
