.class public final synthetic Lnc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnc/h;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public synthetic constructor <init>(Lnc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnc/f;->b:Lnc/h;

    iput-object p2, p0, Lnc/f;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnc/f;->b:Lnc/h;

    iget-object v1, p0, Lnc/f;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, v1}, Lnc/h;->f(Lnc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method
