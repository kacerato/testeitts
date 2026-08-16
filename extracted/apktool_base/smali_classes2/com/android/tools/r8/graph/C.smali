.class public Lcom/android/tools/r8/graph/C;
.super Lcom/android/tools/r8/graph/B0;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Lcom/android/tools/r8/graph/h;

.field public final i:Lcom/android/tools/r8/kotlin/g;

.field public final j:Lcom/android/tools/r8/internal/Hf;

.field public final k:Lcom/android/tools/r8/internal/vk0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;ZZZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/B0;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;)V

    new-instance v0, Lcom/android/tools/r8/internal/Hf;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Hf;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/C;->j:Lcom/android/tools/r8/internal/Hf;

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/C;->c:Z

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/C;->d:Z

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/C;->e:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/graph/C;->f:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/graph/C;->g:Z

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object p3

    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->d()Lcom/android/tools/r8/synthesis/E;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/graph/C;->h:Lcom/android/tools/r8/graph/h;

    iget-object p3, p2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/android/tools/r8/ClassFileConsumer;->emptyConsumer()Lcom/android/tools/r8/ClassFileConsumer;

    move-result-object p3

    iput-object p3, p2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    :cond_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/android/tools/r8/internal/nJ$l;->a:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/tools/r8/graph/C;->h:Lcom/android/tools/r8/graph/h;

    :goto_0
    new-instance p2, Lcom/android/tools/r8/kotlin/g;

    iget-object p3, p1, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/kotlin/g;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object p2, p0, Lcom/android/tools/r8/graph/C;->i:Lcom/android/tools/r8/kotlin/g;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p2

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    if-nez p2, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/android/tools/r8/internal/vk0;

    invoke-static {p2}, Lcom/android/tools/r8/internal/eV;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/internal/dV;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/wk0;->a(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/vk0;-><init>(Lcom/android/tools/r8/internal/wk0;)V

    move-object p1, p3

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 7

    .line 1
    sget-object v2, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/R2;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/X2;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vk0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/graph/W2;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->y0()Lcom/android/tools/r8/graph/W2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vk0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_2
    instance-of v0, p1, Lcom/android/tools/r8/graph/Q2;

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->l0()Lcom/android/tools/r8/graph/Q2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_3
    instance-of v0, p1, Lcom/android/tools/r8/graph/T2;

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->t0()Lcom/android/tools/r8/graph/T2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vk0;->d(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_4
    instance-of v0, p1, Lcom/android/tools/r8/graph/U2;

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->u0()Lcom/android/tools/r8/graph/U2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vk0;->d(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_5
    instance-of v0, p1, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/t0;)Ljava/lang/String;
    .locals 2

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/t0;->k0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/C;->a(Lcom/android/tools/r8/graph/R2;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u0;Ljava/io/PrintStream;)V
    .locals 8

    .line 27
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/C;->e:Z

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    const-string v0, "# Annotations:"

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    .line 31
    iget-object v3, v2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/graph/C;->i:Lcom/android/tools/r8/kotlin/g;

    iget-object v6, v5, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    const-string v7, "#  "

    if-ne v4, v6, :cond_4

    .line 32
    sget-boolean v2, Lcom/android/tools/r8/graph/C;->l:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Kotlin metadata is a class annotation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 33
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/tools/r8/kotlin/c0;->a:Z

    if-nez v2, :cond_3

    if-ne v4, v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_3
    :goto_2
    :try_start_0
    invoke-static {v5, v3}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/internal/NQ;

    move-result-object v2

    .line 35
    invoke-static {v7, v2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/NQ;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 36
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/r0;->m0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v4, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, v2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    new-instance v4, Lcom/android/tools/r8/graph/t6;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/graph/t6;-><init>(Lcom/android/tools/r8/graph/C;)V

    sget-object v5, Lcom/android/tools/r8/internal/zq0$a;->c:Lcom/android/tools/r8/internal/zq0$a;

    .line 41
    const-string v6, ","

    invoke-static {v6, v2, v4, v5}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/function/Function;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v4, v7, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 47
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :catchall_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 6

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/kB;

    iget-object v1, p0, Lcom/android/tools/r8/graph/C;->h:Lcom/android/tools/r8/graph/h;

    .line 7
    invoke-static {v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 8
    sget-object v1, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/graph/C;->j:Lcom/android/tools/r8/internal/Hf;

    .line 10
    new-instance v3, Lcom/android/tools/r8/internal/Ef;

    .line 11
    iget v4, v2, Lcom/android/tools/r8/internal/Hf;->d:I

    add-int/lit8 v5, v4, 0x1

    .line 12
    iput v5, v2, Lcom/android/tools/r8/internal/Hf;->d:I

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/Ef;-><init>(Lcom/android/tools/r8/internal/Hf;I)V

    .line 13
    sget-boolean v4, Lcom/android/tools/r8/internal/Hf;->e:Z

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Hf;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_0
    if-nez v4, :cond_2

    .line 14
    iget-object v2, v2, Lcom/android/tools/r8/internal/Hf;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Invoked on another thread than main"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 15
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/m80;

    move-result-object v2

    .line 16
    new-instance v4, Lcom/android/tools/r8/internal/d40;

    invoke-direct {v4, v1, v3, v2}, Lcom/android/tools/r8/internal/d40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V

    .line 17
    new-instance v1, Lcom/android/tools/r8/graph/u6;

    invoke-direct {v1, v0, p1, v4}, Lcom/android/tools/r8/graph/u6;-><init>(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/d40;)V

    .line 18
    :goto_1
    iget-object p1, v4, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 20
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    iget-object p1, v4, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 22
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 23
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 24
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 25
    iget-object v2, v4, Lcom/android/tools/r8/internal/d40;->d:Lcom/android/tools/r8/internal/Ef;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/tools/r8/internal/c40;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V

    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/gX;->g()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 18
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/vk0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Method: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\':"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/tools/r8/graph/C;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u0;Ljava/io/PrintStream;)V

    .line 21
    iget-object v2, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v3, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Residual: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 27
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/C;->g:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    iget-boolean v2, p0, Lcom/android/tools/r8/graph/C;->f:Z

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/C;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 31
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/g1;)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/C;->d:Z

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/tools/r8/graph/C;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u0;Ljava/io/PrintStream;)V

    .line 4
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vk0;->d(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v1, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    const-string v2, "\'"

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Residual: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/graph/y5;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Original: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "# Bytecode for"

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Class: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/C;->c:Z

    if-eqz v1, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/tools/r8/graph/C;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u0;Ljava/io/PrintStream;)V

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Flags: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Extends: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 14
    iget-object v5, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Implements: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    const-string v0, "# InnerClasses:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/e4;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 20
    :cond_3
    const-string v2, "-"

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#  Outer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inner: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inner name: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", access: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 26
    const-string v0, "# EnclosingMethod:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    iget-object v0, p1, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_5

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#  Class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/graph/C;->k:Lcom/android/tools/r8/internal/vk0;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vk0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#  Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    :cond_6
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public final c(Ljava/io/PrintStream;)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public final d(Ljava/io/PrintStream;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/C;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "# Fields:"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
