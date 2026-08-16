.class public Lk5/d$z$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d$z$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk5/d$z$a;


# direct methods
.method public constructor <init>(Lk5/d$z$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$z$a$a;->a:Lk5/d$z$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tl",
            "tc",
            "tr",
            "cl",
            "cc",
            "cr",
            "bl",
            "bc",
            "br"
        }
    .end annotation

    iget-object p1, p0, Lk5/d$z$a$a;->a:Lk5/d$z$a;

    iget-object p1, p1, Lk5/d$z$a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->h(II)V

    return-void
.end method
