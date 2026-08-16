.class public LB5/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/c$d;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:LB5/c$d;


# direct methods
.method public constructor <init>(LB5/c$d;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LB5/c$d$a;->c:LB5/c$d;

    iput-object p2, p0, LB5/c$d$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LB5/c$d$a;->c:LB5/c$d;

    iget-object v0, v0, LB5/c$d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v1, p0, LB5/c$d$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method
