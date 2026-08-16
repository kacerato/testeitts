.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/LightDrawer$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;ZLcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$lightSlotStart",
            "val$lightDrawEnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->b:F

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 7
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    iget v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->b:F

    iget v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->c:F

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;IIFLjava/lang/String;FF)V

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    return-void
.end method
