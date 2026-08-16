.class public LZ6/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/b;->v1(Z)LZ6/b$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LZ6/b;


# direct methods
.method public constructor <init>(LZ6/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isDettached"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/b$f;->b:LZ6/b;

    iput-boolean p2, p0, LZ6/b$f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, LZ6/b$f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LZ6/b$f;->b:LZ6/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object v0, p0, LZ6/b$f;->b:LZ6/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LZ6/b;->t1(LZ6/b;Z)Z

    :cond_0
    return-void
.end method
