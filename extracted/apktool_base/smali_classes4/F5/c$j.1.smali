.class public LF5/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c;->M(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LF5/c$u0;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic c:LF5/c$u0;

.field public final synthetic d:LC5/b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LF5/c$u0;LC5/b;)V
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

    iput-object p1, p0, LF5/c$j;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p2, p0, LF5/c$j;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p3, p0, LF5/c$j;->c:LF5/c$u0;

    iput-object p4, p0, LF5/c$j;->d:LC5/b;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    iget-object p1, p0, LF5/c$j;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_3

    iget-object v0, p0, LF5/c$j;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LF5/c$j;->c:LF5/c$u0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LF5/c$u0;->a()V

    :cond_0
    iget-object p1, p0, LF5/c$j;->d:LC5/b;

    iget-object p1, p1, LC5/b;->p:[LC5/b;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p1, p1, LC5/b;->k:LD5/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LD5/f;->a()V

    :cond_1
    iget-object p1, p0, LF5/c$j;->d:LC5/b;

    iget-object p1, p1, LC5/b;->p:[LC5/b;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object p1, p1, LC5/b;->k:LD5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LD5/f;->a()V

    :cond_2
    iget-object p1, p0, LF5/c$j;->d:LC5/b;

    iget-object p1, p1, LC5/b;->p:[LC5/b;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object p1, p1, LC5/b;->k:LD5/f;

    if-eqz p1, :cond_3

    invoke-interface {p1}, LD5/f;->a()V

    :cond_3
    return-void
.end method
