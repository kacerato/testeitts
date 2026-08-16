.class public abstract Lcom/android/tools/r8/BaseCompilerCommand;
.super Lcom/android/tools/r8/BaseCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    }
.end annotation


# static fields
.field static final synthetic y:Z = true


# instance fields
.field private final e:Lcom/android/tools/r8/CompilationMode;

.field private final f:Lcom/android/tools/r8/ProgramConsumer;

.field private final g:Lcom/android/tools/r8/StringConsumer;

.field private final h:I

.field private final i:Lcom/android/tools/r8/internal/Ef0;

.field private final j:Lcom/android/tools/r8/internal/nJ$f;

.field private final k:Z

.field private final l:Z

.field private final m:Ljava/util/function/BiPredicate;

.field private final n:Ljava/util/List;

.field private final o:Ljava/util/List;

.field private final p:I

.field private final q:Lcom/android/tools/r8/internal/qt;

.field private final r:Lcom/android/tools/r8/MapIdProvider;

.field private final s:Lcom/android/tools/r8/SourceFileProvider;

.field private final t:Z

.field private final u:Ljava/util/List;

.field private final v:Ljava/util/List;

.field private final w:Lcom/android/tools/r8/ClassConflictResolver;

.field private final x:Lcom/android/tools/r8/CancelCompilationChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZLjava/util/function/BiPredicate;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;)V
    .locals 4

    move-object v0, p0

    move-object v1, p2

    move v2, p5

    .line 23
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand;-><init>(Lcom/android/tools/r8/utils/i;)V

    .line 24
    sget-boolean v3, Lcom/android/tools/r8/BaseCompilerCommand;->y:Z

    if-nez v3, :cond_1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 26
    :cond_3
    :goto_1
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->e:Lcom/android/tools/r8/CompilationMode;

    move-object v1, p3

    .line 27
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->f:Lcom/android/tools/r8/ProgramConsumer;

    move-object v1, p4

    .line 28
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->g:Lcom/android/tools/r8/StringConsumer;

    .line 29
    iput v2, v0, Lcom/android/tools/r8/BaseCompilerCommand;->h:I

    move-object v1, p6

    .line 30
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    move-object v1, p7

    .line 31
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->j:Lcom/android/tools/r8/internal/nJ$f;

    move v1, p8

    .line 32
    iput-boolean v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->l:Z

    move v1, p9

    .line 33
    iput-boolean v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->k:Z

    move-object v1, p10

    .line 34
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->m:Ljava/util/function/BiPredicate;

    move-object v1, p11

    .line 35
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->n:Ljava/util/List;

    move-object/from16 v1, p12

    .line 36
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->o:Ljava/util/List;

    move/from16 v1, p13

    .line 37
    iput v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->p:I

    move-object/from16 v1, p14

    .line 38
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->q:Lcom/android/tools/r8/internal/qt;

    move-object/from16 v1, p15

    .line 39
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->r:Lcom/android/tools/r8/MapIdProvider;

    move-object/from16 v1, p16

    .line 40
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->s:Lcom/android/tools/r8/SourceFileProvider;

    move/from16 v1, p17

    .line 41
    iput-boolean v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->t:Z

    move-object/from16 v1, p18

    .line 42
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->u:Ljava/util/List;

    move-object/from16 v1, p19

    .line 43
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->v:Ljava/util/List;

    move-object/from16 v1, p20

    .line 44
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->w:Lcom/android/tools/r8/ClassConflictResolver;

    move-object/from16 v1, p21

    .line 45
    iput-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand;->x:Lcom/android/tools/r8/CancelCompilationChecker;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCommand;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->f:Lcom/android/tools/r8/ProgramConsumer;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->g:Lcom/android/tools/r8/StringConsumer;

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->e:Lcom/android/tools/r8/CompilationMode;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/android/tools/r8/BaseCompilerCommand;->h:I

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->j:Lcom/android/tools/r8/internal/nJ$f;

    .line 8
    iput-boolean p2, p0, Lcom/android/tools/r8/BaseCompilerCommand;->k:Z

    .line 9
    iput-boolean p2, p0, Lcom/android/tools/r8/BaseCompilerCommand;->l:Z

    .line 10
    new-instance v0, Lcom/android/tools/r8/Y0;

    invoke-direct {v0}, Lcom/android/tools/r8/Y0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->m:Ljava/util/function/BiPredicate;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->n:Ljava/util/List;

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->o:Ljava/util/List;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->p:I

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/mt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mt;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->q:Lcom/android/tools/r8/internal/qt;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->r:Lcom/android/tools/r8/MapIdProvider;

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->s:Lcom/android/tools/r8/SourceFileProvider;

    .line 18
    iput-boolean p2, p0, Lcom/android/tools/r8/BaseCompilerCommand;->t:Z

    .line 19
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->u:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->v:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->w:Lcom/android/tools/r8/ClassConflictResolver;

    .line 22
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand;->x:Lcom/android/tools/r8/CancelCompilationChecker;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand;->a(Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/rt$a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->f:Lcom/android/tools/r8/ProgramConsumer;

    .line 3
    instance-of v1, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/android/tools/r8/dex/W$a;->b:Lcom/android/tools/r8/dex/W$a;

    goto :goto_1

    .line 5
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/c80;->a:Z

    if-nez v1, :cond_2

    .line 6
    instance-of v1, v0, Lcom/android/tools/r8/DexIndexedConsumer;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/tools/r8/dex/W$a;->c:Lcom/android/tools/r8/dex/W$a;

    .line 9
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rt$a;->a(Lcom/android/tools/r8/dex/W$a;)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->c:Lcom/android/tools/r8/CompilationMode;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMinApiLevel()I

    move-result v1

    .line 13
    iput v1, v0, Lcom/android/tools/r8/internal/rt$a;->d:I

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->isOptimizeMultidexForLinearAlloc()Z

    move-result v1

    .line 15
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/rt$a;->e:Z

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getThreadCount()I

    move-result v1

    .line 17
    iput v1, v0, Lcom/android/tools/r8/internal/rt$a;->f:I

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->e()Lcom/android/tools/r8/internal/nJ$f;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->g:Lcom/android/tools/r8/internal/nJ$f;

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/X0;

    invoke-direct {v2}, Lcom/android/tools/r8/X0;-><init>()V

    .line 21
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->r:Ljava/util/List;

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->h()Ljava/util/List;

    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->s:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getAndroidPlatformBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/rt$a;->x:Z

    :cond_3
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/p4;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->u:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/ClassConflictResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->w:Lcom/android/tools/r8/ClassConflictResolver;

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/internal/nJ$f;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->j:Lcom/android/tools/r8/internal/nJ$f;

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/qt;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->q:Lcom/android/tools/r8/internal/qt;

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public getAndroidPlatformBuild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->t:Z

    return v0
.end method

.method public getAssertionsConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/AssertionsConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->x:Lcom/android/tools/r8/CancelCompilationChecker;

    return-object v0
.end method

.method public getDexClassChecksumFilter()Ljava/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->m:Ljava/util/function/BiPredicate;

    return-object v0
.end method

.method public getEnableDesugaring()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->j:Lcom/android/tools/r8/internal/nJ$f;

    sget-object v1, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIncludeClassesChecksum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->k:Z

    return v0
.end method

.method public getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->g:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public getMapIdProvider()Lcom/android/tools/r8/MapIdProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->r:Lcom/android/tools/r8/MapIdProvider;

    return-object v0
.end method

.method public getMinApiLevel()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->h:I

    return v0
.end method

.method public getMode()Lcom/android/tools/r8/CompilationMode;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->e:Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method

.method public getOutputInspections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/inspector/Inspector;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->f:Lcom/android/tools/r8/ProgramConsumer;

    return-object v0
.end method

.method public getSourceFileProvider()Lcom/android/tools/r8/SourceFileProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->s:Lcom/android/tools/r8/SourceFileProvider;

    return-object v0
.end method

.method public getThreadCount()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->p:I

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/startup/StartupProfileProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->v:Ljava/util/List;

    return-object v0
.end method

.method public isOptimizeMultidexForLinearAlloc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand;->l:Z

    return v0
.end method
