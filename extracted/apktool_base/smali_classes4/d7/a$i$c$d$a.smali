.class public Ld7/a$i$c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$d;


# direct methods
.method public constructor <init>(Ld7/a$i$c$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$d$a;->a:Ld7/a$i$c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string p1, "EDITOR_TOP_BAR_EXPORT_OFFLINE_APK_PROJECT_BUTTON"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object p1, Lp5/c$f;->APK:Lp5/c$f;

    invoke-static {p1}, Lp5/c;->x1(Lp5/c$f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
