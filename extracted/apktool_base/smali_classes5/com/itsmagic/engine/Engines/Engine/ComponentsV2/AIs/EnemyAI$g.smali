.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsableEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Walk speed"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Chase speed"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Front probe distance"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Ray origin forward offset"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Ground probe distance"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol turn chance"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol walk duration"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol walk duration randomness"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol pause duration"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol pause duration randomness"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol rest chance"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol rest duration"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;)V

    const-string v2, "Patrol rest duration randomness"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
