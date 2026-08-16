.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LLc/b<",
        "Ljava/util/Set<",
        "LRb/c;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;LLc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "entity",
            "object",
            "knockback"
        }
    .end annotation

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$b;->b(Ljava/lang/Object;Ljava/util/Set;LLc/c;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/Set;LLc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "object",
            "knockback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "LRb/c;",
            ">;",
            "LLc/c<",
            "Ljava/util/Set<",
            "LRb/c;",
            ">;>;)V"
        }
    .end annotation

    check-cast p1, LRb/c;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-interface {p3, p1}, LLc/c;->a(Z)V

    :cond_0
    return-void
.end method
