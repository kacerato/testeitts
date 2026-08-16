.class public LIc/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v0, LIc/H;->a:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v0, LIc/H;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v0, LIc/H;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v0, LIc/H;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v0, LIc/H;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v3, 0xc4

    const/16 v4, 0xf

    const/16 v5, 0xf1

    invoke-static {v1, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v0, LIc/H;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v1, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v0, LIc/H;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
