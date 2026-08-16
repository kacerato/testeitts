.class public Lub/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lub/n;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lub/n;


# direct methods
.method public constructor <init>(Lub/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lub/n$a;->b:Lub/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lub/n$a;->b:Lub/n;

    invoke-static {v0}, Lub/n;->r0(Lub/n;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    iget-object v1, p0, Lub/n$a;->b:Lub/n;

    invoke-static {v1}, Lub/n;->q0(Lub/n;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->e(Ljava/lang/Runnable;)Z

    return-void
.end method
