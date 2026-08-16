.class public Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/y;->d(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$total",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;->a(I)V

    return-void
.end method
