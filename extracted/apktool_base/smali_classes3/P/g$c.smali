.class public LP/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LP/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2


# instance fields
.field public final synthetic c:LP/g;


# direct methods
.method public constructor <init>(LP/g;)V
    .locals 0

    iput-object p1, p0, LP/g$c;->c:LP/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LP/g$a;

    iget-object v0, p0, LP/g$c;->c:LP/g;

    invoke-virtual {v0, p1}, LP/g;->o(LP/g$a;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LP/g$a;

    iget-object v0, p0, LP/g$c;->c:LP/g;

    iget-object v0, v0, LP/g;->d:Lcom/bumptech/glide/k;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->w(LV/p;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
