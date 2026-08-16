.class public LW6/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW6/b$c;->c(Ljava/lang/String;ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW6/b$c;


# direct methods
.method public constructor <init>(LW6/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LW6/b$c$a;->a:LW6/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object p1, p0, LW6/b$c$a;->a:LW6/b$c;

    iget-object p1, p1, LW6/b$c;->a:LV6/b;

    invoke-interface {p1}, LV6/b;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, LV5/a;->p1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, LW6/b$c$a;->a:LW6/b$c;

    iget-object v0, v0, LW6/b$c;->a:LV6/b;

    invoke-interface {v0}, LV6/b;->a()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, LW6/b$c$a;->a:LW6/b$c;

    iget-object v0, v0, LW6/b$c;->a:LV6/b;

    invoke-interface {v0}, LV6/b;->b()V

    return-void
.end method
