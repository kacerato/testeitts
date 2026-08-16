.class public LJAVARuntime/JClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Java"
    }
.end annotation


# instance fields
.field public transient classAddress:Ljava/lang/Class;

.field public transient isEngineNative:Z

.field public transient name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "classAddress",
            "name",
            "isEngineNative"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classAddress",
            "name",
            "isEngineNative"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    iput-object p1, p0, LJAVARuntime/JClass;->classAddress:Ljava/lang/Class;

    iput-object p2, p0, LJAVARuntime/JClass;->name:Ljava/lang/String;

    iput-boolean p3, p0, LJAVARuntime/JClass;->isEngineNative:Z

    return-void
.end method


# virtual methods
.method public getClassAddress()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LJAVARuntime/JClass;->classAddress:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/JClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isEngineNative()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/JClass;->isEngineNative:Z

    return v0
.end method
