.class public abstract Lcom/android/tools/r8/internal/Au0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/S2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l1;
    .locals 9

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->U5:Lcom/android/tools/r8/graph/A2;

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->I2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->c:Lcom/android/tools/r8/graph/L2;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/R2;

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->X5:Lcom/android/tools/r8/graph/A2;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of v6, v2, Lcom/android/tools/r8/graph/X2;

    if-eqz v6, :cond_6

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/C2;

    .line 29
    iget-object v6, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    const/4 v5, 0x2

    .line 31
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/R2;

    .line 32
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    .line 34
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    const/4 v6, 0x1

    .line 35
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/R2;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v7, p0, Lcom/android/tools/r8/graph/S2;

    if-eqz v7, :cond_4

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->r0()Lcom/android/tools/r8/graph/S2;

    move-result-object p0

    .line 39
    iget-object p0, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    .line 40
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    .line 41
    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->H2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 42
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ah;->c:Lcom/android/tools/r8/graph/L2;

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 44
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    .line 45
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 48
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->Y5:Lcom/android/tools/r8/graph/A2;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    instance-of v5, v1, Lcom/android/tools/r8/graph/X2;

    if-eqz v5, :cond_3

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/C2;

    .line 53
    iget-object v5, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/R2;

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/L2;

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 59
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    :goto_0
    return-object v3

    .line 62
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Class name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Au0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/H0;)V

    throw v3

    .line 63
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Class descriptor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Au0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/H0;)V

    throw v3

    .line 64
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enum class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Au0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/H0;)V

    throw v3

    .line 65
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Field name "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Au0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/H0;)V

    throw v3

    .line 66
    :cond_6
    const-string p0, "Invalid EnumDesc"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Au0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/H0;)V

    throw v3
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/graph/H0;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ConstantDynamic in TypeSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    throw v0
.end method

.method public static a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/u1;)Z
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->W5:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->W5:Lcom/android/tools/r8/graph/A2;

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/u1;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->V5:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->V5:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
