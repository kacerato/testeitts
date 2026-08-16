.class public Lq/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/b;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq/b;


# direct methods
.method public constructor <init>(Lq/b;)V
    .locals 0

    iput-object p1, p0, Lq/b$a;->a:Lq/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lq/b$a;->a:Lq/b;

    invoke-static {v0}, Lq/b;->a(Lq/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p3, p2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p5, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 p3, 0xa

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lq/b$a;->a:Lq/b;

    invoke-static {p2, p1, p4, p5, p6}, Lq/b;->b(Lq/b;Ljava/lang/CharSequence;Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method
