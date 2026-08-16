.class public Lcom/android/tools/r8/R8AssistantCommand$Builder;
.super Lcom/android/tools/r8/BaseCompilerCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/R8AssistantCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCompilerCommand$Builder<",
        "Lcom/android/tools/r8/R8AssistantCommand;",
        "Lcom/android/tools/r8/R8AssistantCommand$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private B:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/e0;

    invoke-direct {v0}, Lcom/android/tools/r8/e0;-><init>()V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/m3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8AssistantCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/m3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/R8AssistantCommand$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addReflectiveOperationReceiverInput(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/R8AssistantCommand$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    return-object p0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v0

    instance-of v0, v0, Lcom/android/tools/r8/DexIndexedConsumer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    const-string v1, "R8 assistant does not support CF output."

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v0

    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    const-string v1, "R8 assistant requires min api >= 21"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e()Lcom/android/tools/r8/CompilationMode;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method

.method public final makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 12

    new-instance v0, Lcom/android/tools/r8/internal/Vc;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vc;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    const-class v1, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Vc;->a(Ljava/lang/Class;)[B

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/origin/f;

    const-string v4, "Reflective instrumentation"

    invoke-direct {v3, v4, v1}, Lcom/android/tools/r8/origin/f;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;

    const-class v1, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Vc;->a(Ljava/lang/Class;)[B

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/origin/f;

    invoke-direct {v3, v4, v1}, Lcom/android/tools/r8/origin/f;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;

    const-class v1, Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Vc;->a(Ljava/lang/Class;)[B

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/origin/f;

    invoke-direct {v3, v4, v1}, Lcom/android/tools/r8/origin/f;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;

    const-class v1, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$ReflectiveOperationLogger;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Vc;->a(Ljava/lang/Class;)[B

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/origin/f;

    invoke-direct {v2, v4, v1}, Lcom/android/tools/r8/origin/f;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/BaseCommand$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;

    new-instance v0, Lcom/android/tools/r8/R8AssistantCommand;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v10

    iget-object v11, p0, Lcom/android/tools/r8/R8AssistantCommand$Builder;->B:Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/android/tools/r8/R8AssistantCommand;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/CompilationMode;Lcom/android/tools/r8/ProgramConsumer;ILcom/android/tools/r8/internal/Ef0;Ljava/lang/String;)V

    return-object v0
.end method

.method public setReflectiveReceiverClassDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/R8AssistantCommand$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/R8AssistantCommand$Builder;->B:Ljava/lang/String;

    return-object p0
.end method
