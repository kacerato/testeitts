.class public Lg7/a$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lfb/d;

.field public final synthetic b:Lg7/a$a;


# direct methods
.method public constructor <init>(Lg7/a$a;Lfb/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$a$d;->b:Lg7/a$a;

    iput-object p2, p0, Lg7/a$a$d;->a:Lfb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lg7/a$a$d;->a:Lfb/d;

    iget-object v0, p0, Lg7/a$a$d;->b:Lg7/a$a;

    iget-object v0, v0, Lg7/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {p1, v0}, Lfb/d;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/r;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg7/a$a$d;->b:Lg7/a$a;

    iget-object v0, v0, Lg7/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_0
    return-void
.end method
