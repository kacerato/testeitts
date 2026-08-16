.class public Lg7/a$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg7/a$a;


# direct methods
.method public constructor <init>(Lg7/a$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$a$e;->b:Lg7/a$a;

    iput-object p2, p0, Lg7/a$a$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lg7/a$a$e;->b:Lg7/a$a;

    iget-object p1, p1, Lg7/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lg7/a$a$e;->a:Ljava/lang/String;

    new-instance v1, Lg7/a$a$e$a;

    invoke-direct {v1, p0}, Lg7/a$a$e$a;-><init>(Lg7/a$a$e;)V

    invoke-static {p1, v0, v1}, Ld8/j;->F0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Lo8/a;)V

    return-void
.end method
