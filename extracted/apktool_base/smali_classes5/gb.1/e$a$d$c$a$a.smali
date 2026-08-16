.class public Lgb/e$a$d$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$d$c$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lgb/e$a$d$c$a;


# direct methods
.method public constructor <init>(Lgb/e$a$d$c$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d$c$a$a;->c:Lgb/e$a$d$c$a;

    iput-object p2, p0, Lgb/e$a$d$c$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lgb/e$a$d$c$a$a;->c:Lgb/e$a$d$c$a;

    iget-object v2, v2, Lgb/e$a$d$c$a;->a:Lgb/e$a$d$c;

    iget-object v2, v2, Lgb/e$a$d$c;->a:Lgb/e$a$d;

    iget-object v2, v2, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v2, v2, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lgb/e$a$d$c$a$a;->c:Lgb/e$a$d$c$a;

    iget-object v2, v2, Lgb/e$a$d$c$a;->a:Lgb/e$a$d$c;

    iget-object v2, v2, Lgb/e$a$d$c;->a:Lgb/e$a$d;

    iget-object v2, v2, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v2, v2, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgb/e$a$d$c$a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lgb/e$a$d$c$a$a$a;

    invoke-direct {v0, p0, v1}, Lgb/e$a$d$c$a$a$a;-><init>(Lgb/e$a$d$c$a$a;I)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
