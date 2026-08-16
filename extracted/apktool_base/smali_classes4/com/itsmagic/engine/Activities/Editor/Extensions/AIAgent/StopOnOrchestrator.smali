.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prompt"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;->output:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;->output:Ljava/lang/String;

    return-object v0
.end method
