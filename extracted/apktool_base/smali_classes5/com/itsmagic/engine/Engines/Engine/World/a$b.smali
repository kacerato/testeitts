.class public Lcom/itsmagic/engine/Engines/Engine/World/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/a;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LLb/e;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(LLb/e;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$useSchedule",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$b;->b:LLb/e;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$b;->b:LLb/e;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/a$b;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->a(LLb/e;Landroid/content/Context;)V

    return-void
.end method
