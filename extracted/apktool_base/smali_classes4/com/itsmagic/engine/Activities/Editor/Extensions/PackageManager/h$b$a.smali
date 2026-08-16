.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->g(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-interface {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V

    return-void
.end method
