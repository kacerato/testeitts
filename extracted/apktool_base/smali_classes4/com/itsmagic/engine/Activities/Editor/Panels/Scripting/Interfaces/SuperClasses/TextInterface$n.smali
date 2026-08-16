.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/Semaphore;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$text",
            "val$semaphore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$n;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$n;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$n;->c:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$n;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$n;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->access$300(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$n;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
