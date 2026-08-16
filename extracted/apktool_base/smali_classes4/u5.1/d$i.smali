.class public Lu5/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d;->q2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$i;->b:Lu5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lu5/d$i;->b:Lu5/d;

    invoke-virtual {v0}, Lu5/d;->a2()Lu5/d$u;

    move-result-object v0

    iget-object v1, p0, Lu5/d$i;->b:Lu5/d;

    invoke-static {v1, v0}, Lu5/d;->C1(Lu5/d;Lu5/d$u;)Lu5/d$u;

    iget-object v1, p0, Lu5/d$i;->b:Lu5/d;

    invoke-static {v1, v0}, Lu5/d;->E1(Lu5/d;Lu5/d$u;)V

    iget-object v0, p0, Lu5/d$i;->b:Lu5/d;

    new-instance v1, Lu5/d$i$a;

    invoke-direct {v1, p0}, Lu5/d$i$a;-><init>(Lu5/d$i;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U0(Ljava/lang/Runnable;)V

    return-void
.end method
