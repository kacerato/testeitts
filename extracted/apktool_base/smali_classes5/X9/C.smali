.class public final synthetic LX9/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Utils/Variable;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX9/C;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;

    iput-object p2, p0, LX9/C;->c:Lcom/itsmagic/engine/Engines/Utils/Variable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LX9/C;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;

    iget-object v1, p0, LX9/C;->c:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;->a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    return-void
.end method
