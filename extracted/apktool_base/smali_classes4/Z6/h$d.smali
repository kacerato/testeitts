.class public LZ6/h$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/h;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ6/h;


# direct methods
.method public constructor <init>(LZ6/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ6/h$d;->b:LZ6/h;

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

    iget-object p1, p0, LZ6/h$d;->b:LZ6/h;

    invoke-static {p1}, LZ6/h;->t1(LZ6/h;)LZ6/h$h;

    move-result-object p1

    iget-object v0, p0, LZ6/h$d;->b:LZ6/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LZ6/h;->s1(LZ6/h;Z)LZ6/h$f;

    move-result-object v0

    invoke-interface {p1, v0}, LZ6/h$h;->a(LZ6/h$f;)V

    return-void
.end method
