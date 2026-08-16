.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$c;)V

    const-string v1, "position"

    invoke-static {p1, v1, v0}, LH5/e;->G1(Landroid/view/View;Ljava/lang/String;LH5/e$l;)LH5/e;

    return-void
.end method
