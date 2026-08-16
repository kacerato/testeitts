.class public final La2/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:La2/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:La2/p$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:F


# direct methods
.method public constructor <init>(La2/o;FLandroid/graphics/RectF;La2/p$b;Landroid/graphics/Path;)V
    .locals 0
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # La2/p$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, La2/p$c;->d:La2/p$b;

    iput-object p1, p0, La2/p$c;->a:La2/o;

    iput p2, p0, La2/p$c;->e:F

    iput-object p3, p0, La2/p$c;->c:Landroid/graphics/RectF;

    iput-object p5, p0, La2/p$c;->b:Landroid/graphics/Path;

    return-void
.end method
