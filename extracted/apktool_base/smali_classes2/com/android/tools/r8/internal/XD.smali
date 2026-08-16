.class public final Lcom/android/tools/r8/internal/XD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/r;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/android/tools/r8/graph/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XD;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final F()Lcom/android/tools/r8/internal/XD;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 2

    .line 25
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->F()Lcom/android/tools/r8/internal/XD;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/XD;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/tools/r8/internal/XD;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/android/tools/r8/internal/ZC;->b(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I

    move-result p2

    if-nez p2, :cond_0

    .line 27
    iget-object p2, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/XD;->a:Ljava/lang/Object;

    new-instance p3, Lcom/android/tools/r8/internal/Q11;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/Q11;-><init>(Lcom/android/tools/r8/internal/XD;)V

    invoke-interface {p2, p1, p3}, Lcom/android/tools/r8/internal/Qx;->a(Lcom/android/tools/r8/internal/Q5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of p3, p1, Lcom/android/tools/r8/internal/lg;

    if-nez p3, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/XD;->a(Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->b()Lcom/android/tools/r8/internal/lg;

    move-result-object p3

    .line 8
    iget-object p3, p3, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p3, 0x0

    .line 13
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->X()Z

    move-result p3

    if-nez p3, :cond_3

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/XD;->a(Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/XD;->a(Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/yg;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/Iw0;
    .locals 2

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/Pw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Pw;-><init>(Lcom/android/tools/r8/graph/l1;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/internal/Qx;->a(Lcom/android/tools/r8/internal/Q5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/XD;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/XD;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/Pw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Pw;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getKind()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final h()Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/XD;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XD;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
