.class public Lcom/android/tools/r8/R8AssistantCommand;
.super Lcom/android/tools/r8/BaseCompilerCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/R8AssistantCommand$Builder;
    }
.end annotation


# instance fields
.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;ILcom/android/tools/r8/internal/Ef0;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static {}, Lcom/android/tools/r8/StringConsumer;->emptyConsumer()Lcom/android/tools/r8/StringConsumer$EmptyConsumer;

    move-result-object v4

    sget-object v7, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    new-instance v8, Lcom/android/tools/r8/l3;

    move-object v10, v8

    invoke-direct {v8}, Lcom/android/tools/r8/l3;-><init>()V

    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v18, v12

    move-object/from16 v19, v12

    move-object v11, v12

    new-instance v8, Lcom/android/tools/r8/internal/mt;

    move-object v14, v8

    invoke-direct {v8}, Lcom/android/tools/r8/internal/mt;-><init>()V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/android/tools/r8/BaseCompilerCommand;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/StringConsumer;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZLjava/util/function/BiPredicate;Ljava/util/List;Ljava/util/List;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/tools/r8/R8AssistantCommand;->z:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static builder()Lcom/android/tools/r8/R8AssistantCommand$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/R8AssistantCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/R8AssistantCommand$Builder;-><init>(Lcom/android/tools/r8/m3;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8AssistantCommand$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/R8AssistantCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/R8AssistantCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/m3;)V

    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/R8AssistantCommand;->a(Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/nJ;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMinApiLevel()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/tools/r8/internal/nJ;->y:Z

    sget-object v0, Lcom/android/tools/r8/dex/W$b;->i:Lcom/android/tools/r8/dex/W$b;

    iput-object v0, v1, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    new-instance v2, Lcom/android/tools/r8/dex/W;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/dex/W;-><init>(Lcom/android/tools/r8/dex/W$b;)V

    sget-object v0, Lcom/android/tools/r8/dex/W$a;->c:Lcom/android/tools/r8/dex/W$a;

    sget-boolean v3, Lcom/android/tools/r8/dex/W;->i:Z

    const-string v4, "backend"

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v3, v2, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getMinApiLevel()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/dex/W;->a(J)Lcom/android/tools/r8/dex/W;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/dex/W;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    return-object v1
.end method

.method public getReflectiveReceiverDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8AssistantCommand;->z:Ljava/lang/String;

    return-object v0
.end method
