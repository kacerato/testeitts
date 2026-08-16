.class public Lz5/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/a;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lz5/a;


# direct methods
.method public constructor <init>(Lz5/a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$e;->c:Lz5/a;

    iput-object p2, p0, Lz5/a$e;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->q0()V

    iget-object v0, p0, Lz5/a$e;->c:Lz5/a;

    new-instance v1, Lz5/a$e$a;

    invoke-direct {v1, p0}, Lz5/a$e$a;-><init>(Lz5/a$e;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U0(Ljava/lang/Runnable;)V

    return-void
.end method
