.class public LVg/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVg/c;->b(Landroid/view/View;Ljava/io/File;ZLVg/c$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LVg/c$e;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(LVg/c$e;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$importListener",
            "val$importOptions",
            "val$file",
            "val$copyToWorld"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVg/c$c;->a:LVg/c$e;

    iput-object p2, p0, LVg/c$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iput-object p3, p0, LVg/c$c;->c:Ljava/io/File;

    iput-boolean p4, p0, LVg/c$c;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    new-instance p1, LVg/c$c$a;

    invoke-direct {p1, p0}, LVg/c$c$a;-><init>(LVg/c$c;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lq7/a;->u1(ZLq7/a$d;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method
