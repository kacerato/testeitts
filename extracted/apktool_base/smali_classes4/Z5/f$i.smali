.class public LZ5/f$i;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ5/f;


# direct methods
.method public constructor <init>(LZ5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ5/f$i;->b:LZ5/f;

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

    iget-object p1, p0, LZ5/f$i;->b:LZ5/f;

    invoke-static {p1}, LZ5/f;->C1(LZ5/f;)LZ5/b;

    move-result-object p1

    invoke-virtual {p1}, LZ5/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LZ5/f$i;->b:LZ5/f;

    invoke-static {p1}, LZ5/f;->q1(LZ5/f;)LZ5/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LZ5/b;->d(Z)V

    :cond_0
    iget-object p1, p0, LZ5/f$i;->b:LZ5/f;

    invoke-static {p1}, LZ5/f;->N1(LZ5/f;)V

    return-void
.end method
