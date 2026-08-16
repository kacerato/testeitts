.class public Lcom/itsmagic/engine/Core/Components/JCompiler/Libs/LibClass;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Class;

.field public internalRuntimePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalRuntimePath"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/Libs/LibClass;->internalRuntimePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/Libs/LibClass;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/Libs/LibClass;->internalRuntimePath:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/Libs/LibClass;->a:Ljava/lang/Class;

    return-void
.end method
