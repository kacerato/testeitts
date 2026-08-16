.class public Lh5/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5/a$d;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh5/a$d;


# direct methods
.method public constructor <init>(Lh5/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh5/a$d$a;->a:Lh5/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lh5/a$d$a;->a:Lh5/a$d;

    iget-object v0, v0, Lh5/a$d;->b:Lh5/a;

    invoke-static {v0}, Lh5/a;->I(Lh5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    return-void
.end method

.method public getSelected()I
    .locals 1

    iget-object v0, p0, Lh5/a$d$a;->a:Lh5/a$d;

    iget-object v0, v0, Lh5/a$d;->b:Lh5/a;

    invoke-static {v0}, Lh5/a;->I(Lh5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    return v0
.end method
