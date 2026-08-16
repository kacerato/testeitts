.class public La2/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/j;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:La2/j;


# direct methods
.method public constructor <init>(La2/j;F)V
    .locals 0

    iput-object p1, p0, La2/j$b;->b:La2/j;

    iput p2, p0, La2/j$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La2/d;)La2/d;
    .locals 2
    .param p1    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of v0, p1, La2/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, La2/b;

    iget v1, p0, La2/j$b;->a:F

    invoke-direct {v0, v1, p1}, La2/b;-><init>(FLa2/d;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
