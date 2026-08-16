.class public Lcom/itsmagic/engine/Engines/Engine/World/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/b$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/World/b$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/World/b$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/b$d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->S1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
