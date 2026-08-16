.class public LY6/a$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY6/a$a;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LY6/a;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

.field public final synthetic d:LY6/a$a;


# direct methods
.method public constructor <init>(LY6/a$a;LY6/a;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$menu",
            "val$blockPanel"
        }
    .end annotation

    iput-object p1, p0, LY6/a$a$a;->d:LY6/a$a;

    iput-object p2, p0, LY6/a$a$a;->b:LY6/a;

    iput-object p3, p0, LY6/a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LY6/a$a$a;->b:LY6/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, LY6/a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
