.class public LRd/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LRd/g;


# direct methods
.method public constructor <init>(LRd/g;)V
    .locals 0

    iput-object p1, p0, LRd/g$a;->b:LRd/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, LRd/g$a;->b:LRd/g;

    invoke-virtual {v0}, LRd/g;->j()V

    const/4 v0, 0x1

    return v0
.end method
