.class public Lz5/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz5/a;


# direct methods
.method public constructor <init>(Lz5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$g;->a:Lz5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "component",
            "index"
        }
    .end annotation

    instance-of p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p0, Lz5/a$g;->a:Lz5/a;

    invoke-static {p1}, Lz5/a;->t1(Lz5/a;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
