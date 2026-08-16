.class public Ld6/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/a;->x1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public final synthetic c:Ld6/a;


# direct methods
.method public constructor <init>(Ld6/a;Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$world"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld6/a$d;->c:Ld6/a;

    iput-object p2, p0, Ld6/a$d;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Ld6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ld6/a$d;->c:Ld6/a;

    iget-object v1, p0, Ld6/a$d;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {v0, v1}, Ld6/a;->t1(Ld6/a;Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    return-void
.end method
