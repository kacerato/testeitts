.class public LZ6/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/i;->u1(Z)LZ6/i$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LZ6/i;


# direct methods
.method public constructor <init>(LZ6/i;Z)V
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

    iput-object p1, p0, LZ6/i$e;->b:LZ6/i;

    iput-boolean p2, p0, LZ6/i$e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, LZ6/i$e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LZ6/i$e;->b:LZ6/i;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method
