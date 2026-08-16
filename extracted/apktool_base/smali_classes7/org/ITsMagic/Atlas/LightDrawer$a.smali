.class public Lorg/ITsMagic/Atlas/LightDrawer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/LightDrawer;->l(Lub/p;Lub/p;Lub/p;Lub/p;FILcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;FZZFFFLcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/io/File;Lorg/ITsMagic/Atlas/LightDrawer$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/ITsMagic/Atlas/LightDrawer$e;

.field public final synthetic b:I

.field public final synthetic c:Lorg/ITsMagic/Atlas/LightDrawer;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/LightDrawer;Lorg/ITsMagic/Atlas/LightDrawer$e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$finalTotalRaycasts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/LightDrawer$a;->c:Lorg/ITsMagic/Atlas/LightDrawer;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/LightDrawer$a;->a:Lorg/ITsMagic/Atlas/LightDrawer$e;

    iput p3, p0, Lorg/ITsMagic/Atlas/LightDrawer$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 0
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

    iget p1, p0, Lorg/ITsMagic/Atlas/LightDrawer$a;->b:I

    if-lez p1, :cond_0

    iget-object p2, p0, Lorg/ITsMagic/Atlas/LightDrawer$a;->a:Lorg/ITsMagic/Atlas/LightDrawer$e;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, p1, p3, p4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->a(IIFLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/ITsMagic/Atlas/LightDrawer$a;->a:Lorg/ITsMagic/Atlas/LightDrawer$e;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2, p3, p4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->a(IIFLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/LightDrawer$a;->a:Lorg/ITsMagic/Atlas/LightDrawer$e;

    invoke-interface {v0, p1}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    return-void
.end method
