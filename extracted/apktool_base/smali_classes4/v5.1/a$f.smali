.class public Lv5/a$f;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv5/a;


# direct methods
.method public constructor <init>(Lv5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lv5/a$f;->b:Lv5/a;

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

    iget-object p1, p0, Lv5/a$f;->b:Lv5/a;

    invoke-static {p1}, Lv5/a;->s1(Lv5/a;)Lh7/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lv5/a$f;->b:Lv5/a;

    invoke-static {p1}, Lv5/a;->s1(Lv5/a;)Lh7/d;

    move-result-object p1

    invoke-virtual {p1}, Lh7/d;->G()V

    iget-object p1, p0, Lv5/a$f;->b:Lv5/a;

    invoke-static {p1}, Lv5/a;->s1(Lv5/a;)Lh7/d;

    move-result-object p1

    invoke-virtual {p1}, Lh7/d;->q()Z

    move-result p1

    invoke-static {p1}, Lv5/a;->t1(Z)Z

    :cond_0
    return-void
.end method
