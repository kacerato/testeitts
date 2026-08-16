.class public final synthetic Landroidx/lifecycle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/LifecycleController;

.field public final synthetic c:Leg/K0;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleController;Leg/K0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/b;->b:Landroidx/lifecycle/LifecycleController;

    iput-object p2, p0, Landroidx/lifecycle/b;->c:Leg/K0;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/b;->b:Landroidx/lifecycle/LifecycleController;

    iget-object v1, p0, Landroidx/lifecycle/b;->c:Leg/K0;

    invoke-static {v0, v1, p1, p2}, Landroidx/lifecycle/LifecycleController;->a(Landroidx/lifecycle/LifecycleController;Leg/K0;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
