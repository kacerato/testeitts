.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->Scale:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->S1(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;ZZ)V

    return-void
.end method
