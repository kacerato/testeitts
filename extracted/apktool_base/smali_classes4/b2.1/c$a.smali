.class public Lb2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb2/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/util/AttributeSet;

.field public final synthetic b:I

.field public final synthetic c:Lb2/c;


# direct methods
.method public constructor <init>(Lb2/c;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lb2/c$a;->c:Lb2/c;

    iput-object p2, p0, Lb2/c$a;->a:Landroid/util/AttributeSet;

    iput p3, p0, Lb2/c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li2/a;
    .locals 7

    iget-object v0, p0, Lb2/c$a;->c:Lb2/c;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lb2/c$a;->a:Landroid/util/AttributeSet;

    sget-object v3, Lw1/a$o;->Lq:[I

    iget v4, p0, Lb2/c$a;->b:I

    sget v5, Lb2/c;->R1:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lb2/c$a;->c:Lb2/c;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lb2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)Li2/a;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method
