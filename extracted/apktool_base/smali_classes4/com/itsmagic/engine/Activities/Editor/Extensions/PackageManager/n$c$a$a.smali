.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;)V

    invoke-static {v1, v2, v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->g(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V

    return-void
.end method
