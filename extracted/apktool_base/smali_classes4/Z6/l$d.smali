.class public LZ6/l$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/l;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ6/l;


# direct methods
.method public constructor <init>(LZ6/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ6/l$d;->b:LZ6/l;

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

    iget-object p1, p0, LZ6/l$d;->b:LZ6/l;

    invoke-static {p1}, LZ6/l;->s1(LZ6/l;)LZ6/l$i;

    move-result-object p1

    iget-object v0, p0, LZ6/l$d;->b:LZ6/l;

    invoke-static {v0}, LZ6/l;->r1(LZ6/l;)LZ6/l$g;

    move-result-object v0

    invoke-interface {p1, v0}, LZ6/l$i;->a(LZ6/l$g;)V

    return-void
.end method
