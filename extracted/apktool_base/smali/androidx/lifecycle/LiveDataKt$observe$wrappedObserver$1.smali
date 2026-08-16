.class public final Landroidx/lifecycle/LiveDataKt$observe$wrappedObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LiveDataKt;->observe(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;LMf/l;)Landroidx/lifecycle/Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveData.kt\nandroidx/lifecycle/LiveDataKt$observe$wrappedObserver$1\n*L\n1#1,51:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $onChanged:LMf/l;


# direct methods
.method public constructor <init>(LMf/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LiveDataKt$observe$wrappedObserver$1;->$onChanged:LMf/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/LiveDataKt$observe$wrappedObserver$1;->$onChanged:LMf/l;

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
