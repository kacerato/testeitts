.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->p()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->I1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)V

    return-void
.end method
