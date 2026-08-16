.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$stage",
            "val$current",
            "val$total"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->c:I

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a;->b:LZ6/g;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->c:I

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c$a$a$a;->d:I

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ6/g;->f1(Ljava/lang/String;)V

    return-void
.end method
