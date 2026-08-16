.class public Lt5/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jaredrummler/colorpicker/ColorPickerView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/f;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt5/f;


# direct methods
.method public constructor <init>(Lt5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt5/f$d;->a:Lt5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newColorInt"
        }
    .end annotation

    iget-object v0, p0, Lt5/f$d;->a:Lt5/f;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lt5/f;->x1(Lt5/f;IZ)V

    return-void
.end method
