.class public interface abstract Lcom/android/tools/r8/internal/Vf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Uf;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of p2, p1, Lcom/android/tools/r8/internal/A7;

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p4}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p2

    .line 12
    sget-object p3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    sget-boolean p2, Lcom/android/tools/r8/internal/Uf;->a:Z

    if-nez p2, :cond_5

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/ug;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lcom/android/tools/r8/internal/Vf;
    .locals 0

    return-object p0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract i()Z
.end method

.method public p()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/android/tools/r8/internal/Vf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract y()Lcom/android/tools/r8/internal/Q5;
.end method
