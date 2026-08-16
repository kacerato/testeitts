.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$c;->b:I

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

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;

    invoke-virtual {p1}, Ls7/c;->i()Ls7/a;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->g:Ljava/util/List;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$c;->b:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;->B(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;)V

    return-void
.end method
