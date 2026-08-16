.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;ZLcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;[Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$latches",
            "val$finalChannelIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;->b:[Ljava/util/concurrent/CountDownLatch;

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;->b:[Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
