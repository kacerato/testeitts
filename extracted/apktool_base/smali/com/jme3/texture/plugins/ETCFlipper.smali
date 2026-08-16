.class public Lcom/jme3/texture/plugins/ETCFlipper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/texture/plugins/ETCFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/ETCFlipper;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipETC(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;
    .locals 0

    sget-object p1, Lcom/jme3/texture/plugins/ETCFlipper;->logger:Ljava/util/logging/Logger;

    const-string p2, "ETC texture flipping is not supported yet"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p0
.end method
