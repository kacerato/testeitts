.class public Ld7/a$w$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$w$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ld7/a$w$b;


# direct methods
.method public constructor <init>(Ld7/a$w$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$w$b$a;->b:Ld7/a$w$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->BakePreview:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->setMode(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ld7/a$w$b$a$a;

    invoke-direct {v0, p0}, Ld7/a$w$b$a$a;-><init>(Ld7/a$w$b$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
