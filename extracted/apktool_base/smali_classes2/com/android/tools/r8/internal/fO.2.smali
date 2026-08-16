.class public abstract Lcom/android/tools/r8/internal/fO;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/B50;

.field public d:Ljava/lang/String;

.field public e:Lcom/android/tools/r8/internal/WN;

.field public final f:Lcom/android/tools/r8/internal/QN;

.field public final g:Lcom/android/tools/r8/internal/jO;

.field public h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    new-instance v0, Lcom/android/tools/r8/internal/QN;

    new-instance v1, Lcom/android/tools/r8/internal/Da1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Da1;-><init>(Lcom/android/tools/r8/internal/fO;)V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/QN;-><init>(Lcom/android/tools/r8/internal/B50;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->f:Lcom/android/tools/r8/internal/QN;

    new-instance v0, Lcom/android/tools/r8/internal/jO;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/jO;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jO;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->f:Lcom/android/tools/r8/internal/QN;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public a()V
    .locals 12

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->d:Ljava/lang/String;

    const-string v1, "CLASS"

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->f:Lcom/android/tools/r8/internal/QN;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QN;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jO;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/fO;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pO;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/PM;

    move-result-object v0

    .line 26
    new-instance v2, Lcom/android/tools/r8/internal/JO;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/JO;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WN;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pO;->a(Lcom/android/tools/r8/internal/MM;)Lcom/android/tools/r8/internal/FO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v4

    .line 36
    iget-object v4, v4, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 38
    iget-object v4, v4, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    .line 39
    invoke-virtual {v4, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FO;

    .line 40
    sget-boolean v4, Lcom/android/tools/r8/internal/pO;->c:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object v0

    .line 42
    iget-object v4, v3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v4, Lcom/android/tools/r8/internal/PM;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v1, v3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v1, v4, v0}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    .line 46
    new-instance v0, Lcom/android/tools/r8/internal/UM;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 47
    :goto_1
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    return-void

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v1, "Cannot define an item explicitly and via a member-binding reference"

    .line 49
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 50
    throw v0

    .line 51
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    .line 52
    iget-object v2, v0, Lcom/android/tools/r8/internal/jO;->d:Lcom/android/tools/r8/internal/lO;

    .line 53
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->b:Lcom/android/tools/r8/internal/PO;

    if-eqz v3, :cond_8

    .line 54
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    if-nez v3, :cond_7

    .line 55
    new-instance v3, Lcom/android/tools/r8/internal/VO;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/VO;-><init>()V

    .line 56
    iput-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 57
    :cond_7
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 58
    iget-object v4, v2, Lcom/android/tools/r8/internal/lO;->b:Lcom/android/tools/r8/internal/PO;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/PO;->c()Lcom/android/tools/r8/internal/QO;

    move-result-object v4

    .line 59
    iput-object v4, v3, Lcom/android/tools/r8/internal/VO;->b:Lcom/android/tools/r8/internal/QO;

    .line 60
    :cond_8
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->d:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 61
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    if-nez v3, :cond_9

    .line 62
    new-instance v3, Lcom/android/tools/r8/internal/VO;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/VO;-><init>()V

    .line 63
    iput-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 64
    :cond_9
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 65
    iget-object v4, v2, Lcom/android/tools/r8/internal/lO;->d:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/mP;

    invoke-static {v4}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v4

    .line 66
    iput-object v4, v3, Lcom/android/tools/r8/internal/VO;->a:Lcom/android/tools/r8/internal/x40;

    .line 67
    :cond_a
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->e:Lcom/android/tools/r8/internal/kq0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 68
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->e:Lcom/android/tools/r8/internal/kq0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/vP;

    .line 69
    iget-object v4, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    if-nez v4, :cond_b

    .line 70
    new-instance v4, Lcom/android/tools/r8/internal/VO;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/VO;-><init>()V

    .line 71
    iput-object v4, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 72
    :cond_b
    iget-object v4, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 73
    invoke-static {v3}, Lcom/android/tools/r8/internal/RO;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/RO;

    move-result-object v3

    .line 74
    iput-object v3, v4, Lcom/android/tools/r8/internal/VO;->c:Lcom/android/tools/r8/internal/RO;

    .line 75
    :cond_c
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->f:Lcom/android/tools/r8/internal/uX;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 76
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    if-nez v3, :cond_d

    .line 77
    new-instance v3, Lcom/android/tools/r8/internal/VO;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/VO;-><init>()V

    .line 78
    iput-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 79
    :cond_d
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 80
    iget-object v4, v2, Lcom/android/tools/r8/internal/lO;->f:Lcom/android/tools/r8/internal/uX;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/uX;->b()Lcom/android/tools/r8/internal/ZO;

    move-result-object v4

    .line 81
    iput-object v4, v3, Lcom/android/tools/r8/internal/VO;->d:Lcom/android/tools/r8/internal/ZO;

    .line 82
    :cond_e
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->g:Lcom/android/tools/r8/internal/cX;

    .line 83
    iget-object v3, v3, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    .line 84
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 85
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    if-nez v3, :cond_f

    .line 86
    new-instance v3, Lcom/android/tools/r8/internal/VO;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/VO;-><init>()V

    .line 87
    iput-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 88
    :cond_f
    iget-object v3, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    .line 89
    iget-object v4, v2, Lcom/android/tools/r8/internal/lO;->g:Lcom/android/tools/r8/internal/cX;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ii;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/UO;

    .line 90
    iput-object v4, v3, Lcom/android/tools/r8/internal/VO;->e:Lcom/android/tools/r8/internal/UO;

    .line 91
    :cond_10
    iget-object v2, v2, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    const-string v3, "Method constructor pattern must match \'void\' type."

    const/4 v4, 0x0

    if-eqz v2, :cond_15

    .line 92
    iget-object v5, v2, Lcom/android/tools/r8/internal/VO;->d:Lcom/android/tools/r8/internal/ZO;

    .line 93
    iget-object v6, v2, Lcom/android/tools/r8/internal/VO;->c:Lcom/android/tools/r8/internal/RO;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    sget-object v7, Lcom/android/tools/r8/internal/RO;->c:Lcom/android/tools/r8/internal/RO;

    if-ne v7, v6, :cond_11

    goto :goto_2

    .line 95
    :cond_11
    iget-object v6, v2, Lcom/android/tools/r8/internal/VO;->c:Lcom/android/tools/r8/internal/RO;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    sget-object v7, Lcom/android/tools/r8/internal/RO;->d:Lcom/android/tools/r8/internal/RO;

    if-ne v7, v6, :cond_14

    .line 97
    :goto_2
    iget-object v5, v2, Lcom/android/tools/r8/internal/VO;->d:Lcom/android/tools/r8/internal/ZO;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v2, Lcom/android/tools/r8/internal/VO;->d:Lcom/android/tools/r8/internal/ZO;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    instance-of v5, v5, Lcom/android/tools/r8/internal/YO;

    if-eqz v5, :cond_12

    goto :goto_3

    .line 99
    :cond_12
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_13
    :goto_3
    sget-object v5, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    :cond_14
    move-object v10, v5

    .line 101
    new-instance v5, Lcom/android/tools/r8/internal/WO;

    iget-object v7, v2, Lcom/android/tools/r8/internal/VO;->a:Lcom/android/tools/r8/internal/x40;

    iget-object v8, v2, Lcom/android/tools/r8/internal/VO;->b:Lcom/android/tools/r8/internal/QO;

    iget-object v9, v2, Lcom/android/tools/r8/internal/VO;->c:Lcom/android/tools/r8/internal/RO;

    iget-object v11, v2, Lcom/android/tools/r8/internal/VO;->e:Lcom/android/tools/r8/internal/UO;

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/internal/WO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/QO;Lcom/android/tools/r8/internal/RO;Lcom/android/tools/r8/internal/ZO;Lcom/android/tools/r8/internal/UO;)V

    goto :goto_4

    :cond_15
    move-object v5, v4

    .line 102
    :goto_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/jO;->e:Lcom/android/tools/r8/internal/TN;

    .line 103
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->e:Lcom/android/tools/r8/internal/tO;

    if-eqz v6, :cond_17

    .line 104
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    if-nez v6, :cond_16

    .line 105
    new-instance v6, Lcom/android/tools/r8/internal/wO;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/wO;-><init>()V

    .line 106
    iput-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 107
    :cond_16
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 108
    iget-object v7, v2, Lcom/android/tools/r8/internal/TN;->e:Lcom/android/tools/r8/internal/tO;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/tO;->c()Lcom/android/tools/r8/internal/uO;

    move-result-object v7

    .line 109
    iput-object v7, v6, Lcom/android/tools/r8/internal/wO;->b:Lcom/android/tools/r8/internal/uO;

    .line 110
    :cond_17
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->b:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 111
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    if-nez v6, :cond_18

    .line 112
    new-instance v6, Lcom/android/tools/r8/internal/wO;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/wO;-><init>()V

    .line 113
    iput-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 114
    :cond_18
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 115
    iget-object v7, v2, Lcom/android/tools/r8/internal/TN;->b:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/mP;

    invoke-static {v7}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v7

    .line 116
    iput-object v7, v6, Lcom/android/tools/r8/internal/wO;->a:Lcom/android/tools/r8/internal/x40;

    .line 117
    :cond_19
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->c:Lcom/android/tools/r8/internal/kq0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 118
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    if-nez v6, :cond_1a

    .line 119
    new-instance v6, Lcom/android/tools/r8/internal/wO;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/wO;-><init>()V

    .line 120
    iput-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 121
    :cond_1a
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 122
    iget-object v7, v2, Lcom/android/tools/r8/internal/TN;->c:Lcom/android/tools/r8/internal/kq0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/vP;

    sget-object v8, Lcom/android/tools/r8/internal/vO;->b:Lcom/android/tools/r8/internal/vO;

    .line 123
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_5

    .line 124
    :cond_1b
    new-instance v8, Lcom/android/tools/r8/internal/vO;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/internal/vO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    .line 125
    :goto_5
    iput-object v8, v6, Lcom/android/tools/r8/internal/wO;->c:Lcom/android/tools/r8/internal/vO;

    .line 126
    :cond_1c
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->d:Lcom/android/tools/r8/internal/Ow;

    .line 127
    iget-object v6, v6, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    .line 128
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 129
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    if-nez v6, :cond_1d

    .line 130
    new-instance v6, Lcom/android/tools/r8/internal/wO;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/wO;-><init>()V

    .line 131
    iput-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 132
    :cond_1d
    iget-object v6, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    .line 133
    iget-object v7, v2, Lcom/android/tools/r8/internal/TN;->d:Lcom/android/tools/r8/internal/Ow;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ii;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zO;

    .line 134
    iput-object v7, v6, Lcom/android/tools/r8/internal/wO;->d:Lcom/android/tools/r8/internal/zO;

    .line 135
    :cond_1e
    iget-object v2, v2, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    if-eqz v2, :cond_1f

    .line 136
    new-instance v6, Lcom/android/tools/r8/internal/xO;

    iget-object v7, v2, Lcom/android/tools/r8/internal/wO;->a:Lcom/android/tools/r8/internal/x40;

    iget-object v8, v2, Lcom/android/tools/r8/internal/wO;->b:Lcom/android/tools/r8/internal/uO;

    iget-object v9, v2, Lcom/android/tools/r8/internal/wO;->c:Lcom/android/tools/r8/internal/vO;

    iget-object v2, v2, Lcom/android/tools/r8/internal/wO;->d:Lcom/android/tools/r8/internal/zO;

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/android/tools/r8/internal/xO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/uO;Lcom/android/tools/r8/internal/vO;Lcom/android/tools/r8/internal/zO;)V

    goto :goto_6

    :cond_1f
    move-object v6, v4

    .line 137
    :goto_6
    iget-object v2, v0, Lcom/android/tools/r8/internal/jO;->b:Lcom/android/tools/r8/internal/GO;

    if-nez v2, :cond_24

    iget-object v2, v0, Lcom/android/tools/r8/internal/jO;->c:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_8

    :cond_20
    if-eqz v5, :cond_22

    if-nez v6, :cond_21

    goto :goto_7

    .line 138
    :cond_21
    iget-object v0, v0, Lcom/android/tools/r8/internal/jO;->a:Lcom/android/tools/r8/internal/E50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    new-instance v1, Lcom/android/tools/r8/internal/FM;

    const-string v2, "Cannot define both a field and a method pattern"

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw v1

    :cond_22
    :goto_7
    if-eqz v5, :cond_23

    move-object v4, v5

    goto :goto_a

    :cond_23
    if-eqz v6, :cond_28

    move-object v4, v6

    goto :goto_a

    :cond_24
    :goto_8
    if-nez v5, :cond_48

    if-nez v6, :cond_48

    .line 140
    sget-object v2, Lcom/android/tools/r8/internal/IO;->e:Lcom/android/tools/r8/internal/IO;

    .line 141
    iget-object v4, v0, Lcom/android/tools/r8/internal/jO;->b:Lcom/android/tools/r8/internal/GO;

    if-eqz v4, :cond_25

    .line 142
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GO;->c()Lcom/android/tools/r8/internal/IO;

    move-result-object v2

    .line 143
    :cond_25
    iget-object v0, v0, Lcom/android/tools/r8/internal/jO;->c:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/mP;

    if-eqz v0, :cond_26

    .line 144
    invoke-static {v0}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v0

    goto :goto_9

    :cond_26
    sget-object v0, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 145
    :goto_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 146
    sget-object v4, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    goto :goto_a

    .line 147
    :cond_27
    new-instance v4, Lcom/android/tools/r8/internal/NO;

    invoke-direct {v4, v0, v2}, Lcom/android/tools/r8/internal/NO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/IO;)V

    .line 148
    :cond_28
    :goto_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    if-nez v0, :cond_2e

    if-nez v4, :cond_29

    .line 149
    sget-object v0, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    goto :goto_b

    .line 150
    :cond_29
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->h()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 151
    sget-object v0, Lcom/android/tools/r8/internal/WN;->d:Lcom/android/tools/r8/internal/WN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    goto :goto_b

    .line 152
    :cond_2a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->f()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 153
    sget-object v0, Lcom/android/tools/r8/internal/WN;->e:Lcom/android/tools/r8/internal/WN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    goto :goto_b

    .line 154
    :cond_2b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 155
    sget-object v0, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    goto :goto_b

    .line 156
    :cond_2c
    sget-boolean v0, Lcom/android/tools/r8/internal/fO;->i:Z

    if-eqz v0, :cond_2d

    goto :goto_b

    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_2e
    :goto_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    .line 158
    sget-object v2, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 160
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jO;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 161
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->f:Lcom/android/tools/r8/internal/QN;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QN;->c()Lcom/android/tools/r8/internal/UM;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    return-void

    .line 162
    :cond_2f
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item pattern for members is incompatible with kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 164
    throw v0

    .line 165
    :cond_30
    sget-boolean v0, Lcom/android/tools/r8/internal/fO;->i:Z

    if-nez v0, :cond_32

    iget-object v5, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    .line 166
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_c

    .line 167
    :cond_31
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_32
    :goto_c
    if-nez v4, :cond_33

    .line 168
    sget-object v4, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    .line 169
    :cond_33
    iget-object v2, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    .line 170
    sget-object v5, Lcom/android/tools/r8/internal/WN;->d:Lcom/android/tools/r8/internal/WN;

    .line 171
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 172
    sget-object v5, Lcom/android/tools/r8/internal/WN;->g:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 173
    :cond_34
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->h()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 174
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 175
    sget-object v6, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 176
    sget-object v2, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    .line 177
    sget-object v8, Lcom/android/tools/r8/internal/RO;->b:Lcom/android/tools/r8/internal/RO;

    .line 178
    sget-object v2, Lcom/android/tools/r8/internal/XO;->b:Lcom/android/tools/r8/internal/XO;

    .line 179
    sget-object v10, Lcom/android/tools/r8/internal/SO;->a:Lcom/android/tools/r8/internal/SO;

    .line 180
    sget-boolean v5, Lcom/android/tools/r8/internal/VO;->f:Z

    if-nez v5, :cond_36

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_d

    :cond_35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_36
    :goto_d
    new-instance v5, Lcom/android/tools/r8/internal/PO;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/PO;-><init>()V

    .line 182
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->d()Lcom/android/tools/r8/internal/IO;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/HO;->a(Lcom/android/tools/r8/internal/IO;)Lcom/android/tools/r8/internal/HO;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/PO;

    .line 183
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/PO;->c()Lcom/android/tools/r8/internal/QO;

    move-result-object v7

    .line 184
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    sget-object v4, Lcom/android/tools/r8/internal/RO;->c:Lcom/android/tools/r8/internal/RO;

    if-ne v4, v8, :cond_37

    goto :goto_e

    .line 186
    :cond_37
    sget-object v4, Lcom/android/tools/r8/internal/RO;->d:Lcom/android/tools/r8/internal/RO;

    if-ne v4, v8, :cond_38

    .line 187
    :goto_e
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 188
    sget-object v2, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    :cond_38
    move-object v9, v2

    goto :goto_f

    .line 189
    :cond_39
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :goto_f
    new-instance v4, Lcom/android/tools/r8/internal/WO;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/WO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/QO;Lcom/android/tools/r8/internal/RO;Lcom/android/tools/r8/internal/ZO;Lcom/android/tools/r8/internal/UO;)V

    goto :goto_10

    :cond_3a
    if-nez v0, :cond_3b

    .line 191
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->f()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_3b
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item pattern for fields is incompatible with kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 194
    throw v0

    .line 195
    :cond_3c
    :goto_10
    iget-object v2, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    .line 196
    sget-object v3, Lcom/android/tools/r8/internal/WN;->e:Lcom/android/tools/r8/internal/WN;

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 198
    sget-object v3, Lcom/android/tools/r8/internal/WN;->h:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 199
    :cond_3d
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->f()Z

    move-result v2

    if-nez v2, :cond_42

    .line 200
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 201
    sget-object v0, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 202
    sget-object v2, Lcom/android/tools/r8/internal/uO;->h:Lcom/android/tools/r8/internal/uO;

    .line 203
    sget-object v2, Lcom/android/tools/r8/internal/vO;->b:Lcom/android/tools/r8/internal/vO;

    .line 204
    sget-object v3, Lcom/android/tools/r8/internal/yO;->b:Lcom/android/tools/r8/internal/yO;

    .line 205
    sget-boolean v5, Lcom/android/tools/r8/internal/wO;->e:Z

    if-nez v5, :cond_3f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_11

    :cond_3e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_3f
    :goto_11
    new-instance v5, Lcom/android/tools/r8/internal/tO;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/tO;-><init>()V

    .line 207
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->d()Lcom/android/tools/r8/internal/IO;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/HO;->a(Lcom/android/tools/r8/internal/IO;)Lcom/android/tools/r8/internal/HO;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/tO;

    .line 208
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/tO;->c()Lcom/android/tools/r8/internal/uO;

    move-result-object v4

    .line 209
    new-instance v5, Lcom/android/tools/r8/internal/xO;

    invoke-direct {v5, v0, v4, v2, v3}, Lcom/android/tools/r8/internal/xO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/uO;Lcom/android/tools/r8/internal/vO;Lcom/android/tools/r8/internal/zO;)V

    move-object v4, v5

    goto :goto_12

    :cond_40
    if-nez v0, :cond_41

    .line 210
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/OO;->h()Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_41
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item pattern for methods is incompatible with kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 213
    throw v0

    .line 214
    :cond_42
    :goto_12
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 215
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 216
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 217
    iget-object v2, p0, Lcom/android/tools/r8/internal/fO;->f:Lcom/android/tools/r8/internal/QN;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/QN;->c()Lcom/android/tools/r8/internal/UM;

    move-result-object v2

    .line 218
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v3

    .line 219
    sget-object v5, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    if-eqz v2, :cond_47

    .line 220
    new-instance v5, Lcom/android/tools/r8/internal/LO;

    invoke-direct {v5, v2, v4}, Lcom/android/tools/r8/internal/LO;-><init>(Lcom/android/tools/r8/internal/UM;Lcom/android/tools/r8/internal/OO;)V

    .line 221
    iget-object v4, v3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 222
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    new-instance v4, Lcom/android/tools/r8/internal/PM;

    const-string v6, "MEMBER"

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object v3, v3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    .line 225
    new-instance v3, Lcom/android/tools/r8/internal/JO;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/JO;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 226
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 227
    iget-object v3, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WN;->a()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 228
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->d()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_14

    .line 229
    :cond_43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v3

    .line 230
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v4

    .line 231
    iget-object v4, v4, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 232
    iget-object v2, v2, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 233
    iget-object v4, v4, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    .line 234
    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/FO;

    .line 235
    sget-boolean v4, Lcom/android/tools/r8/internal/pO;->c:Z

    if-nez v4, :cond_45

    if-eqz v2, :cond_44

    goto :goto_13

    :cond_44
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_45
    :goto_13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object v2

    .line 237
    iget-object v4, v3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 238
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    new-instance v4, Lcom/android/tools/r8/internal/PM;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v1, v3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v1, v4, v2}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    .line 241
    new-instance v2, Lcom/android/tools/r8/internal/UM;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 242
    :goto_14
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 243
    :cond_46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    return-void

    .line 244
    :cond_47
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Invalid attempt to build a member pattern without a class reference"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_48
    iget-object v0, v0, Lcom/android/tools/r8/internal/jO;->a:Lcom/android/tools/r8/internal/E50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    new-instance v1, Lcom/android/tools/r8/internal/FM;

    const-string v2, "Cannot define common member access as well as field or method pattern"

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 13
    const-string v0, "memberFromBinding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/internal/fO;->d:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->f:Lcom/android/tools/r8/internal/QN;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/QN;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Landroidx/annotation/keep/KeepItemKind;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/KeepItemKind;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "ONLY_CLASS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "CLASS_AND_FIELDS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "CLASS_AND_METHODS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "CLASS_AND_MEMBERS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "ONLY_METHODS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "ONLY_MEMBERS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "ONLY_FIELDS"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_2

    .line 4
    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 5
    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/internal/WN;->h:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 6
    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/WN;->g:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 7
    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/WN;->f:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 8
    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/WN;->d:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 9
    :pswitch_5
    sget-object v0, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    goto :goto_2

    .line 10
    :pswitch_6
    sget-object v0, Lcom/android/tools/r8/internal/WN;->e:Lcom/android/tools/r8/internal/WN;

    :goto_2
    if-eqz v0, :cond_9

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    return-void

    .line 12
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x606a6154 -> :sswitch_6
        -0x40fd589a -> :sswitch_5
        -0x4097d601 -> :sswitch_4
        -0x22ade1f6 -> :sswitch_3
        -0x22485f5d -> :sswitch_2
        0xbeac388 -> :sswitch_1
        0x7057bb05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract b()Lcom/android/tools/r8/internal/pO;
.end method

.method public final c()Lcom/android/tools/r8/internal/MM;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/MM;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v1, "Ambiguous item reference."

    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v1, "Item reference not finalized. Missing call to visitEnd()"

    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    throw v0
.end method

.method public d()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/UN;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
