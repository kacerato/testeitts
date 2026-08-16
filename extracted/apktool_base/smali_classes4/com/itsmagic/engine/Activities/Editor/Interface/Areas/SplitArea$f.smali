.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj4/a;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lj4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$f;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$f;->b:Lj4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$f;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$f;->b:Lj4/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b:Lj4/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->S(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    return-void
.end method
