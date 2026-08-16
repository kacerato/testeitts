.class public Lk5/d$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;Lk5/d$E;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk5/b;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

.field public final synthetic e:Lk5/d;


# direct methods
.method public constructor <init>(Lk5/d;Lk5/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$option",
            "val$selectedGameObject",
            "val$rect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$o;->e:Lk5/d;

    iput-object p2, p0, Lk5/d$o;->b:Lk5/b;

    iput-object p3, p0, Lk5/d$o;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p4, p0, Lk5/d$o;->d:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lk5/d$o;->b:Lk5/b;

    iget-object v1, p0, Lk5/d$o;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lk5/d$o;->d:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, v1, v2}, Lk5/b;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    return-void
.end method
