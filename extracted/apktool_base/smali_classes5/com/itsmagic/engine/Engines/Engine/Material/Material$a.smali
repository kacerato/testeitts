.class public Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Material/Material;->A(Landroid/content/Context;Lda/g;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->c:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;)V

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/A;->c(Landroid/content/Context;Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V

    :cond_0
    return-void
.end method
