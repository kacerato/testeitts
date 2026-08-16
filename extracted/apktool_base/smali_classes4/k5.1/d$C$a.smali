.class public Lk5/d$C$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d$C;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk5/d$C;


# direct methods
.method public constructor <init>(Lk5/d$C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$C$a;->b:Lk5/d$C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lk5/d$C$a;->b:Lk5/d$C;

    iget-object v0, v0, Lk5/d$C;->d:Lk5/d;

    sget-object v1, Lk5/c;->Rect:Lk5/c;

    invoke-static {v0, v1}, Lk5/d;->H(Lk5/d;Lk5/c;)Lk5/c;

    return-void
.end method
