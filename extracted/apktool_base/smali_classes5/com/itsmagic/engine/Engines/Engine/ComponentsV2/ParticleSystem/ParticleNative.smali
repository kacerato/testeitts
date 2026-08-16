.class public final Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-particles"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native buildBatchVertices(Ljava/nio/ByteBuffer;II[F[F[F[F[F[F[F[FZZFFFFFFZFFFFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertexBuffer",
            "maxParticles",
            "aliveCount",
            "positions",
            "prevPositions",
            "scales",
            "rotations",
            "colors",
            "emissives",
            "spriteRects",
            "tmpRotations",
            "rotateBasedDirection",
            "hasCameraBasis",
            "camRightX",
            "camRightY",
            "camRightZ",
            "camUpX",
            "camUpY",
            "camUpZ",
            "sortEnabled",
            "camPosX",
            "camPosY",
            "camPosZ",
            "camDirX",
            "camDirY",
            "camDirZ",
            "rotateDirEpsSq"
        }
    .end annotation
.end method

.method public static native buildBoundingBox(JIJF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "positionsBufferPointer",
            "aliveCount",
            "outBoundingBufferPointer",
            "boundingStepMeters"
        }
    .end annotation
.end method

.method public static native updatePerParticle(II[F[F[F[FZZFFFFFFFFFF[FZ[IFFFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aliveCount",
            "maxParticles",
            "positions",
            "moveDirs",
            "scales",
            "rotations",
            "rotateBasedDirection",
            "hasCameraBasis",
            "camRightX",
            "camRightY",
            "camRightZ",
            "camUpX",
            "camUpY",
            "camUpZ",
            "camForwardX",
            "camForwardY",
            "camForwardZ",
            "rotateDirEpsSq",
            "outMatrices",
            "updateBlendOrder",
            "outBlendOrders",
            "camPosX",
            "camPosY",
            "camPosZ",
            "camDirX",
            "camDirY",
            "camDirZ"
        }
    .end annotation
.end method
