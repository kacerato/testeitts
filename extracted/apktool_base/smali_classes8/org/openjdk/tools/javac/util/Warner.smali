.class public Lorg/openjdk/tools/javac/util/Warner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nonSilentLintSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field

.field private pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private silentLintSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field

.field protected warned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/Warner;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/Warner;->warned:Z

    .line 4
    const-class v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    .line 5
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    .line 6
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Warner;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/Warner;->warned:Z

    return-void
.end method

.method public hasLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Warner;->hasSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Warner;->hasNonSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasNonSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-object v0
.end method

.method public silentWarn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
