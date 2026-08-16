.class public LC5/c$c$a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/c$c$a$a$b;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/c$c$a$a$b;


# direct methods
.method public constructor <init>(LC5/c$c$a$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a$a$b$a;->b:LC5/c$c$a$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LC5/c$c$a$a$b$a;->b:LC5/c$c$a$a$b;

    iget-object v0, v0, LC5/c$c$a$a$b;->a:LC5/c$c$a$a;

    iget-object v0, v0, LC5/c$c$a$a;->b:LC5/c$c$a;

    iget-object v0, v0, LC5/c$c$a;->d:LC5/c$c;

    iget-object v0, v0, LC5/c$c;->b:LC5/d;

    iget-object v0, v0, LC5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    move-result-object v0

    iget-object v1, p0, LC5/c$c$a$a$b$a;->b:LC5/c$c$a$a$b;

    iget-object v1, v1, LC5/c$c$a$a$b;->a:LC5/c$c$a$a;

    iget-object v1, v1, LC5/c$c$a$a;->b:LC5/c$c$a;

    iget-object v1, v1, LC5/c$c$a;->d:LC5/c$c;

    iget-object v1, v1, LC5/c$c;->b:LC5/d;

    iget-object v1, v1, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->C(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v0, LC5/c$c$a$a$b$a$a;

    invoke-direct {v0, p0}, LC5/c$c$a$a$b$a$a;-><init>(LC5/c$c$a$a$b$a;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method
