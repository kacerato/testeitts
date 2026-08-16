.class public final Lcom/itsmagic/engine/Engines/Input/Axis$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Input/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "value"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Axis$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Input/Axis$b;->a:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Input/Axis$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Input/Axis$b;-><init>(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Input/Axis$b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Axis$b;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Input/Axis$b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Input/Axis$b;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Input/Axis$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Axis$b;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Axis$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Axis$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Axis$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method
