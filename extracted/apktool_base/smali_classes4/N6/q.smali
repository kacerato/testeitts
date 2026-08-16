.class public final synthetic LN6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LN6/p;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(LN6/p;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/q;->b:LN6/p;

    iput-object p2, p0, LN6/q;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LN6/q;->b:LN6/p;

    iget-object v1, p0, LN6/q;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, LN6/v;->a(LN6/p;Landroid/graphics/Bitmap;)V

    return-void
.end method
