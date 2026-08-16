.class public LG4/e$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG4/e;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LG4/e;


# direct methods
.method public constructor <init>(LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG4/e$c;->b:LG4/e;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LG4/e$c;->b:LG4/e;

    invoke-static {v0}, LG4/e;->q1(LG4/e;)LG4/f;

    move-result-object v0

    iget-object v1, p0, LG4/e$c;->b:LG4/e;

    invoke-interface {v0, p1, v1}, LG4/f;->g(Landroid/view/View;LG4/e;)V

    return-void
.end method
