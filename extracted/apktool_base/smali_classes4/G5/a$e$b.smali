.class public LG5/a$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt5/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG5/a$e;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG5/a$e;


# direct methods
.method public constructor <init>(LG5/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LG5/a$e$b;->a:LG5/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    iget-object v0, p0, LG5/a$e$b;->a:LG5/a$e;

    iget-object v0, v0, LG5/a$e;->d:LG5/a;

    invoke-static {v0}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object v0

    invoke-interface {v0, p1}, LG5/a$k;->c(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, LG5/a$e$b;->a:LG5/a$e;

    iget-object p1, p1, LG5/a$e;->d:LG5/a;

    invoke-static {p1}, LG5/a;->u(LG5/a;)V

    return-void
.end method
