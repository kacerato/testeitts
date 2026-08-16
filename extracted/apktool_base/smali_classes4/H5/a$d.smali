.class public LH5/a$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/a;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH5/a;


# direct methods
.method public constructor <init>(LH5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/a$d;->b:LH5/a;

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

    iget-object p1, p0, LH5/a$d;->b:LH5/a;

    invoke-static {p1}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p1

    invoke-interface {p1}, LH5/a$i;->get()F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v0

    iget-object v0, p0, LH5/a$d;->b:LH5/a;

    invoke-static {v0}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object v0

    invoke-interface {v0, p1}, LH5/a$i;->a(F)V

    return-void
.end method
