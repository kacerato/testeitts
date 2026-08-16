.class public interface abstract LJAVARuntime/VoxelHand$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/VoxelHand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBlockBroken(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method

.method public abstract onBlockPlaced(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method

.method public abstract onBlockSelected(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method
