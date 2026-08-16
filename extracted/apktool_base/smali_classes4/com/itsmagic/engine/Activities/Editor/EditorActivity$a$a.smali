.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, v1}, Lrc/a;->K(Ljava/lang/String;ZZZ)V

    new-instance v0, Lob/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;)V

    invoke-direct {v0, v1, v2}, Lob/b;-><init>(Lob/b$a;I)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void
.end method
