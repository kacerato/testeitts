.class public Lorg/jaredrummler/colorpicker/ColorPickerView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaredrummler/colorpicker/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/Canvas;

.field public b:Landroid/graphics/Bitmap;

.field public c:F

.field public final synthetic d:Lorg/jaredrummler/colorpicker/ColorPickerView;


# direct methods
.method public constructor <init>(Lorg/jaredrummler/colorpicker/ColorPickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/jaredrummler/colorpicker/ColorPickerView$b;->d:Lorg/jaredrummler/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/jaredrummler/colorpicker/ColorPickerView;Lorg/jaredrummler/colorpicker/ColorPickerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView$b;-><init>(Lorg/jaredrummler/colorpicker/ColorPickerView;)V

    return-void
.end method
