.class public LP1/c$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LP1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:LP1/c;


# direct methods
.method public constructor <init>(LP1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LP1/c$b;->a:LP1/c;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LP1/c;LP1/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LP1/c$b;-><init>(LP1/c;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LP1/c$b;->a:LP1/c;

    return-object v0
.end method
