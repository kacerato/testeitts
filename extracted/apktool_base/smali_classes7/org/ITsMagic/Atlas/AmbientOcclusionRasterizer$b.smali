.class public Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxOccluderSamples"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;->a:I

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    :cond_0
    sget-object v0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    new-instance p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;-><init>(I)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;-><init>(I)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;-><init>(I)V

    return-object p0
.end method
