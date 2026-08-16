.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/c;->a()V

    return-void
.end method
