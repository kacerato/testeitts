.class public final synthetic LX9/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$c$a;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Utils/Variable;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$c$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX9/h;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$c$a;

    iput-object p2, p0, LX9/h;->c:Lcom/itsmagic/engine/Engines/Utils/Variable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LX9/h;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$c$a;

    iget-object v1, p0, LX9/h;->c:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$c$a;->a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$c$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    return-void
.end method
