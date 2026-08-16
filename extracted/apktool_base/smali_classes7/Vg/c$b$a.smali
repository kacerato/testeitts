.class public LVg/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVg/c$b;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

.field public final synthetic b:LVg/c$b;


# direct methods
.method public constructor <init>(LVg/c$b;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$importOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVg/c$b$a;->b:LVg/c$b;

    iput-object p2, p0, LVg/c$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

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

    new-instance p1, LVg/c$b$a$a;

    invoke-direct {p1, p0}, LVg/c$b$a$a;-><init>(LVg/c$b$a;)V

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
