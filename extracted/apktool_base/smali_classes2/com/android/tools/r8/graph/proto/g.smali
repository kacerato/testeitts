.class public Lcom/android/tools/r8/graph/proto/g;
.super Lcom/android/tools/r8/graph/proto/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/proto/g$a;,
        Lcom/android/tools/r8/graph/proto/g$b;
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Pm0;

.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/proto/b;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/proto/g;->d:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/proto/g;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static d()Lcom/android/tools/r8/graph/proto/g$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/proto/g$a;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/proto/g$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/b;
    .locals 1

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/graph/proto/g;->d:Z

    if-eqz p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Once the argument is removed one cannot modify it any further."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/proto/g;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/g;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/graph/proto/g;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/g;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/g;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Pm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/graph/proto/g;->c:Lcom/android/tools/r8/graph/M2;

    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    new-instance p2, Lcom/android/tools/r8/graph/proto/g;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/graph/proto/g;-><init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V

    return-object p2
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/g;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/android/tools/r8/graph/proto/g;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/proto/g;->c:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g;->c:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
