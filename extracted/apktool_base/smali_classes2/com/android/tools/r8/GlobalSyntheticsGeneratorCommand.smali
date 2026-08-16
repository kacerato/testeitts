.class public final Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    }
.end annotation


# static fields
.field static final synthetic i:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

.field private final b:Lcom/android/tools/r8/internal/Ef0;

.field private final c:I

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/android/tools/r8/utils/i;

.field private final h:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/internal/Ef0;IZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->h:Lcom/android/tools/r8/graph/u1;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->g:Lcom/android/tools/r8/utils/i;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 7
    iput p4, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->c:I

    .line 8
    iput-boolean p5, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->d:Z

    .line 9
    iput-object p3, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->b:Lcom/android/tools/r8/internal/Ef0;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->e:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/internal/Ef0;IZLcom/android/tools/r8/q2;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/internal/Ef0;IZ)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->h:Lcom/android/tools/r8/graph/u1;

    .line 14
    iput-boolean p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->e:Z

    .line 15
    iput-boolean p2, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->f:Z

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->g:Lcom/android/tools/r8/utils/i;

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 18
    sget-object p1, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->c:I

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->d:Z

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/q2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;-><init>(ZZ)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    .line 2
    new-instance v1, Lcom/android/tools/r8/L;

    invoke-direct {v1}, Lcom/android/tools/r8/L;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/p2;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/p2;)V

    return-object v0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/O;

    .line 2
    invoke-static {}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->builder()Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/O;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/O;

    .line 4
    invoke-static {p2}, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/O;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;)Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/nJ;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->h:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->b:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    sget-boolean v1, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->i:Z

    if-nez v1, :cond_1

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->H1:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->c:I

    invoke-static {v2}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    if-nez v1, :cond_5

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->G0:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    iget-boolean v3, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->d:Z

    if-eqz v3, :cond_6

    new-instance v4, Lcom/android/tools/r8/M;

    invoke-direct {v4}, Lcom/android/tools/r8/M;-><init>()V

    goto :goto_3

    :cond_6
    new-instance v4, Lcom/android/tools/r8/N;

    invoke-direct {v4}, Lcom/android/tools/r8/N;-><init>()V

    :goto_3
    iput-object v4, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    iget-object v4, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    iput-object v4, v0, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H2;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H2;->c()Lcom/android/tools/r8/internal/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H2;->d()Lcom/android/tools/r8/internal/H2;

    :cond_7
    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_6
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->c:Lcom/android/tools/r8/dex/W$b;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    sget-object v1, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->M0:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/s4;->b(Z)Lcom/android/tools/r8/internal/s4;

    return-object v0
.end method

.method public getInputApp()Lcom/android/tools/r8/utils/i;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->g:Lcom/android/tools/r8/utils/i;

    return-object v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->e:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/GlobalSyntheticsGeneratorCommand;->f:Z

    return v0
.end method
