.class public final Lcom/android/tools/r8/internal/X40;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/internal/W40;

.field public final synthetic f:Lcom/android/tools/r8/internal/f50;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/W40;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/X40;->f:Lcom/android/tools/r8/internal/f50;

    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/X40;->e:Lcom/android/tools/r8/internal/W40;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/d50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/X40;->f:Lcom/android/tools/r8/internal/f50;

    iget-object v2, p0, Lcom/android/tools/r8/internal/X40;->e:Lcom/android/tools/r8/internal/W40;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/d50;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/W40;Lcom/android/tools/r8/graph/A2;)V

    .line 3
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/on0;)Lcom/android/tools/r8/internal/aB;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X40;->e:Lcom/android/tools/r8/internal/W40;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/W40;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k0()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X40;->e:Lcom/android/tools/r8/internal/W40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W40;->hashCode()I

    move-result v0

    return v0
.end method

.method public final q0()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X40;->e:Lcom/android/tools/r8/internal/W40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W40;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
