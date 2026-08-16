.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a;->i()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    return-object p1
.end method

.method public getTittle()Ljava/lang/String;
    .locals 1

    const-string v0, "Capsule collider"

    return-object v0
.end method
