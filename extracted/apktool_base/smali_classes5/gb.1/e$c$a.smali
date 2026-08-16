.class public Lgb/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIc/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$c;->b(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$c;


# direct methods
.method public constructor <init>(Lgb/e$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$c$a;->a:Lgb/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "index"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p0, Lgb/e$c$a;->a:Lgb/e$c;

    iget-object v0, p2, Lgb/e$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p2, Lgb/e$c;->c:Landroid/content/Context;

    iget-object p2, p2, Lgb/e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-static {p1, v0, v1, p2}, Lgb/e;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)V

    return-void
.end method
