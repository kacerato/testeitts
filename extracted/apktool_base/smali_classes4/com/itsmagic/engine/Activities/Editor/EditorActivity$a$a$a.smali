.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lrc/a;->K(Ljava/lang/String;ZZZ)V

    return v1
.end method
