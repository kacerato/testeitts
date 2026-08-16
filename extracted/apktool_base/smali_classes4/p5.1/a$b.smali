.class public Lp5/a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp5/a;


# direct methods
.method public constructor <init>(Lp5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp5/a$b;->b:Lp5/a;

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

    iget-object p1, p0, Lp5/a$b;->b:Lp5/a;

    invoke-static {p1}, Lp5/a;->p1(Lp5/a;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lp5/a$b;->b:Lp5/a;

    invoke-static {p1}, Lp5/a;->r1(Lp5/a;)I

    iget-object p1, p0, Lp5/a$b;->b:Lp5/a;

    invoke-static {p1}, Lp5/a;->s1(Lp5/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp5/a$b;->b:Lp5/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :goto_0
    return-void
.end method
