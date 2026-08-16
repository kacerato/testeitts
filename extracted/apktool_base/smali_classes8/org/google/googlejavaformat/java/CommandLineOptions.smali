.class final Lorg/google/googlejavaformat/java/CommandLineOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    }
.end annotation


# instance fields
.field private final aosp:Z

.field private final assumeFilename:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dryRun:Z

.field private final files:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fixImportsOnly:Z

.field private final help:Z

.field private final inPlace:Z

.field private final lengths:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lines:Lcom/google/common/collect/q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final offsets:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final removeUnusedImports:Z

.field private final setExitIfChanged:Z

.field private final sortImports:Z

.field private final stdin:Z

.field private final version:Z


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g1;ZLcom/google/common/collect/q1;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;ZZZZZZZZZLjava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "files",
            "inPlace",
            "lines",
            "offsets",
            "lengths",
            "aosp",
            "version",
            "help",
            "stdin",
            "fixImportsOnly",
            "sortImports",
            "removeUnusedImports",
            "dryRun",
            "setExitIfChanged",
            "assumeFilename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/common/collect/q1<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Integer;",
            ">;ZZZZZZZZZ",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->files:Lcom/google/common/collect/g1;

    iput-boolean p2, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->inPlace:Z

    iput-object p3, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->lines:Lcom/google/common/collect/q1;

    iput-object p4, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets:Lcom/google/common/collect/g1;

    iput-object p5, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->lengths:Lcom/google/common/collect/g1;

    iput-boolean p6, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->aosp:Z

    iput-boolean p7, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->version:Z

    iput-boolean p8, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->help:Z

    iput-boolean p9, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->stdin:Z

    iput-boolean p10, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->fixImportsOnly:Z

    iput-boolean p11, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->sortImports:Z

    iput-boolean p12, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->removeUnusedImports:Z

    iput-boolean p13, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->dryRun:Z

    iput-boolean p14, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->setExitIfChanged:Z

    iput-object p15, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->assumeFilename:Ljava/util/Optional;

    return-void
.end method

.method public static builder()Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;
    .locals 1

    new-instance v0, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/CommandLineOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public aosp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->aosp:Z

    return v0
.end method

.method public assumeFilename()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->assumeFilename:Ljava/util/Optional;

    return-object v0
.end method

.method public dryRun()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->dryRun:Z

    return v0
.end method

.method public files()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->files:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public fixImportsOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->fixImportsOnly:Z

    return v0
.end method

.method public help()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->help:Z

    return v0
.end method

.method public inPlace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->inPlace:Z

    return v0
.end method

.method public isSelection()Z
    .locals 1

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->lines()Lcom/google/common/collect/q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/q1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->lengths()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public lengths()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->lengths:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public lines()Lcom/google/common/collect/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->lines:Lcom/google/common/collect/q1;

    return-object v0
.end method

.method public offsets()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public removeUnusedImports()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->removeUnusedImports:Z

    return v0
.end method

.method public setExitIfChanged()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->setExitIfChanged:Z

    return v0
.end method

.method public sortImports()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->sortImports:Z

    return v0
.end method

.method public stdin()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->stdin:Z

    return v0
.end method

.method public version()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/CommandLineOptions;->version:Z

    return v0
.end method
