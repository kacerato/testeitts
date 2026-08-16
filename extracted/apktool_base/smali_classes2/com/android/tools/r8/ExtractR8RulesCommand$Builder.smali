.class public Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
.super Lcom/android/tools/r8/BaseCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ExtractR8RulesCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCommand$Builder<",
        "Lcom/android/tools/r8/ExtractR8RulesCommand;",
        "Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/android/tools/r8/graph/u1;

.field private g:Lcom/android/tools/r8/StringConsumer;

.field private h:Z

.field private i:Lcom/android/tools/r8/internal/ll0;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 8
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->f:Lcom/android/tools/r8/graph/u1;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->h:Z

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->i:Lcom/android/tools/r8/internal/ll0;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 4
    new-instance p1, Lcom/android/tools/r8/graph/u1;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->f:Lcom/android/tools/r8/graph/u1;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->h:Z

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->i:Lcom/android/tools/r8/internal/ll0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/R1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/R1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->makeCommand()Lcom/android/tools/r8/ExtractR8RulesCommand;

    move-result-object v0

    return-object v0
.end method

.method public makeCommand()Lcom/android/tools/r8/ExtractR8RulesCommand;
    .locals 9

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/ExtractR8RulesCommand;

    iget-object v2, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->f:Lcom/android/tools/r8/graph/u1;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    iget-boolean v5, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->h:Z

    iget-object v6, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->i:Lcom/android/tools/r8/internal/ll0;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/ExtractR8RulesCommand;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/S1;)V

    return-object v0

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/ExtractR8RulesCommand;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/ExtractR8RulesCommand;-><init>(ZZLcom/android/tools/r8/S1;)V

    return-object v0
.end method

.method public setCompilerVersion(Lcom/android/tools/r8/internal/ll0;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->i:Lcom/android/tools/r8/internal/ll0;

    return-object p0
.end method

.method public setIncludeOriginComments(Z)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->h:Z

    return-object p0
.end method

.method public setRulesConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setRulesOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/ExtractR8RulesCommand$Builder;->g:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method
