.class Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/OpenCLObjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenCLObjectRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final releaser:Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Lcom/jme3/opencl/OpenCLObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/jme3/opencl/OpenCLObject;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {p2}, Lcom/jme3/opencl/OpenCLObject;->getReleaser()Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;->releaser:Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;)Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;
    .locals 0

    iget-object p0, p0, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;->releaser:Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    return-object p0
.end method
