.class final Lcom/jme3/util/MipMapGenerator$MipChain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/MipMapGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MipChain"
.end annotation


# instance fields
.field final combinedData:Ljava/nio/ByteBuffer;

.field final mipSizes:[I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/util/MipMapGenerator$MipChain;->combinedData:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/jme3/util/MipMapGenerator$MipChain;->mipSizes:[I

    return-void
.end method
