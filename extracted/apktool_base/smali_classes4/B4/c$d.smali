.class public LB4/c$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB4/c;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LB4/c;


# direct methods
.method public constructor <init>(LB4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB4/c$d;->b:LB4/c;

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

    iget-object p1, p0, LB4/c$d;->b:LB4/c;

    invoke-static {p1}, LB4/c;->v1(LB4/c;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LB4/c$d;->b:LB4/c;

    invoke-static {p1}, LB4/c;->w1(LB4/c;)Lorg/ITsMagic/Atlas/g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ITsMagic/Atlas/g;->o()V

    return-void
.end method
