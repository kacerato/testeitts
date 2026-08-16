.class public Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:Lv3/l;


# direct methods
.method public constructor <init>(ILv3/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;->a:I

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;->b:Lv3/l;

    return-void
.end method
