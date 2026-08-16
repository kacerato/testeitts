.class public LQ6/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/a;->E1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LQ6/a;


# direct methods
.method public constructor <init>(LQ6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQ6/a$a;->b:LQ6/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LQ6/a$a;->b:LQ6/a;

    invoke-static {v0}, LQ6/a;->p1(LQ6/a;)V

    iget-object v0, p0, LQ6/a$a;->b:LQ6/a;

    invoke-static {v0, p1}, LQ6/a;->q1(LQ6/a;Landroid/view/View;)V

    iget-object p1, p0, LQ6/a$a;->b:LQ6/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    new-instance p1, LU9/f;

    iget-object v0, p0, LQ6/a$a;->b:LQ6/a;

    invoke-static {v0}, LQ6/a;->r1(LQ6/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LU9/f;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(LLb/c;)V

    return-void
.end method
