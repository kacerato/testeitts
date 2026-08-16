.class public Lcom/jme3/export/binary/BinaryLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# instance fields
.field private final importers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/jme3/export/binary/BinaryImporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryLoader;->importers:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryLoader;->importers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryImporter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/export/binary/BinaryImporter;

    invoke-direct {v0}, Lcom/jme3/export/binary/BinaryImporter;-><init>()V

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/jme3/export/binary/BinaryImporter;->load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryLoader;->importers:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryLoader;->importers:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    throw p1
.end method
