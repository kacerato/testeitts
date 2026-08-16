.class public LV6/a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV6/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LV6/a;


# direct methods
.method public constructor <init>(LV6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LV6/a$b;->b:LV6/a;

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

    iget-object p1, p0, LV6/a$b;->b:LV6/a;

    invoke-static {p1}, LV6/a;->p1(LV6/a;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, LV6/a$b;->b:LV6/a;

    invoke-static {p1}, LV6/a;->s1(LV6/a;)I

    iget-object p1, p0, LV6/a$b;->b:LV6/a;

    invoke-static {p1}, LV6/a;->t1(LV6/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LV6/a$b;->b:LV6/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :goto_0
    return-void
.end method
