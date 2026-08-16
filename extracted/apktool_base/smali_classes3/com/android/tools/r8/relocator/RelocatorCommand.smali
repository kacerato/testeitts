.class public Lcom/android/tools/r8/relocator/RelocatorCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    }
.end annotation


# static fields
.field private static final i:Lcom/android/tools/r8/internal/QC;

.field static final j:Ljava/lang/String;

.field static final synthetic k:Z = true


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/android/tools/r8/internal/Ef0;

.field private final d:Lcom/android/tools/r8/graph/u1;

.field private final e:Lcom/android/tools/r8/ClassFileConsumer;

.field private final f:Lcom/android/tools/r8/utils/i;

.field private final g:Lcom/android/tools/r8/internal/hf0;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "--map"

    const-string v1, "--thread-count"

    const-string v2, "--output"

    const-string v3, "--input"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v1, v0}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/relocator/RelocatorCommand;->i:Lcom/android/tools/r8/internal/QC;

    const-string v8, "  --version               # Print the version of d8."

    const-string v9, "  --help                  # Print this message."

    const-string v1, "The Relocator CLI is EXPERIMENTAL and is subject to change"

    const-string v2, "Usage: relocator [options]"

    const-string v3, " where options are:"

    const-string v4, "  --input <file>          # Input file to remap, class, zip or jar."

    const-string v5, "  --output <file>         # Output result in <outfile>."

    const-string v6, "  --map <from->to>        # Registers a mapping."

    const-string v7, "  --thread-count <number> # A specified number of threads to run with."

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Iterable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/relocator/RelocatorCommand;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/hf0;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/ClassFileConsumer;I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->a:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->b:Z

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->g:Lcom/android/tools/r8/internal/hf0;

    .line 16
    iput-object p2, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->f:Lcom/android/tools/r8/utils/i;

    .line 17
    iput-object p3, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 18
    iput-object p4, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->d:Lcom/android/tools/r8/graph/u1;

    .line 19
    iput-object p5, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->e:Lcom/android/tools/r8/ClassFileConsumer;

    .line 20
    iput p6, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hf0;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/ClassFileConsumer;ILcom/android/tools/r8/relocator/i;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/tools/r8/relocator/RelocatorCommand;-><init>(Lcom/android/tools/r8/internal/hf0;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/ClassFileConsumer;I)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->a:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->b:Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->d:Lcom/android/tools/r8/graph/u1;

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->e:Lcom/android/tools/r8/ClassFileConsumer;

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->f:Lcom/android/tools/r8/utils/i;

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->g:Lcom/android/tools/r8/internal/hf0;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->h:I

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/relocator/i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/relocator/RelocatorCommand;-><init>(ZZ)V

    return-void
.end method

.method public static bridge synthetic a()Lcom/android/tools/r8/internal/QC;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocator/RelocatorCommand;->i:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public static builder()Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    .line 2
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-static {v1}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    return-object v0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getApp()Lcom/android/tools/r8/utils/i;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->f:Lcom/android/tools/r8/utils/i;

    return-object v0
.end method

.method public getConsumer()Lcom/android/tools/r8/ClassFileConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->e:Lcom/android/tools/r8/ClassFileConsumer;

    return-object v0
.end method

.method public getFactory()Lcom/android/tools/r8/graph/u1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->d:Lcom/android/tools/r8/graph/u1;

    return-object v0
.end method

.method public getInternalOptions()Lcom/android/tools/r8/internal/nJ;
    .locals 7

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    sget-object v1, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    iget-object v2, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getReporter()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/tools/r8/shaking/o3;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/shaking/o3$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3$a;->e()Lcom/android/tools/r8/shaking/o3$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3$a;->c()Lcom/android/tools/r8/shaking/o3$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3$a;->d()Lcom/android/tools/r8/shaking/o3$a;

    move-result-object v2

    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    const-string v4, "*"

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/o3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/o3$a;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/shaking/e4;

    const-string v5, "**"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/shaking/e4;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Lcom/android/tools/r8/shaking/f4;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/shaking/f4;-><init>(Lcom/android/tools/r8/internal/hC;)V

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    :goto_0
    iget-object v3, v2, Lcom/android/tools/r8/shaking/o3$a;->I:Lcom/android/tools/r8/shaking/b4;

    iget-object v3, v3, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3$a;->a()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getReporter()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/shaking/o3;Lcom/android/tools/r8/internal/Ef0;)V

    iput-boolean v4, v0, Lcom/android/tools/r8/internal/nJ;->U1:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getThreadCount()I

    move-result v1

    iput v1, v0, Lcom/android/tools/r8/internal/nJ;->k0:I

    iget-object v1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->e:Lcom/android/tools/r8/ClassFileConsumer;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    sget-boolean v2, Lcom/android/tools/r8/relocator/RelocatorCommand;->k:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    invoke-interface {v1}, Lcom/android/tools/r8/ProgramConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->r:Lcom/android/tools/r8/DataResourceConsumer;

    return-object v0
.end method

.method public getMapping()Lcom/android/tools/r8/internal/hf0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->g:Lcom/android/tools/r8/internal/hf0;

    return-object v0
.end method

.method public getReporter()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public getThreadCount()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->h:I

    return v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->a:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand;->b:Z

    return v0
.end method
