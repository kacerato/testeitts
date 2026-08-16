.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/FutureTask;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/FutureTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/c;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a(Ljava/util/concurrent/FutureTask;)V

    return-void
.end method
