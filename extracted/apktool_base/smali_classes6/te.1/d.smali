.class public Lte/d;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field public final b:Lre/c;


# direct methods
.method public constructor <init>(Lre/c;)V
    .locals 0
    .param p1    # Lre/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lte/d;->b:Lre/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lte/d;->b:Lre/c;

    invoke-virtual {v0, p1}, Lre/c;->c(Landroid/graphics/Paint;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-virtual {p0, p1}, Lte/d;->a(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lte/d;->b:Lre/c;

    invoke-virtual {v0, p1}, Lre/c;->q(Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-virtual {p0, p1}, Lte/d;->a(Landroid/text/TextPaint;)V

    return-void
.end method
