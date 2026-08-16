.class public Lg7/a$a$c;
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
.field public final synthetic a:Lfb/b;

.field public final synthetic b:Lg7/a$a;


# direct methods
.method public constructor <init>(Lg7/a$a;Lfb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$comp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$a$c;->b:Lg7/a$a;

    iput-object p2, p0, Lg7/a$a$c;->a:Lfb/b;

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

    iget-object p1, p0, Lg7/a$a$c;->b:Lg7/a$a;

    iget-object p1, p1, Lg7/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lg7/a$a$c;->a:Lfb/b;

    invoke-interface {v0}, Lfb/b;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method
