.class public abstract Lte/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/Rect;

.field public static final b:Landroid/graphics/RectF;

.field public static final c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lte/j;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lte/j;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lte/j;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lte/j;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static b()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lte/j;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static c()Landroid/graphics/RectF;
    .locals 1

    sget-object v0, Lte/j;->b:Landroid/graphics/RectF;

    return-object v0
.end method
