.class public LZ6/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/h;->u1(Z)LZ6/h$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LZ6/h;


# direct methods
.method public constructor <init>(LZ6/h;Z)V
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

    iput-object p1, p0, LZ6/h$e;->b:LZ6/h;

    iput-boolean p2, p0, LZ6/h$e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, LZ6/h$e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LZ6/h$e;->b:LZ6/h;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method
