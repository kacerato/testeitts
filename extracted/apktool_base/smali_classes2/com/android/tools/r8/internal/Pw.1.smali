.class public final Lcom/android/tools/r8/internal/Pw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Q5;
.implements Lcom/android/tools/r8/internal/Vf;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final D()Lcom/android/tools/r8/internal/Pw;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->D()Lcom/android/tools/r8/internal/Pw;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    .line 4
    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/Qx;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1
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

    const-class v1, Lcom/android/tools/r8/internal/Pw;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Pw;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getKind()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final y()Lcom/android/tools/r8/internal/Q5;
    .locals 0

    return-object p0
.end method
