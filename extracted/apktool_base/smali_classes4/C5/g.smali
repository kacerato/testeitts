.class public final synthetic LC5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Landroid/widget/LinearLayout;

.field public final synthetic b:LC5/b;

.field public final synthetic c:LC5/n;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;LC5/b;LC5/n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/g;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, LC5/g;->b:LC5/b;

    iput-object p3, p0, LC5/g;->c:LC5/n;

    iput p4, p0, LC5/g;->d:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, LC5/g;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, LC5/g;->b:LC5/b;

    iget-object v2, p0, LC5/g;->c:LC5/n;

    iget v3, p0, LC5/g;->d:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, LC5/h;->a(Landroid/widget/LinearLayout;LC5/b;LC5/n;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
