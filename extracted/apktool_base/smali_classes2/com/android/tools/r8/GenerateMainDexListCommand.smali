.class public Lcom/android/tools/r8/GenerateMainDexListCommand;
.super Lcom/android/tools/r8/BaseCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    }
.end annotation


# static fields
.field static final j:Ljava/lang/String;

.field static final synthetic k:Z = true


# instance fields
.field private final e:Lcom/android/tools/r8/internal/hC;

.field private final f:Lcom/android/tools/r8/internal/YK;

.field private final g:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

.field private final h:Lcom/android/tools/r8/graph/u1;

.field private final i:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v8, "  --version                # Print the version."

    const-string v9, "  --help                   # Print this message."

    const-string v0, "Usage: maindex [options] <input-files>"

    const-string v1, " where <input-files> are JAR files"

    const-string v2, " and options are:"

    const-string v3, "  --lib <file>             # Add <file> as a library resource."

    const-string v4, "  --main-dex-rules <file>  # Proguard keep rules for classes to place in the"

    const-string v5, "                           # primary dex file."

    const-string v6, "  --main-dex-list <file>   # List of classes to place in the primary dex file."

    const-string v7, "  --main-dex-list-output <file>  # Output the full main-dex list in <file>."

    invoke-static/range {v0 .. v9}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/GenerateMainDexListCommand;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/YK;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/android/tools/r8/BaseCommand;-><init>(Lcom/android/tools/r8/utils/i;)V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->h:Lcom/android/tools/r8/graph/u1;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->e:Lcom/android/tools/r8/internal/hC;

    .line 6
    iput-object p4, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->f:Lcom/android/tools/r8/internal/YK;

    .line 7
    iput-object p5, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->g:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 8
    iput-object p6, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/YK;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/f2;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/tools/r8/GenerateMainDexListCommand;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/YK;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/internal/Ef0;)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCommand;-><init>(ZZ)V

    .line 10
    new-instance p1, Lcom/android/tools/r8/graph/u1;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->h:Lcom/android/tools/r8/graph/u1;

    .line 11
    sget-object p1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->e:Lcom/android/tools/r8/internal/hC;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->f:Lcom/android/tools/r8/internal/YK;

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->g:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/f2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/GenerateMainDexListCommand;-><init>(ZZ)V

    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_8

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_1

    :cond_1
    const-string v4, "--version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_1

    :cond_2
    const-string v4, "--lib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr v2, v0

    aget-object v3, p0, v2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/Path;

    aput-object v3, v4, v1

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto/16 :goto_1

    :cond_3
    const-string v4, "--main-dex-rules"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/2addr v2, v0

    aget-object v3, p0, v2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/Path;

    aput-object v3, v4, v1

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->addMainDexRulesFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;

    goto :goto_1

    :cond_4
    const-string v4, "--main-dex-list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/2addr v2, v0

    aget-object v3, p0, v2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/Path;

    aput-object v3, v4, v1

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->addMainDexListFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_1

    :cond_5
    const-string v4, "--main-dex-list-output"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/2addr v2, v0

    aget-object v3, p0, v2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->setMainDexListOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;

    goto :goto_1

    :cond_6
    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_7
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/Path;

    aput-object v3, v4, v1

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    :goto_1
    add-int/2addr v2, v0

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static builder()Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;-><init>(Lcom/android/tools/r8/e2;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/e2;)V

    return-object v0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/GenerateMainDexListCommand;->builder()Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/GenerateMainDexListCommand;->a([Ljava/lang/String;Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/android/tools/r8/internal/nJ;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->h:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-static {}, Lcom/android/tools/r8/DexIndexedConsumer;->emptyConsumer()Lcom/android/tools/r8/DexIndexedConsumer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->e:Lcom/android/tools/r8/internal/hC;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->f:Lcom/android/tools/r8/internal/YK;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->g:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->X1:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->H1:Z

    sget-boolean v1, Lcom/android/tools/r8/GenerateMainDexListCommand;->k:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->G0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->G0:Z

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand;->f:Lcom/android/tools/r8/internal/YK;

    return-object v0
.end method
