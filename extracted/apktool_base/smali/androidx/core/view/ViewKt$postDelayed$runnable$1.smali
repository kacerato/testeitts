.class public final Landroidx/core/view/ViewKt$postDelayed$runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewKt;->postDelayed(Landroid/view/View;JLMf/a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $action:LMf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/a<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ViewKt$postDelayed$runnable$1;->$action:LMf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ViewKt$postDelayed$runnable$1;->$action:LMf/a;

    invoke-interface {v0}, LMf/a;->invoke()Ljava/lang/Object;

    return-void
.end method
