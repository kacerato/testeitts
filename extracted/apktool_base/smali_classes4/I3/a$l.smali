.class public LI3/a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI3/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LI3/a$l;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Road:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    new-instance v0, LI3/a$l$a;

    invoke-direct {v0, p0}, LI3/a$l$a;-><init>(LI3/a$l;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/I;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;LLb/b;)V

    return-void
.end method
