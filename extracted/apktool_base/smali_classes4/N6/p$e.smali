.class public LN6/p$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/p;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

.field public final synthetic b:LN6/p;


# direct methods
.method public constructor <init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN6/p$e;->b:LN6/p;

    iput-object p2, p0, LN6/p$e;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v1, LN6/p$e$a;

    invoke-direct {v1, p0}, LN6/p$e$a;-><init>(LN6/p$e;)V

    invoke-static {p1, v0, v1}, LH3/g;->K1(Landroid/view/View;Lr4/a$e;LH3/e;)V

    return-void
.end method
