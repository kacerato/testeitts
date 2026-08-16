.class public Li5/b$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b;->r0(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/e;

.field public final synthetic c:Z

.field public final synthetic d:Li5/b;


# direct methods
.method public constructor <init>(Li5/b;Lorg/ITsMagic/Atlas/e;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$uvGenerator",
            "val$genTexture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/b$l;->d:Li5/b;

    iput-object p2, p0, Li5/b$l;->b:Lorg/ITsMagic/Atlas/e;

    iput-boolean p3, p0, Li5/b$l;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Li5/b$l;->b:Lorg/ITsMagic/Atlas/e;

    new-instance v1, Li5/b$l$a;

    invoke-direct {v1, p0}, Li5/b$l$a;-><init>(Li5/b$l;)V

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Li5/a;->w1(ZLorg/ITsMagic/Atlas/e;Lorg/ITsMagic/Atlas/e$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
