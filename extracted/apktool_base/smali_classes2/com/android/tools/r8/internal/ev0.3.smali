.class public final Lcom/android/tools/r8/internal/ev0;
.super Lcom/android/tools/r8/internal/bv0;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/ka;

.field public final d:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/bv0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/ev0;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ev0;->d:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final H()Lcom/android/tools/r8/internal/ka;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/ev0;->d:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ev0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p1

    return-object p1
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

    const-class v3, Lcom/android/tools/r8/internal/ev0;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ev0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/ev0;->d:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ev0;->d:Lcom/android/tools/r8/graph/M2;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ev0;->d:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final j()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ev0;->d:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "uninitialized new"

    return-object v0
.end method

.method public final z()Lcom/android/tools/r8/internal/ev0;
    .locals 0

    return-object p0
.end method
