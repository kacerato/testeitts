.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;->a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ6/g;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;LZ6/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$popup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;->b:LZ6/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;)V

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher;->K(Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$PublishException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$c;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$PublishException;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
