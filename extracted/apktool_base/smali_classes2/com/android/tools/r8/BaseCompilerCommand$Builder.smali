.class public abstract Lcom/android/tools/r8/BaseCompilerCommand$Builder;
.super Lcom/android/tools/r8/BaseCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/BaseCompilerCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/android/tools/r8/BaseCompilerCommand;",
        "B:",
        "Lcom/android/tools/r8/BaseCompilerCommand$Builder<",
        "TC;TB;>;>",
        "Lcom/android/tools/r8/BaseCommand$Builder<",
        "TC;TB;>;"
    }
.end annotation


# static fields
.field static final synthetic A:Z = true


# instance fields
.field protected desugarState:Lcom/android/tools/r8/internal/nJ$f;

.field private f:Lcom/android/tools/r8/ProgramConsumer;

.field private g:Lcom/android/tools/r8/StringConsumer;

.field private h:Ljava/nio/file/Path;

.field private i:Lcom/android/tools/r8/OutputMode;

.field private j:Lcom/android/tools/r8/CompilationMode;

.field private k:I

.field private l:I

.field private final m:Ljava/util/ArrayList;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/function/BiPredicate;

.field protected partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

.field protected proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

.field private final q:Ljava/util/ArrayList;

.field private final r:Ljava/util/ArrayList;

.field private s:Lcom/android/tools/r8/internal/qt;

.field private t:Lcom/android/tools/r8/MapIdProvider;

.field private u:Lcom/android/tools/r8/SourceFileProvider;

.field private v:Z

.field private final w:Ljava/util/ArrayList;

.field private final x:Ljava/util/ArrayList;

.field private y:Lcom/android/tools/r8/ClassConflictResolver;

.field private z:Lcom/android/tools/r8/CancelCompilationChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h:Ljava/nio/file/Path;

    .line 5
    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i:Lcom/android/tools/r8/OutputMode;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l:I

    .line 8
    sget-object v1, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->o:Z

    .line 12
    new-instance v1, Lcom/android/tools/r8/Z0;

    invoke-direct {v1}, Lcom/android/tools/r8/Z0;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->p:Ljava/util/function/BiPredicate;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->q:Ljava/util/ArrayList;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->r:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/qt;->a()Lcom/android/tools/r8/internal/qt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->s:Lcom/android/tools/r8/internal/qt;

    .line 18
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->t:Lcom/android/tools/r8/MapIdProvider;

    .line 19
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->u:Lcom/android/tools/r8/SourceFileProvider;

    .line 20
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->v:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->w:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->x:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->y:Lcom/android/tools/r8/ClassConflictResolver;

    .line 24
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->z:Lcom/android/tools/r8/CancelCompilationChecker;

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->e()Lcom/android/tools/r8/CompilationMode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j:Lcom/android/tools/r8/CompilationMode;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i;)V
    .locals 2

    .line 26
    invoke-static {p1}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    .line 28
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    .line 29
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h:Ljava/nio/file/Path;

    .line 30
    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i:Lcom/android/tools/r8/OutputMode;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k:I

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l:I

    .line 33
    sget-object v1, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    .line 35
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->o:Z

    .line 37
    new-instance v1, Lcom/android/tools/r8/Z0;

    invoke-direct {v1}, Lcom/android/tools/r8/Z0;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->p:Ljava/util/function/BiPredicate;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->q:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->r:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    .line 41
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    .line 42
    invoke-static {}, Lcom/android/tools/r8/internal/qt;->a()Lcom/android/tools/r8/internal/qt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->s:Lcom/android/tools/r8/internal/qt;

    .line 43
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->t:Lcom/android/tools/r8/MapIdProvider;

    .line 44
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->u:Lcom/android/tools/r8/SourceFileProvider;

    .line 45
    iput-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->v:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->w:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->x:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->y:Lcom/android/tools/r8/ClassConflictResolver;

    .line 49
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->z:Lcom/android/tools/r8/CancelCompilationChecker;

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->e()Lcom/android/tools/r8/CompilationMode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j:Lcom/android/tools/r8/CompilationMode;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    sget-boolean p2, Lcom/android/tools/r8/utils/i;->j:Z

    .line 52
    new-instance p2, Lcom/android/tools/r8/utils/i$a;

    .line 53
    invoke-direct {p2, v0}, Lcom/android/tools/r8/utils/i$a;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    .line 54
    iget-object v0, p2, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-object v0, p2, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v0, p2, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v0, p2, Lcom/android/tools/r8/utils/i$a;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/tools/r8/utils/i;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v0, p1, Lcom/android/tools/r8/utils/i;->h:Ljava/util/AbstractCollection;

    iput-object v0, p2, Lcom/android/tools/r8/utils/i$a;->h:Ljava/util/AbstractCollection;

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/utils/i;->i:Ljava/util/AbstractCollection;

    iput-object v0, p2, Lcom/android/tools/r8/utils/i$a;->i:Ljava/util/AbstractCollection;

    .line 60
    iget-object p1, p1, Lcom/android/tools/r8/utils/i;->g:Lcom/android/tools/r8/v0$a;

    iput-object p1, p2, Lcom/android/tools/r8/utils/i$a;->l:Lcom/android/tools/r8/v0$a;

    .line 61
    invoke-direct {p0, p2}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    .line 63
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    .line 64
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h:Ljava/nio/file/Path;

    .line 65
    sget-object p2, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    iput-object p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i:Lcom/android/tools/r8/OutputMode;

    const/4 p2, 0x0

    .line 66
    iput p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k:I

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l:I

    .line 68
    sget-object v0, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    .line 70
    iput-boolean p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n:Z

    .line 71
    iput-boolean p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->o:Z

    .line 72
    new-instance v0, Lcom/android/tools/r8/Z0;

    invoke-direct {v0}, Lcom/android/tools/r8/Z0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->p:Ljava/util/function/BiPredicate;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->q:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->r:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    .line 76
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    .line 77
    invoke-static {}, Lcom/android/tools/r8/internal/qt;->a()Lcom/android/tools/r8/internal/qt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->s:Lcom/android/tools/r8/internal/qt;

    .line 78
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->t:Lcom/android/tools/r8/MapIdProvider;

    .line 79
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->u:Lcom/android/tools/r8/SourceFileProvider;

    .line 80
    iput-boolean p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->v:Z

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->w:Ljava/util/ArrayList;

    .line 82
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->x:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->y:Lcom/android/tools/r8/ClassConflictResolver;

    .line 84
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->z:Lcom/android/tools/r8/CancelCompilationChecker;

    .line 85
    sget-object p1, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    .line 86
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j:Lcom/android/tools/r8/CompilationMode;

    return-void
.end method

.method public static a(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/S;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 6
    :cond_1
    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexFilePerClass:Lcom/android/tools/r8/OutputMode;

    if-ne p1, v0, :cond_3

    .line 7
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcom/android/tools/r8/j;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/j;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Lcom/android/tools/r8/k;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/k;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 10
    :cond_3
    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexFilePerClassFile:Lcom/android/tools/r8/OutputMode;

    if-ne p1, v0, :cond_5

    .line 11
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 13
    :cond_4
    new-instance p1, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 14
    :cond_5
    sget-object v0, Lcom/android/tools/r8/OutputMode;->ClassFile:Lcom/android/tools/r8/OutputMode;

    if-ne p1, v0, :cond_7

    .line 15
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    new-instance p1, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 17
    :cond_6
    new-instance p1, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Z)V

    return-object p1

    .line 18
    :cond_7
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected output mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic q(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 3

    if-gtz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid threadCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    iput p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l:I

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/internal/vm;
    .locals 31

    move-object/from16 v0, p0

    .line 19
    iget-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Lcom/android/tools/r8/internal/DA;

    .line 21
    new-instance v10, Lcom/android/tools/r8/internal/SA;

    sget-object v4, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 22
    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 23
    sget-object v9, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 24
    const-string v5, "unused"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/SA;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 25
    new-instance v3, Lcom/android/tools/r8/internal/IA;

    move-object v11, v3

    .line 26
    sget-object v22, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    move-object/from16 v30, v22

    move-object/from16 v29, v22

    move-object/from16 v12, v22

    move-object/from16 v18, v22

    move-object/from16 v27, v22

    move-object/from16 v25, v22

    move-object/from16 v24, v22

    move-object/from16 v23, v22

    move-object/from16 v19, v22

    move-object/from16 v21, v22

    move-object/from16 v15, v22

    move-object/from16 v20, v22

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    .line 27
    sget v4, Lcom/android/tools/r8/internal/QC;->c:I

    .line 28
    sget-object v14, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    move-object v13, v14

    move-object/from16 v26, v14

    move-object/from16 v28, v14

    .line 29
    invoke-direct/range {v11 .. v30}, Lcom/android/tools/r8/internal/IA;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    .line 30
    invoke-direct {v1, v10, v3, v2}, Lcom/android/tools/r8/internal/DA;-><init>(Lcom/android/tools/r8/internal/SA;Lcom/android/tools/r8/internal/IA;Z)V

    return-object v1

    .line 31
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    .line 32
    iget-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/v0;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 36
    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)Lcom/android/tools/r8/internal/vm;

    move-result-object v1

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Only one desugared library configuration is supported."

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/android/tools/r8/internal/p4;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void
.end method

.method public addArtProfileForRewriting(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/profile/art/ArtProfileConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/profile/art/ArtProfileProvider;",
            "Lcom/android/tools/r8/profile/art/ArtProfileConsumer;",
            ")TB;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/p4;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/p4;-><init>(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/profile/art/ArtProfileConsumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public addAssertionsConfiguration(Ljava/util/function/Function;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/tools/r8/AssertionsConfiguration$Builder;",
            "Lcom/android/tools/r8/AssertionsConfiguration;",
            ">;)TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/AssertionsConfiguration;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public addDesugaredLibraryConfiguration(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/v0;",
            ")TB;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public addDesugaredLibraryConfiguration(Ljava/lang/String;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    .line 2
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/v0;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/v0;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public addOutputInspection(Ljava/util/function/Consumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/inspector/Inspector;",
            ">;)TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public addSpecialLibraryConfiguration(Ljava/lang/String;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addDesugaredLibraryConfiguration(Ljava/lang/String;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public final c(Ljava/nio/file/Path;)V
    .locals 0

    invoke-static {p1}, Lcom/android/tools/r8/internal/qt;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/qt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->s:Lcom/android/tools/r8/internal/qt;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void
.end method

.method public d()V
    .locals 7

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j:Lcom/android/tools/r8/CompilationMode;

    if-nez v1, :cond_0

    .line 5
    const-string v1, "Expected valid compilation mode, was null"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h:Ljava/nio/file/Path;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ww;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    const-string v1, "A ProgramConsumer or Output is required for compilation"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v2, :cond_2

    .line 11
    const-class v2, Lcom/android/tools/r8/DexIndexedConsumer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v2, :cond_3

    .line 13
    const-class v2, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_4

    .line 15
    const-class v2, Lcom/android/tools/r8/ClassFileConsumer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid program consumer. A program consumer can implement at most one consumer type but "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, " implements types:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Class;

    .line 22
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->O:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v3

    if-le v1, v3, :cond_7

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    const/16 v3, 0x2710

    if-eq v1, v3, :cond_7

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    .line 27
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An API level of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported by this compiler. Please use an API level of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or earlier"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 29
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getAndroidPlatformBuild()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    const-string v1, "Android platform builds cannot use desugared library"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final d(Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/qt;->b(Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/qt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->s:Lcom/android/tools/r8/internal/qt;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void
.end method

.method public abstract e()Lcom/android/tools/r8/CompilationMode;
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAndroidPlatformBuild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->v:Z

    return v0
.end method

.method public getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->z:Lcom/android/tools/r8/CancelCompilationChecker;

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

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->p:Ljava/util/function/BiPredicate;

    return-object v0
.end method

.method public getDisableDesugaring()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    sget-object v1, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIncludeClassesChecksum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n:Z

    return v0
.end method

.method public getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public getMapIdProvider()Lcom/android/tools/r8/MapIdProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->t:Lcom/android/tools/r8/MapIdProvider;

    return-object v0
.end method

.method public getMinApiLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k:I

    return v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/C2;->b()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    return v0
.end method

.method public getMode()Lcom/android/tools/r8/CompilationMode;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j:Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method

.method public getOutputMode()Lcom/android/tools/r8/OutputMode;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i:Lcom/android/tools/r8/OutputMode;

    return-object v0
.end method

.method public getOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    return-object v0
.end method

.method public getProguardMapConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public getSourceFileProvider()Lcom/android/tools/r8/SourceFileProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->u:Lcom/android/tools/r8/SourceFileProvider;

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/ClassConflictResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->y:Lcom/android/tools/r8/ClassConflictResolver;

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/internal/qt;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->s:Lcom/android/tools/r8/internal/qt;

    return-object v0
.end method

.method public isOptimizeMultidexForLinearAlloc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->o:Z

    return v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l:I

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/mt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mt;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->s:Lcom/android/tools/r8/internal/qt;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void
.end method

.method public setAndroidPlatformBuild(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->v:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setCancelCompilationChecker(Lcom/android/tools/r8/CancelCompilationChecker;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/CancelCompilationChecker;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->z:Lcom/android/tools/r8/CancelCompilationChecker;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setClassConflictResolver(Lcom/android/tools/r8/ClassConflictResolver;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/ClassConflictResolver;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->y:Lcom/android/tools/r8/ClassConflictResolver;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setDexClassChecksumFilter(Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)TB;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->p:Ljava/util/function/BiPredicate;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setDisableDesugaring(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setEnableDesugaring(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setIncludeClassesChecksum(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setMainDexListConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/StringConsumer;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setMainDexListOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setMapIdProvider(Lcom/android/tools/r8/MapIdProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/MapIdProvider;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->t:Lcom/android/tools/r8/MapIdProvider;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minApiLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMinApiLevel(II)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMinApiLevel(II)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    if-lez p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k:I

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minApiLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/CompilationMode;",
            ")TB;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setOptimizeMultidexForLinearAlloc(Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->o:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lcom/android/tools/r8/OutputMode;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lcom/android/tools/r8/OutputMode;",
            "Z)TB;"
        }
    .end annotation

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h:Ljava/nio/file/Path;

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i:Lcom/android/tools/r8/OutputMode;

    .line 6
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/S;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/PartitionMapConsumer;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setPartitionMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/utils/s;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/s;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/ProgramConsumer;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h:Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i:Lcom/android/tools/r8/OutputMode;

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f:Lcom/android/tools/r8/ProgramConsumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method

.method public setSourceFileProvider(Lcom/android/tools/r8/SourceFileProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/SourceFileProvider;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->u:Lcom/android/tools/r8/SourceFileProvider;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-object p1
.end method
