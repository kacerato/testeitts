.class public LB5/d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/d;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public final synthetic b:LB5/d;


# direct methods
.method public constructor <init>(LB5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LB5/d$j;->b:LB5/d;

    iput-object p2, p0, LB5/d$j;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LB5/d$j;->b:LB5/d;

    iget-object v1, p0, LB5/d$j;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, LB5/d;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method
