.class public Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$e",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity$a;->b:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity$a;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity$a;->b:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity$a;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->g(Ljava/lang/Throwable;Landroid/app/Activity;)V

    return-void
.end method
