.class Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;


# direct methods
.method public constructor <init>(Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$1;->this$0:Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$1;->this$0:Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;

    iget-object v0, v0, Lcom/jme3/environment/generation/RunnableWithProgress;->listener:Lcom/jme3/environment/generation/JobProgressListener;

    invoke-interface {v0}, Lcom/jme3/environment/generation/JobProgressListener;->start()V

    const/4 v0, 0x0

    return-object v0
.end method
