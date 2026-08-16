.class public Lp5/a$c;
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

    iput-object p1, p0, Lp5/a$c;->b:Lp5/a;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, Lp5/a$c;->b:Lp5/a;

    invoke-static {p1}, Lp5/a;->p1(Lp5/a;)I

    move-result p1

    iget-object v0, p0, Lp5/a$c;->b:Lp5/a;

    invoke-static {v0}, Lp5/a;->t1(Lp5/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lp5/a$c;->b:Lp5/a;

    invoke-static {p1}, Lp5/a;->t1(Lp5/a;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lp5/a$c;->b:Lp5/a;

    invoke-static {v0}, Lp5/a;->p1(Lp5/a;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq5/a;

    invoke-virtual {p1}, Lq5/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp5/a$c;->b:Lp5/a;

    invoke-static {p1}, Lp5/a;->q1(Lp5/a;)I

    iget-object p1, p0, Lp5/a$c;->b:Lp5/a;

    invoke-static {p1}, Lp5/a;->s1(Lp5/a;)V

    :cond_0
    return-void
.end method
