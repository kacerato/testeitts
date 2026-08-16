.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;->onCancel()V

    return-void
.end method
