.class public Lcom/itsmagic/engine/Engines/Engine/World/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/a;->F(LLb/e;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$finalWorld",
            "val$ignoreDont"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$e;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$e;->c:Z

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->b(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    return-void
.end method
