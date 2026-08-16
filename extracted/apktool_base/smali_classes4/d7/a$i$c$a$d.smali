.class public Ld7/a$i$c$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$a;


# direct methods
.method public constructor <init>(Ld7/a$i$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$a$d;->a:Ld7/a$i$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string p1, "EDITOR_TOP_BAR_RELOAD_PROJECT_BUTTON"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object p1, LW7/b;->h:Lb8/f;

    iget-object v0, p0, Ld7/a$i$c$a$d;->a:Ld7/a$i$c$a;

    iget-object v0, v0, Ld7/a$i$c$a;->b:Ld7/a$i$c;

    iget-object v0, v0, Ld7/a$i$c;->b:Landroid/app/Activity;

    new-instance v1, Ld7/a$i$c$a$d$a;

    invoke-direct {v1, p0}, Ld7/a$i$c$a$d$a;-><init>(Ld7/a$i$c$a$d;)V

    invoke-virtual {p1, v0, v1}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    return-void
.end method
