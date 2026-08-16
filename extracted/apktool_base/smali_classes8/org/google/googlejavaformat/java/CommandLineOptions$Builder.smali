.class Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/CommandLineOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aosp:Z

.field private assumeFilename:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dryRun:Z

.field private final files:Lcom/google/common/collect/g1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fixImportsOnly:Z

.field private help:Z

.field private inPlace:Z

.field private final lengths:Lcom/google/common/collect/g1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lines:Lcom/google/common/collect/q1$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q1$d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final offsets:Lcom/google/common/collect/g1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeUnusedImports:Z

.field private setExitIfChanged:Z

.field private sortImports:Z

.field private stdin:Z

.field private version:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->files:Lcom/google/common/collect/g1$a;

    invoke-static {}, Lcom/google/common/collect/q1;->w()Lcom/google/common/collect/q1$d;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->lines:Lcom/google/common/collect/q1$d;

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->offsets:Lcom/google/common/collect/g1$a;

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->lengths:Lcom/google/common/collect/g1$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace:Z

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp:Z

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->version:Z

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->help:Z

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin:Z

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports:Z

    iput-boolean v1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports:Z

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->dryRun:Z

    iput-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->setExitIfChanged:Z

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->assumeFilename:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public addLength(Ljava/lang/Integer;)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->lengths:Lcom/google/common/collect/g1$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    return-object p0
.end method

.method public addOffset(Ljava/lang/Integer;)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->offsets:Lcom/google/common/collect/g1$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    return-object p0
.end method

.method public aosp(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aosp"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp:Z

    return-object p0
.end method

.method public assumeFilename(Ljava/lang/String;)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assumeFilename"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->assumeFilename:Ljava/util/Optional;

    return-object p0
.end method

.method public build()Lorg/google/googlejavaformat/java/CommandLineOptions;
    .locals 18

    move-object/from16 v0, p0

    new-instance v17, Lorg/google/googlejavaformat/java/CommandLineOptions;

    iget-object v1, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->files:Lcom/google/common/collect/g1$a;

    invoke-virtual {v1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v2

    iget-boolean v3, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace:Z

    iget-object v1, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->lines:Lcom/google/common/collect/q1$d;

    invoke-virtual {v1}, Lcom/google/common/collect/q1$d;->d()Lcom/google/common/collect/q1;

    move-result-object v4

    iget-object v1, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->offsets:Lcom/google/common/collect/g1$a;

    invoke-virtual {v1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v5

    iget-object v1, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->lengths:Lcom/google/common/collect/g1$a;

    invoke-virtual {v1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v6

    iget-boolean v7, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp:Z

    iget-boolean v8, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->version:Z

    iget-boolean v9, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->help:Z

    iget-boolean v10, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin:Z

    iget-boolean v11, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly:Z

    iget-boolean v12, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports:Z

    iget-boolean v13, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports:Z

    iget-boolean v14, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->dryRun:Z

    iget-boolean v15, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->setExitIfChanged:Z

    iget-object v1, v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->assumeFilename:Ljava/util/Optional;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lorg/google/googlejavaformat/java/CommandLineOptions;-><init>(Lcom/google/common/collect/g1;ZLcom/google/common/collect/q1;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;ZZZZZZZZZLjava/util/Optional;)V

    return-object v17
.end method

.method public dryRun(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dryRun"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->dryRun:Z

    return-object p0
.end method

.method public filesBuilder()Lcom/google/common/collect/g1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->files:Lcom/google/common/collect/g1$a;

    return-object v0
.end method

.method public fixImportsOnly(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixImportsOnly"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly:Z

    return-object p0
.end method

.method public help(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "help"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->help:Z

    return-object p0
.end method

.method public inPlace(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inPlace"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace:Z

    return-object p0
.end method

.method public linesBuilder()Lcom/google/common/collect/q1$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q1$d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->lines:Lcom/google/common/collect/q1$d;

    return-object v0
.end method

.method public removeUnusedImports(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removeUnusedImports"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports:Z

    return-object p0
.end method

.method public setExitIfChanged(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setExitIfChanged"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->setExitIfChanged:Z

    return-object p0
.end method

.method public sortImports(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sortImports"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports:Z

    return-object p0
.end method

.method public stdin(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stdin"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin:Z

    return-object p0
.end method

.method public version(Z)Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;->version:Z

    return-object p0
.end method
