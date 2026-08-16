.class public Lp5/c$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/c;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp5/c;


# direct methods
.method public constructor <init>(Lp5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp5/c$b;->b:Lp5/c;

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

    iget-object p1, p0, Lp5/c$b;->b:Lp5/c;

    invoke-static {p1}, Lp5/c;->q1(Lp5/c;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lp5/c$b;->b:Lp5/c;

    invoke-static {p1}, Lp5/c;->s1(Lp5/c;)I

    iget-object p1, p0, Lp5/c$b;->b:Lp5/c;

    invoke-static {p1}, Lp5/c;->t1(Lp5/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp5/c$b;->b:Lp5/c;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :goto_0
    return-void
.end method
