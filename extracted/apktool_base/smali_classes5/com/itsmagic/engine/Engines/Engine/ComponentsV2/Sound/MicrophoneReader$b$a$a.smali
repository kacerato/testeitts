.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;->onPermissionGranted(Lcom/karumi/dexter/listener/PermissionGrantedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicrophoneReader - permission granted"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
