.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Lorg/ITsMagic/Atlas/XAtlas;LUg/k;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ILorg/ITsMagic/Atlas/c;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;FFLjava/lang/Runnable;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$drawStart",
            "val$drawEnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;->a:F

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;->b:F

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    iget v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;->a:F

    iget v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;->b:F

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    return-void
.end method
