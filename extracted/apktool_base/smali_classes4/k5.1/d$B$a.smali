.class public Lk5/d$B$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d$B;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk5/d$B;


# direct methods
.method public constructor <init>(Lk5/d$B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$B$a;->b:Lk5/d$B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lk5/d$B$a;->b:Lk5/d$B;

    iget-object v0, v0, Lk5/d$B;->d:Lk5/d;

    sget-object v1, Lk5/c;->Rect:Lk5/c;

    invoke-static {v0, v1}, Lk5/d;->H(Lk5/d;Lk5/c;)Lk5/c;

    iget-object v0, p0, Lk5/d$B$a;->b:Lk5/d$B;

    iget-object v0, v0, Lk5/d$B;->d:Lk5/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk5/d;->J(Lk5/d;Lk5/a;)Lk5/a;

    return-void
.end method
