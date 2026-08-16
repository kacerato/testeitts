.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k$a;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->access$1502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k$a;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;)V

    return-void
.end method
