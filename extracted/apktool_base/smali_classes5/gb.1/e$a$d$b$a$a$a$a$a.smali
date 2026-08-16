.class public Lgb/e$a$d$b$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$d$b$a$a$a$a;->a(LZ6/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lgb/e$a$d$b$a$a$a$a;


# direct methods
.method public constructor <init>(Lgb/e$a$d$b$a$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$6"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d$b$a$a$a$a$a;->b:Lgb/e$a$d$b$a$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgb/e$a$d$b$a$a$a$a$a;->b:Lgb/e$a$d$b$a$a$a$a;

    iget-object v1, v1, Lgb/e$a$d$b$a$a$a$a;->a:Lgb/e$a$d$b$a$a$a;

    iget-object v1, v1, Lgb/e$a$d$b$a$a$a;->c:Lgb/e$a$d$b$a$a;

    iget-object v1, v1, Lgb/e$a$d$b$a$a;->c:Lgb/e$a$d$b$a;

    iget-object v1, v1, Lgb/e$a$d$b$a;->a:Lgb/e$a$d$b;

    iget-object v1, v1, Lgb/e$a$d$b;->a:Lgb/e$a$d;

    iget-object v1, v1, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v1, v1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lgb/e$a$d$b$a$a$a$a$a;->b:Lgb/e$a$d$b$a$a$a$a;

    iget-object v1, v1, Lgb/e$a$d$b$a$a$a$a;->a:Lgb/e$a$d$b$a$a$a;

    iget-object v1, v1, Lgb/e$a$d$b$a$a$a;->c:Lgb/e$a$d$b$a$a;

    iget-object v1, v1, Lgb/e$a$d$b$a$a;->c:Lgb/e$a$d$b$a;

    iget-object v1, v1, Lgb/e$a$d$b$a;->a:Lgb/e$a$d$b;

    iget-object v1, v1, Lgb/e$a$d$b;->a:Lgb/e$a$d;

    iget-object v1, v1, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v1, v1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgb/e$a$d$b$a$a$a$a$a;->b:Lgb/e$a$d$b$a$a$a$a;

    iget-object v3, v3, Lgb/e$a$d$b$a$a$a$a;->a:Lgb/e$a$d$b$a$a$a;

    iget-object v3, v3, Lgb/e$a$d$b$a$a$a;->c:Lgb/e$a$d$b$a$a;

    iget-object v3, v3, Lgb/e$a$d$b$a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
