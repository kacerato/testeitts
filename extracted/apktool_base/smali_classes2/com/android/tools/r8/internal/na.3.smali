.class public final Lcom/android/tools/r8/internal/na;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Ljava/util/HashMap;

.field public final b:Lcom/android/tools/r8/utils/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/na;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/na;->b:Lcom/android/tools/r8/utils/i;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/la;Lcom/android/tools/r8/ProgramResource;)V
    .locals 2

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/Vd;

    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Uo0;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 15
    array-length v1, p1

    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Lcom/android/tools/r8/internal/K4;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/la;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/la;-><init>(Lcom/android/tools/r8/internal/na;)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/na;->b:Lcom/android/tools/r8/utils/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 3
    instance-of v3, v2, Lcom/android/tools/r8/internal/vJ;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v3, v2, Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    if-eqz v3, :cond_2

    .line 5
    check-cast v2, Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/Um1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Um1;-><init>(Lcom/android/tools/r8/internal/la;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->accept(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v2}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResource;

    .line 8
    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v4

    sget-object v5, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v4, v5, :cond_3

    .line 9
    :try_start_0
    new-instance v4, Lcom/android/tools/r8/internal/Vd;

    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/Uo0;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 10
    array-length v5, v3

    const/4 v5, 0x1

    .line 11
    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Lcom/android/tools/r8/internal/K4;

    const/4 v5, 0x4

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    return-void
.end method
