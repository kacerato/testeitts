.class public Li5/b$i$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$i$a;->b(Landroid/view/View;Lt5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt5/l;

.field public final synthetic c:Li5/b$i$a;


# direct methods
.method public constructor <init>(Li5/b$i$a;Lt5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$panel"
        }
    .end annotation

    iput-object p1, p0, Li5/b$i$a$a;->c:Li5/b$i$a;

    iput-object p2, p0, Li5/b$i$a$a;->b:Lt5/l;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, Li5/b$i$a$a;->b:Lt5/l;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, Li5/b$i$a$a;->c:Li5/b$i$a;

    iget-object p1, p1, Li5/b$i$a;->a:Li5/b$i;

    iget-object p1, p1, Li5/b$i;->b:Li5/b;

    invoke-virtual {p1}, Lf5/d;->E()V

    return-void
.end method
