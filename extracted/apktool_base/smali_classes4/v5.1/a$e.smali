.class public Lv5/a$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv5/a;


# direct methods
.method public constructor <init>(Lv5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lv5/a$e;->b:Lv5/a;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, Lv5/a$e;->b:Lv5/a;

    invoke-static {p1}, Lv5/a;->q1(Lv5/a;)Lv5/a$i;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lv5/a$i;->a(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lv5/a;->r1(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lv5/a$e;->b:Lv5/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
