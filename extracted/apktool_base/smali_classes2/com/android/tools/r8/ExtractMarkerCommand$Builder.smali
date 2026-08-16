.class public Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ExtractMarkerCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/android/tools/r8/MarkerInfoConsumer;

.field private final f:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->f:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/ExtractMarkerCommand$Builder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/android/tools/r8/ExtractMarkerCommand;
    .locals 10

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/ExtractMarkerCommand;

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->isPrintHelp()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ExtractMarkerCommand;-><init>(ZLcom/android/tools/r8/O1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/ExtractMarkerCommand;

    iget-object v4, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->f:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-object v5, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->e:Lcom/android/tools/r8/MarkerInfoConsumer;

    iget-object v6, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->b:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->c:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->d:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/ExtractMarkerCommand;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/MarkerInfoConsumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/tools/r8/O1;)V

    return-object v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->a:Z

    return v0
.end method

.method public setMarkerInfoConsumer(Lcom/android/tools/r8/MarkerInfoConsumer;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->e:Lcom/android/tools/r8/MarkerInfoConsumer;

    return-object p0
.end method

.method public setPrintHelp(Z)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->a:Z

    return-object p0
.end method
