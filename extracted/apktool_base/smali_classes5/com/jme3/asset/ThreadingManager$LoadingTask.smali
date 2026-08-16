.class public Lcom/jme3/asset/ThreadingManager$LoadingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/ThreadingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final assetKey:Lcom/jme3/asset/AssetKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jme3/asset/ThreadingManager;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/ThreadingManager;Lcom/jme3/asset/AssetKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/asset/ThreadingManager$LoadingTask;->this$0:Lcom/jme3/asset/ThreadingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/asset/ThreadingManager$LoadingTask;->assetKey:Lcom/jme3/asset/AssetKey;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/ThreadingManager$LoadingTask;->this$0:Lcom/jme3/asset/ThreadingManager;

    iget-object v0, v0, Lcom/jme3/asset/ThreadingManager;->owner:Lcom/jme3/asset/AssetManager;

    iget-object v1, p0, Lcom/jme3/asset/ThreadingManager$LoadingTask;->assetKey:Lcom/jme3/asset/AssetKey;

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
