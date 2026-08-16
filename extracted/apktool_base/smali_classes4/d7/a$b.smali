.class public Ld7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$b;->a:Ld7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;LM7/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbProgressBar"
        }
    .end annotation

    const/16 p2, 0xf0

    invoke-static {p2}, LN7/c;->g(I)F

    move-result p3

    invoke-static {p2}, LN7/c;->f(I)F

    move-result p2

    new-instance v0, Ly4/b;

    invoke-direct {v0}, Ly4/b;-><init>()V

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v0, v1, p3, p2}, Lr4/a;->h(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)V

    return-void
.end method
