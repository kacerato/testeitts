.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->A1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
