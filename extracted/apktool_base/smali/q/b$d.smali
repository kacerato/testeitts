.class public final Lq/b$d;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lq/b;


# direct methods
.method public constructor <init>(Lq/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/b$d;->b:Lq/b;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq/b;Lq/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lq/b$d;-><init>(Lq/b;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget-object p1, p0, Lq/b$d;->b:Lq/b;

    invoke-static {p1}, Lq/b;->c(Lq/b;)I

    move-result p1

    return p1
.end method
