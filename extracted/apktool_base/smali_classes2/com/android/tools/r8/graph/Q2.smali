.class public final Lcom/android/tools/r8/graph/Q2;
.super Lcom/android/tools/r8/graph/R2$m;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/ZY;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/R2$m;-><init>(Lcom/android/tools/r8/graph/d4;)V

    iput-object p2, p0, Lcom/android/tools/r8/graph/Q2;->e:Lcom/android/tools/r8/internal/ZY;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/Q2;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/graph/V2;->l:Lcom/android/tools/r8/graph/V2;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/graph/V2;->l:Lcom/android/tools/r8/graph/V2;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_3
    :goto_1
    instance-of p0, p0, Lcom/android/tools/r8/graph/Q2;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of p1, p1, Lcom/android/tools/r8/graph/Q2;

    .line 6
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->l:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final bridge synthetic T0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic V0()V
    .locals 0

    return-void
.end method

.method public final W0()Lcom/android/tools/r8/graph/d4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/J2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Q2;->e:Lcom/android/tools/r8/internal/ZY;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Dm0;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/Dm0;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 0

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "DexItemBasedValueString values should always be rewritten into DexValueString"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/J2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/graph/Q2;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->l0()Lcom/android/tools/r8/graph/Q2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/Q2;
    .locals 0

    return-object p0
.end method
