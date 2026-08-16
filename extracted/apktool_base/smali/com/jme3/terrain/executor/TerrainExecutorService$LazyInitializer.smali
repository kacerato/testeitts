.class Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/executor/TerrainExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyInitializer"
.end annotation


# instance fields
.field public final instance:Lcom/jme3/terrain/executor/TerrainExecutorService;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/executor/TerrainExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;->instance:Lcom/jme3/terrain/executor/TerrainExecutorService;

    return-void
.end method
