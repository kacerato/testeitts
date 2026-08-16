.class public final synthetic Lorg/eclipse/jdt/internal/core/nd/indexer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ICoreRunnable;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/d;->a:Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    return-void
.end method


# virtual methods
.method public final a(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/d;->a:Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->a(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method
