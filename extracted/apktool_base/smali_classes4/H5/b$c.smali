.class public LH5/b$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/b;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH5/b;


# direct methods
.method public constructor <init>(LH5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/b$c;->b:LH5/b;

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

    iget-object p1, p0, LH5/b$c;->b:LH5/b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, LH5/b;->r1(LH5/b;F)F

    iget-object p1, p0, LH5/b$c;->b:LH5/b;

    invoke-static {p1}, LH5/b;->t1(LH5/b;)LH5/b$g;

    move-result-object p1

    iget-object v0, p0, LH5/b$c;->b:LH5/b;

    invoke-static {v0}, LH5/b;->p1(LH5/b;)F

    move-result v0

    float-to-int v0, v0

    invoke-interface {p1, v0}, LH5/b$g;->b(I)V

    return-void
.end method
