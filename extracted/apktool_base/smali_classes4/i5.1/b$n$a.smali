.class public Li5/b$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt5/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$n;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/c;

.field public final synthetic b:Li5/b$n;


# direct methods
.method public constructor <init>(Li5/b$n;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$tbButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/b$n$a;->b:Li5/b$n;

    iput-object p2, p0, Li5/b$n$a;->a:LM7/c;

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
            "color"
        }
    .end annotation

    iget-object v0, p0, Li5/b$n$a;->b:Li5/b$n;

    iget-object v0, v0, Li5/b$n;->a:Li5/b;

    invoke-static {v0}, Li5/b;->J(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, Li5/b$n$a;->a:LM7/c;

    iget-object v0, p0, Li5/b$n$a;->b:Li5/b$n;

    iget-object v0, v0, Li5/b$n;->a:Li5/b;

    invoke-static {v0}, Li5/b;->J(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p1, v0}, LM7/c;->e0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;

    return-void
.end method
