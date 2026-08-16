.class public LJAVARuntime/ThermalFlowError;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final TYPE_ERROR:I = 0x2

.field public static final TYPE_EXCEPTION:I = 0x1

.field public static final TYPE_SIMPLE:I


# instance fields
.field private final transient callStack:LAc/b;

.field private final transient error:Ljava/lang/Error;

.field private final transient exception:Ljava/lang/Exception;

.field private final transient message:LAc/b;

.field private final transient type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "message",
            "callStack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "callStack"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/ThermalFlowError;->message:LAc/b;

    .line 4
    new-instance p1, LAc/b;

    invoke-direct {p1, p2}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LJAVARuntime/ThermalFlowError;->callStack:LAc/b;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, LJAVARuntime/ThermalFlowError;->exception:Ljava/lang/Exception;

    .line 6
    iput-object p1, p0, LJAVARuntime/ThermalFlowError;->error:Ljava/lang/Error;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, LJAVARuntime/ThermalFlowError;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "message",
            "callStack",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "callStack",
            "e"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 17
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/ThermalFlowError;->message:LAc/b;

    .line 18
    new-instance p1, LAc/b;

    invoke-direct {p1, p2}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LJAVARuntime/ThermalFlowError;->callStack:LAc/b;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, LJAVARuntime/ThermalFlowError;->exception:Ljava/lang/Exception;

    .line 20
    iput-object p3, p0, LJAVARuntime/ThermalFlowError;->error:Ljava/lang/Error;

    const/4 p1, 0x2

    .line 21
    iput p1, p0, LJAVARuntime/ThermalFlowError;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "message",
            "callStack",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "callStack",
            "e"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 10
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/ThermalFlowError;->message:LAc/b;

    .line 11
    new-instance p1, LAc/b;

    invoke-direct {p1, p2}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LJAVARuntime/ThermalFlowError;->callStack:LAc/b;

    .line 12
    iput-object p3, p0, LJAVARuntime/ThermalFlowError;->exception:Ljava/lang/Exception;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, LJAVARuntime/ThermalFlowError;->error:Ljava/lang/Error;

    const/4 p1, 0x1

    .line 14
    iput p1, p0, LJAVARuntime/ThermalFlowError;->type:I

    return-void
.end method


# virtual methods
.method public getCallStack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ThermalFlowError;->callStack:LAc/b;

    invoke-virtual {v0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Error;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ThermalFlowError;->error:Ljava/lang/Error;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ThermalFlowError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ThermalFlowError;->message:LAc/b;

    invoke-virtual {v0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, LJAVARuntime/ThermalFlowError;->type:I

    return v0
.end method
