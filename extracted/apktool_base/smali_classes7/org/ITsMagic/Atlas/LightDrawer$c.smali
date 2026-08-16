.class public Lorg/ITsMagic/Atlas/LightDrawer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/LightDrawer;->j(Lorg/ITsMagic/Atlas/LightDrawer$e;III)Lorg/ITsMagic/Atlas/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/ITsMagic/Atlas/LightDrawer$e;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lorg/ITsMagic/Atlas/LightDrawer;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/LightDrawer;ILorg/ITsMagic/Atlas/LightDrawer$e;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$globalTotal",
            "val$listener",
            "val$passTotal",
            "val$passOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->e:Lorg/ITsMagic/Atlas/LightDrawer;

    iput p2, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->a:I

    iput-object p3, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->b:Lorg/ITsMagic/Atlas/LightDrawer$e;

    iput p4, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->c:I

    iput p5, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "progress",
            "tda"
        }
    .end annotation

    iget p2, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->a:I

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    iget-object p1, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->b:Lorg/ITsMagic/Atlas/LightDrawer$e;

    invoke-interface {p1, v0, v0, p3, p4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->a(IIFLjava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->e:Lorg/ITsMagic/Atlas/LightDrawer;

    iget p3, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->c:I

    invoke-static {p2, p1, v0, p3}, Lorg/ITsMagic/Atlas/LightDrawer;->a(Lorg/ITsMagic/Atlas/LightDrawer;III)I

    move-result p1

    iget-object p2, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->e:Lorg/ITsMagic/Atlas/LightDrawer;

    iget p3, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->d:I

    add-int/2addr p3, p1

    iget p1, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->a:I

    invoke-static {p2, p3, v0, p1}, Lorg/ITsMagic/Atlas/LightDrawer;->a(Lorg/ITsMagic/Atlas/LightDrawer;III)I

    move-result p1

    int-to-float p2, p1

    iget p3, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->a:I

    int-to-float v0, p3

    div-float/2addr p2, v0

    iget-object v0, p0, Lorg/ITsMagic/Atlas/LightDrawer$c;->b:Lorg/ITsMagic/Atlas/LightDrawer$e;

    invoke-interface {v0, p1, p3, p2, p4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->a(IIFLjava/lang/String;)V

    return-void
.end method
