.class public LZ6/c$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/c;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ6/c;


# direct methods
.method public constructor <init>(LZ6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ6/c$e;->b:LZ6/c;

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

    iget-object p1, p0, LZ6/c$e;->b:LZ6/c;

    invoke-static {p1}, LZ6/c;->s1(LZ6/c;)LZ6/c$i;

    move-result-object p1

    iget-object v0, p0, LZ6/c$e;->b:LZ6/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LZ6/c;->r1(LZ6/c;Z)LZ6/c$g;

    move-result-object v0

    invoke-interface {p1, v0}, LZ6/c$i;->a(LZ6/c$g;)V

    return-void
.end method
