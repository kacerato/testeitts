.class public Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final delta:Lorg/eclipse/jdt/core/IJavaElementDelta;


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;->delta:Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-void
.end method

.method public static createChange(Lorg/eclipse/jdt/core/IJavaElementDelta;)Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;-><init>(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    return-object v0
.end method


# virtual methods
.method public getDelta()Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;->delta:Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-object v0
.end method
