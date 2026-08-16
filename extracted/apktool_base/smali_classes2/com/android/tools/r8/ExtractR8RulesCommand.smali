.class public Lcom/android/tools/r8/ExtractR8RulesCommand;
.super Lcom/android/tools/r8/BaseCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    }
.end annotation


# static fields
.field static final j:Ljava/lang/String;

.field static final synthetic k:Z = true


# instance fields
.field private final e:Lcom/android/tools/r8/StringConsumer;

.field private final f:Z

.field private final g:Lcom/android/tools/r8/internal/ll0;

.field private final h:Lcom/android/tools/r8/graph/u1;

.field private final i:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "  --version                  # Print the version."

    const-string v5, "  --help                     # Print this message."

    const-string v0, "Usage: TBD"

    const-string v1, "  --rules-output <file>      # Output the extracted keep rules."

    const-string v2, "  --compiler-version <version>  # Output the proguard rules extracted."

    const-string v3, "  --include-origin-comments  # Include comments with origin for extracted rules."

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/ExtractR8RulesCommand;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/android/tools/r8/BaseCommand;-><init>(Lcom/android/tools/r8/utils/i;)V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->h:Lcom/android/tools/r8/graph/u1;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->e:Lcom/android/tools/r8/StringConsumer;

    .line 6
    iput-boolean p4, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->f:Z

    .line 7
    iput-object p5, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->g:Lcom/android/tools/r8/internal/ll0;

    .line 8
    iput-object p6, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/S1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/tools/r8/ExtractR8RulesCommand;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCommand;-><init>(ZZ)V

    .line 10
    new-instance p1, Lcom/android/tools/r8/graph/u1;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->h:Lcom/android/tools/r8/graph/u1;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->e:Lcom/android/tools/r8/StringConsumer;

    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->f:Z

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->g:Lcom/android/tools/r8/internal/ll0;

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/S1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/ExtractR8RulesCommand;-><init>(ZZ)V

    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_7

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_1

    :cond_1
    const-string v4, "--version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_1

    :cond_2
    const-string v4, "--rules-output"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr v2, v0

    aget-object v3, p0, v2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->setRulesOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;

    goto :goto_1

    :cond_3
    const-string v4, "--compiler-version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/2addr v2, v0

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/tools/r8/internal/ll0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->setCompilerVersion(Lcom/android/tools/r8/internal/ll0;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;

    goto :goto_1

    :cond_4
    const-string v4, "--include-origin-comments"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->setIncludeOriginComments(Z)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;

    goto :goto_1

    :cond_5
    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/Path;

    aput-object v3, v4, v1

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object p0, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0

    :cond_7
    return-void
.end method

.method public static builder()Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;-><init>(Lcom/android/tools/r8/R1;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/R1;)V

    return-object v0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/ExtractR8RulesCommand;->builder()Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/ExtractR8RulesCommand;->a([Ljava/lang/String;Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/nJ;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->h:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->i:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-static {}, Lcom/android/tools/r8/DexIndexedConsumer;->emptyConsumer()Lcom/android/tools/r8/DexIndexedConsumer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    sget-boolean v1, Lcom/android/tools/r8/ExtractR8RulesCommand;->k:Z

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

.method public getCompilerVersion()Lcom/android/tools/r8/internal/ll0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->g:Lcom/android/tools/r8/internal/ll0;

    return-object v0
.end method

.method public getIncludeOriginComments()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->f:Z

    return v0
.end method

.method public getRulesConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand;->e:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method
