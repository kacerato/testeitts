.class public Lgb/e$a$d$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$d$j;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lgb/e$a$d$j;


# direct methods
.method public constructor <init>(Lgb/e$a$d$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d$j$a;->b:Lgb/e$a$d$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgb/e$a$d$j$a;->b:Lgb/e$a$d$j;

    iget-object v1, v1, Lgb/e$a$d$j;->a:Lgb/e$a$d;

    iget-object v1, v1, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v1, v1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lgb/e$a$d$j$a;->b:Lgb/e$a$d$j;

    iget-object v1, v1, Lgb/e$a$d$j;->a:Lgb/e$a$d;

    iget-object v1, v1, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v1, v1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    iget-object v2, p0, Lgb/e$a$d$j$a;->b:Lgb/e$a$d$j;

    invoke-static {v2, v1}, Lgb/e$a$d$j;->a(Lgb/e$a$d$j;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
