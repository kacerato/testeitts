.class public LP6/c$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c;->e2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP6/c;


# direct methods
.method public constructor <init>(LP6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP6/c$a0;->a:LP6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, LP6/c$a0;->a:LP6/c;

    invoke-static {v0}, LP6/c;->p1(LP6/c;)V

    iget-object v0, p0, LP6/c$a0;->a:LP6/c;

    invoke-static {v0}, LP6/c;->q1(LP6/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO6/a;->P2(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, LP6/c$a0;->a:LP6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
