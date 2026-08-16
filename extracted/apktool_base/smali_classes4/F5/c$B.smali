.class public LF5/c$B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c;->C(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[F

.field public final synthetic b:[F

.field public final synthetic c:LF5/c$u0;

.field public final synthetic d:LC5/b;


# direct methods
.method public constructor <init>([F[FLF5/c$u0;LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$var",
            "val$reset",
            "val$onChanged",
            "val$rectPosVector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LF5/c$B;->a:[F

    iput-object p2, p0, LF5/c$B;->b:[F

    iput-object p3, p0, LF5/c$B;->c:LF5/c$u0;

    iput-object p4, p0, LF5/c$B;->d:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    iget-object p1, p0, LF5/c$B;->a:[F

    if-eqz p1, :cond_2

    iget-object v0, p0, LF5/c$B;->b:[F

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    aput v0, p1, v2

    iget-object p1, p0, LF5/c$B;->c:LF5/c$u0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LF5/c$u0;->a()V

    :cond_0
    iget-object p1, p0, LF5/c$B;->d:LC5/b;

    iget-object p1, p1, LC5/b;->p:[LC5/b;

    aget-object p1, p1, v1

    iget-object p1, p1, LC5/b;->k:LD5/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LD5/f;->a()V

    :cond_1
    iget-object p1, p0, LF5/c$B;->d:LC5/b;

    iget-object p1, p1, LC5/b;->p:[LC5/b;

    aget-object p1, p1, v2

    iget-object p1, p1, LC5/b;->k:LD5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LD5/f;->a()V

    :cond_2
    return-void
.end method
