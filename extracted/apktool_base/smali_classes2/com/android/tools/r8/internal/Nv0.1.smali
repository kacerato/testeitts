.class public abstract Lcom/android/tools/r8/internal/Nv0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/internal/C2;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/lang/String;Lcom/android/tools/r8/internal/C2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Nv0;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nv0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nv0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Nv0;->c:Lcom/android/tools/r8/internal/C2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/eC;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/SO0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/SO0;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/O2;->d(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/Nv0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/kb;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    :goto_1
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/eC;
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/tools/r8/internal/Nv0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/z9;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v1, 0x0

    aget-byte p1, p1, v1

    int-to-char p1, p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/x9;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/x9;-><init>()V

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_5
    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/MethodPosition;)Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
.end method

.method public final a()Lcom/android/tools/r8/internal/A9;
    .locals 6

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/A9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nv0;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Nv0;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->c()Lcom/android/tools/r8/internal/Ms;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Nv0;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instruction is unrepresentable in DEX "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nv0;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Nv0;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/MethodPosition;)Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;

    move-result-object p1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/Nv0;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->getSupportedApiLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nv0;->c:Lcom/android/tools/r8/internal/C2;

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->getSupportedApiLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nv0;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nv0;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/eC;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nv0;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/ir/optimize/M0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Nv0;->a()Lcom/android/tools/r8/internal/A9;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/ga;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/16 v1, 0xb8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p1, Lcom/android/tools/r8/internal/kb;

    sget-object v1, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    const/4 v1, 0x3

    new-array v3, v1, [Lcom/android/tools/r8/internal/W9;

    aput-object p2, v3, v2

    const/4 p2, 0x1

    aput-object v0, v3, p2

    const/4 p2, 0x2

    aput-object p1, v3, p2

    .line 16
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    invoke-virtual {p3, v1, v3}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    return-void
.end method
