.class public final Lcom/android/tools/r8/internal/vZ;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/graph/M2;

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p3, Lcom/android/tools/r8/internal/vZ;->m:Z

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    iput p2, p0, Lcom/android/tools/r8/internal/vZ;->l:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 18
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/yD;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 14
    sget-boolean p3, Lcom/android/tools/r8/internal/vZ;->m:Z

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->P:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p3, :cond_5

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/jr;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    iget v3, p0, Lcom/android/tools/r8/internal/vZ;->l:I

    invoke-direct {v1, v0, v3, v2}, Lcom/android/tools/r8/internal/jr;-><init>(IILcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    iget v1, p0, Lcom/android/tools/r8/internal/vZ;->l:I

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 3

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/ya;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    iget v2, p0, Lcom/android/tools/r8/internal/vZ;->l:I

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/ya;-><init>(ILcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/vZ;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->x0()Lcom/android/tools/r8/internal/vZ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/vZ;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "NewUnboxedEnumInstance has no register arguments"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Lcom/android/tools/r8/internal/vZ;
    .locals 0

    return-object p0
.end method
