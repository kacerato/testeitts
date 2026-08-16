.class public abstract Lw2/e$i;
.super Lw2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public F()Lw2/e;
    .locals 1

    new-instance v0, Lw2/e$x;

    invoke-direct {v0, p0}, Lw2/e$x;-><init>(Lw2/e;)V

    return-object v0
.end method

.method public final J()Lw2/e;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lw2/e;->e(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method
