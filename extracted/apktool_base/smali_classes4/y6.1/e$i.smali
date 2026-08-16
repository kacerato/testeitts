.class public Ly6/e$i;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/e;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

.field public final synthetic c:Ly6/e;


# direct methods
.method public constructor <init>(Ly6/e;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cls"
        }
    .end annotation

    iput-object p1, p0, Ly6/e$i;->c:Ly6/e;

    iput-object p2, p0, Ly6/e$i;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Ly6/e$i;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz p1, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, Ln4/c;

    iget-object v1, p0, Ly6/e$i;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ln4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    :cond_0
    return-void
.end method
