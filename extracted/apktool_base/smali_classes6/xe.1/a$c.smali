.class public Lxe/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/a$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lxe/a$c;->a:I

    return-void
.end method


# virtual methods
.method public a(Lqe/m;Ljava/lang/String;I)V
    .locals 9
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->o()Lqe/g;

    move-result-object v0

    invoke-virtual {v0}, Lqe/g;->f()Lqe/k;

    move-result-object v0

    const-class v1, LUm/r;

    invoke-interface {v0, v1}, Lqe/k;->a(Ljava/lang/Class;)Lqe/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget p2, p0, Lxe/a$c;->a:I

    invoke-virtual {p0, v1, p2}, Lxe/a$c;->b(Landroid/text/Spannable;I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p2, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v2

    invoke-interface {p1}, Lqe/m;->w()Lqe/z;

    move-result-object v4

    array-length v5, p2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, p2, v3

    sget-object v7, Lre/b;->e:Lqe/s;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    invoke-interface {p1}, Lqe/m;->o()Lqe/g;

    move-result-object v7

    invoke-interface {v0, v7, v2}, Lqe/y;->a(Lqe/g;Lqe/v;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v8, p3

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, p3

    invoke-static {v4, v7, v8, v6}, Lqe/z;->o(Lqe/z;Ljava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/text/Spannable;I)Z
    .locals 0
    .param p1    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method
