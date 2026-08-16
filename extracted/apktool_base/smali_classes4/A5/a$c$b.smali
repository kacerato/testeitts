.class public LA5/a$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA5/a$c;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public final synthetic c:LA5/a$c;


# direct methods
.method public constructor <init>(LA5/a$c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LA5/a$c$b;->c:LA5/a$c;

    iput-object p2, p0, LA5/a$c$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LA5/a$c$b;->c:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    invoke-static {v0}, LA5/a;->q1(LA5/a;)LB5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LA5/a$c$b;->c:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    invoke-static {v0}, LA5/a;->q1(LA5/a;)LB5/a;

    move-result-object v0

    instance-of v0, v0, LB5/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, LA5/a$c$b;->c:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    invoke-static {v0}, LA5/a;->q1(LA5/a;)LB5/a;

    move-result-object v0

    check-cast v0, LB5/c;

    iget-object v1, p0, LA5/a$c$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, LB5/c;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_0
    return-void
.end method
