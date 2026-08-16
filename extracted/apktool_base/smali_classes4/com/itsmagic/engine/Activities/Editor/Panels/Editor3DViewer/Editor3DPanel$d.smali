.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc8/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    new-instance v1, LN4/b;

    invoke-direct {v1, v0}, LN4/b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
